(eval-when-compile
  (require 'use-package))
;;(use-package evil)
(use-package ace-window
  :ensure)
(use-package ag
  :ensure)
(use-package avy
  :ensure
  :bind
  (( "C-j" . avy-goto-word-or-subword-1)))
(use-package beacon
  :ensure
  :diminish beacon-mode
  :config
  (beacon-mode 1))
(use-package command-log-mode
  :ensure
  :diminish command-log-mode)
(use-package crux
  :ensure
  :config
  (global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line))
(use-package diminish
  :ensure)
(use-package dired
  :bind
  (("C-x C-j" . dired-jump))
  :config  
  (setq dired-recursive-copies 'always)
  (setq dired-recursive-deletes 'always)
  (setq dired-listing-switches
        "-AGFhlv --group-directories-first --time-style=long-iso")
  (setq dired-dwim-target t)
  :hook ((dired-mode . hl-line-mode)))
(use-package dumb-jump
  :ensure)
(use-package eldoc
  :ensure
  :diminish eldoc-mode)
(use-package expand-region
  :ensure
  :bind
  (("C-w" . er/expand-region)))
(use-package exec-path-from-shell
  :ensure)
(use-package fill-column-indicator
  :ensure
  :config
  (setq fci-rule-column 120)
  (setq fci-rule-width 1)
  (setq fci-rule-color "gray19"))
(use-package flycheck
  :ensure
  :diminish flycheck-mode
  :init
  (add-to-list 'display-buffer-alist
               `(,(rx bos "*Flycheck errors*" eos)
                 (display-buffer-reuse-window
                  display-buffer-in-side-window)
                 (side            . bottom)
                 (reusable-frames . visible)
                 (window-height   . 0.15))))
(use-package hi-lock
  :config
  (global-hi-lock-mode))
(use-package hydra
  :ensure)
(use-package ibuffer
  :config
  (setq ibuffer-expert t)
  (setq ibuffer-display-summary nil)
  (setq ibuffer-use-other-window nil)
  (setq ibuffer-show-empty-filter-groups nil)
  (setq ibuffer-movement-cycle nil)
  (setq ibuffer-default-sorting-mode 'filename/process)
  (setq ibuffer-use-header-line t)
  (setq ibuffer-default-shrink-to-minimum-size nil)
  (setq ibuffer-formats
        '((mark modified read-only locked " "
                (name 30 30 :left :elide)
                " "
                (size 9 -1 :right)
                " "
                (mode 16 16 :left :elide)
                " " filename-and-process)
          (mark " "
                (name 16 -1)
                " " filename)))
  (setq ibuffer-saved-filter-groups nil)
  :hook
  (ibuffer-mode . hl-line-mode)
  :bind (("C-x b" . ibuffer)
         :map ibuffer-mode-map
         ("* f" . ibuffer-mark-by-file-name-regexp)
         ("* g" . ibuffer-mark-by-content-regexp) ; "g" is for "grep"
         ("* n" . ibuffer-mark-by-name-regexp)
         ("s n" . ibuffer-do-sort-by-alphabetic)  ; "sort name" mnemonic
         ("/ g" . ibuffer-filter-by-content)))
(use-package ibuffer-vc
  :ensure
  :after (ibuffer vc)
  :bind (:map ibuffer-mode-map
              ("/ V" . ibuffer-vc-set-filter-groups-by-vc-root)
              ("/ <deletechar>" . ibuffer-clear-filter-groups)))
(use-package image-dired
  :config
  (setq image-dired-external-viewer "feh")
  (setq image-dired-thumb-size 80)
  (setq image-dired-thumb-margin 2)
  (setq image-dired-thumb-relief 0)
  (setq image-dired-thumbs-per-row 4)
  :bind (:map image-dired-thumbnail-mode-map
              ("<return>" . image-dired-thumbnail-display-external)))
(use-package isearch
  :config
  (setq search-whitespace-regexp ".*")
  (setq isearch-lax-whitespace t)
  (setq isearch-regexp-lax-whitespace nil))
(use-package iedit
  :ensure t
  :bind
  (("C-c C-i" . iedit-quit)))
(use-package idle-highlight-mode
  :ensure t
  :config
  (setq idle-highlight-idle-time 0.1))
(use-package ivy
  :ensure t
  :config
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "C-c k") 'counsel-ag))
(use-package lsp-mode
  :ensure t
  :defer t
  :commands (lsp lsp-deferred)
  :init (setq lsp-keymap-prefix "C-c l"))
(use-package lsp-ui
  :ensure t
  :defer t
  :config
  (setq lsp-ui-sideline-enable nil
	    lsp-ui-doc-delay 2)
  :hook (lsp-mode . lsp-ui-mode)
  :bind (:map lsp-ui-mode-map
	      ("C-c i" . lsp-ui-imenu)))
(use-package magit
  :ensure)
(use-package minibuffer
  :config
  (setq completion-category-defaults nil)
  (setq completion-show-help nil)
  (setq completion-ignore-case t)
  (setq enable-recursive-minibuffers t)
  (file-name-shadow-mode 1)
  (minibuffer-depth-indicate-mode 1)
  (minibuffer-electric-default-mode 1))
(use-package neotree
  :ensure
  :bind
  ([f8] . neotree-toggle))
(use-package powerline
  :ensure)
(use-package pdf-tools
  :hook pdf-mode
  :ensure)
(use-package projectile
  :ensure
  :bind
  ("C-c C-p C-f" . projectile-find-file)
  :config
  (projectile-global-mode))
(use-package rainbow-delimiters
  :ensure t)
(use-package restart-emacs
  :ensure t
  :bind
  ("C-c C-r" . restart-emacs))
(use-package smartparens
  :ensure)
(use-package swiper
  :ensure t
  :bind
  ("C-c s" . swiper))
(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode)
  (setq which-key-idle-delay 2.0))
(use-package keyfreq
  :ensure
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1))
(use-package whitespace
  :ensure
  :diminish whitespace-mode)

;; THINGS TURNED ON
(global-auto-revert-mode 1)
(show-paren-mode 1)
(winner-mode 1)

;; THINGS TURNED OFF
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(put 'narrow-to-region 'disabled nil)
;; THINGS MODIFIED FROM DEFAULT
(windmove-default-keybindings)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(fset 'yes-or-no-p 'y-or-n-p)
(setq tab-width 2)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq switch-to-buffer-preserve-window-point t)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq linum-format "%d ")
(setq create-lockfiles nil)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(setq initial-scratch-message ";;scratch\n\n")

;; CUSTOM FACES
(custom-set-faces
 '(default ((t (:family "Iosevka" :foundry "CYEL" :slant normal :weight normal :height 113 :width normal)))))

;; Search
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-c s") 'swiper)

; Text Movement or Creation
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c d") 'duplicate-current-line)
(global-set-key (kbd "M-j") 'join-line)
(global-set-key (kbd "M-[") 'insert-pair)
(global-set-key (kbd "M-{") 'insert-pair)
(global-set-key (kbd "M-\"") 'insert-pair) ;; The key here is M-".
(global-set-key (kbd "C-c C-c <tab>") 'indent-buffer)
(global-set-key (kbd "C-q") 'kill-region)
(global-set-key (kbd "C-c a") 'beginning-of-defun)
(global-set-key (kbd "C-c e") 'end-of-defun)
(global-set-key (kbd "C-c h") 'mark-defun)
(global-set-key (kbd "C-c C-u") 'move-line-up)
(global-set-key (kbd "C-c C-d") 'move-line-down)
(global-set-key (kbd "C-M-g") 'dumb-jump-go)


;; Non-interactive changes
(global-set-key (kbd "C-c C-n") 'linum-mode)
(global-set-key (kbd "C-c j") 'toggle-mark-word-at-point)
;; Start Interactive Systems or Routines
(global-set-key [f2] 'scroll-bar-mod)
(global-set-key [f12] 'calendar)

;;other
(global-set-key (kbd "C-z") 'undo)

;; Hydras
(global-set-key (kbd "C-c o") 'org-hydra/body)
(global-set-key (kbd "C-c z") 'zoom-hydra/body)
(global-set-key (kbd "C-c i") 'iedit-hydra/body)
;;(global-set-key (kbd "C-c e") 'eval-hydra/body)

(defhydra org-hydra (:color blue)
  "org"
  ("a" org-agenda "agenda")
  ("A" org-agenda-list "agenda-list")
  ("c" org-capture "capture")
  ("l" org-store-link "link")
  ("q" nil "quit"))

(defhydra zoom-hydra ()
  "zoom"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("o" (text-scale-set 0) "reset")
  ("0" (text-scale-set 0) :bind nil :exit t)
  ("1" (text-scale-set 0) nil :bind nil :exit t))


(defhydra iedit-hydra ()
  "iedit"
  ("h" (iedit-mode (digit-argument 1)) "one")
  ("j" (iedit-mode) "all" :exit t)
  ("k" (progn
         (iedit-mode)
         (iedit-restrict-function)) "func")
  ("p" (iedit-expand-up-to-occurrence) "up")
  ("n" (iedit-expand-down-to-occurrence) "down"))


(defhydra eval-hydra (:color blue)
  "evals"
  ("a" (eval-last-sexp) "sexp")
  ("s" (eval-region) "region")
  ("d" (eval-defun) "defun")
  ("f" (eval-buffer) "buffer"))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun duplicate-current-line (&optional n)
  "duplicate current line, make more than 1 copy given a numeric argument"
  (interactive "p")
  (save-excursion
    (let ((nb (or n 1))
    	  (current-line (thing-at-point 'line)))
      ;; when on last line, insert a newline first
      (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
    	(insert "\n"))

      ;; now insert as many time as requested
      (while (> n 0)
    	(insert current-line)
    	(decf n)))))

(defun toggle-mark-word-at-point ()
  (interactive)
  (if hi-lock-interactive-patterns
      (unhighlight-regexp (car (car hi-lock-interactive-patterns)))
    (highlight-symbol-at-point)))


;;########## Themes ##########
(use-package kaolin-themes
  :ensure
  :config
  (load-theme 'kaolin-dark)
  (kaolin-treemacs-theme))
(use-package darkokai-theme
  :defer
  :ensure)
(use-package gruvbox-theme
  :defer
  :ensure)
(use-package moe-theme
  :defer
  :ensure)
(use-package monokai-theme
  :defer
  :ensure)
(use-package nord-theme
  :defer
  :ensure)
(use-package modus-operandi-theme
  :defer
  :ensure)
(use-package modus-vivendi-theme
  :defer
  :ensure)

(use-package all-the-icons
  :ensure)

;;(load-theme 'gruvbox-dark-hard t)
;;(load-theme 'modus-vivendi t)

;;(defvar dark-theme 'modus-vivendi)
;;(defvar light-theme 'modus-operandi)

(defun toggle-light-dark-themes ()
  "Toggle between `light-theme' and `dark-theme' themes."
  (interactive)
  (if (eq (car custom-enabled-themes) light-theme)
      (progn
        (disable-theme light-theme)
        (load-theme dark-theme t))
    (disable-theme dark-theme)
    (load-theme light-theme t)))


(global-set-key (kbd "C-c C-w") 'delete-trailing-whitespace)
;;(setq tab-width 2)

(custom-set-variables '(whitespace-style
                        (quote (face
                                tabs
                                spaces
                                trailing
                                space-before-tab
                                newline
                                indentation
                                empty
                                space-after-tab
                                space-mark
                                tab-mark))))

(global-set-key (kbd "M-SPC") 'cycle-spacing)
(global-set-key (kbd "M-o") 'delete-blank-lines)

(defun whitespace-handeling ()
  (interactive)
  (whitespace-mode 1)
  (add-to-list 'write-file-functions 'delete-trailing-whitespace))

(let ((whitespace-enabled-modes
       '(c-mode-hook
         c++-mode-hook
         emacs-lisp-mode
         rust-mode-hook
         scala-mode-hook
         js2-mode-hook
         haskell-mode-hook
         python-mode-hook
         erlang-mode-hook
         go-mode-hook
         lisp-mode-hook)))
  (dolist (mode whitespace-enabled-modes)
    (add-hook mode 'whitespace-handeling)))

(defun ibuffer-search ()
  "Open I buffer and initiate a search"
  (interactive)
  (ibuffer)
  (isearch-forward))

(global-set-key (kbd "C-x b") 'ibuffer-search)


  
  


