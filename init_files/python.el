(use-package pyvenv
  :ensure t
  :defer t
  :config
  (setq pyvenv-menu t)
  (add-hook 'pyvenv-post-activate-hooks (lambda ()
					  (pyvenv-restart-python))))

(use-package lsp-pyright
  :ensure t
  :defer t
  :config)

(use-package python
  :ensure t
  :config
  (setq python-indent-guess-indent-offset-verbose nil)
  (setq python-shell-buffer-name "IPython")
  (setq python-shell-interpreter "ipython")
  (setq python-shell-interpreter-args "-i --simple-prompt"))
   

(use-package hide-mode-line
  :ensure t
  :defer t)

(use-package inferior-python-mode
  :ensure nil
  :hook (inferior-python-mode . hide-mode-line-mode))

(defun bjr/python ()
  (require 'lsp-pyright)
  (lsp-deferred)
  (pyvenv-mode))

(add-hook 'python-mode-hook 'bjr/python)


;; (use-package lsp-mode
;;   :config
;;   ;; This is a really dumb way to do this
;;   ;; Defining python actions in the lsp-mode congfig
;;   ;; Need to update
;;   (lsp-define-stdio-client lsp-python "python"
;; 			   #'projectile-project-root
;; 			   '("pyls"))
;;   (add-hook 'python-mode-hook
;; 	    (lambda ()
;; 	      (lsp-python-enable))))
    
  
;;   ;; (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)  
;;   ;; (lsp-define-stdio-client lsp-python "python"
;;   ;;                          #'projectile-project-root
;;   ;;                          '("pyls"))

;; (use-package lsp-ui
;;   :config
;;   (define-key lsp-ui-mode-map [remap xref-find-definitions]
;;     #'lsp-ui-peek-find-definitions)
;;   (define-key lsp-ui-mode-map [remap xref-find-references]
;;     #'lsp-ui-peek-find-references))


;; (use-package lsp-imenu
;;   :after lsp-mode
;;   :config
;;   (setq lsp-ui-sideline-ignore-duplicate t))

;; (use-package company-lsp
;;   :after lsp-mode
;;   :config
;;   (push 'company-lsp company-backends))
