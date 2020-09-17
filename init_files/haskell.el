(use-package ghc
  :hook haskell-mode
  :ensure)
(use-package haskell-mode
  :ensure)

(add-hook 'haskell-mode-hook (lambda ()
			       (add-to-list 'company-backends 'company-ghc)
			       (ghc-init)))

(use-package tidal
  :ensure
  :hook haskell-mode
  :config  
  (setq tidal-interpreter "/usr/bin/ghci"))

(defun my/haskell-hook()
  (setq company-ghc-show-info t)
  (company-mode 1)
  (hindent-mode 1)
  (custom-set-variables '(haskell-tags-on-save t))
  (setq haskell-process-type 'cabal-repl))


(add-hook 'haskell-mode-hook 'my/haskell-hook)

;; (let ((my-cabal-path
;;        (expand-file-name "~/Documents/programming/projects/poggio/.cabal-sandbox/bin")))
;;   (setenv "PATH" (concat my-cabal-path path-separator (getenv "PATH")))
;;   (add-to-list 'exec-path my-cabal-path))


(custom-set-variables
  '(haskell-process-suggest-remove-import-lines t)
  '(haskell-process-auto-import-loaded-modules t)
  '(haskell-process-log t))
(eval-after-load 'haskell-mode '(progn
  (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
  (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
  (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
  (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
  (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)))
(eval-after-load 'haskell-cabal '(progn
  (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
  (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
  (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
  (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)))


