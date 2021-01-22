;; A file for stuff that was once part of the config but has been removed. Kept here incase wanted incase
;; the future 

;; Web stuff
;; Convert files to html
(use-package htmlize
  :ensure)
;; Mode for pug lang
(use-package pug-mode
  :ensure
  :config
  (setq pug-tab-width 2)
  (add-hook 'css-mode-hook #'company-mode))

;; For web surfing
(defun my/eww-hook ()
  (hl-line-mode))

(add-hook 'eww-mode-hook #'my/eww-hook)


;; Spelling
;; I cant get this to do anything
(setq ispell-program-name "hunspell")
;; below two lines reset the the hunspell to it STOPS querying locale!
(setq ispell-local-dictionary "en_US") ; "en_US" is key to lookup in `ispell-local-dictionary-alist`
(setq ispell-local-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)))
(use-package vimish-fold
  :ensure)
(use-package yasnippet
  :ensure t
  :defer t
  :diminish yas
  :bind ("C-c /" . yas-expand)
  :config
  (yas/global-mode 1)
  ;;(load (concat init-dir "snippets/go-snippets/go-snippets.el"))
  ;;(load (concat init-dir "snippets/react-snippets/react-snippets.el"))
  ;;(add-to-list 'yas-snippet-dirs (concat init-dir "snippets"))
  )
(use-package yasnippet-snippets
  :ensure)
(use-package smart-mode-line
  ;; Makes the powerline look good but I cant easily turn it off once its on so fuck it
  :ensure t)

(use-package sublimity
  ;; smooth-scrolling, minimap 
  :ensure t
  :bind
  ([f9] . sublimity-mode))

(use-package multiple-cursors
  ;; Havent used once and had it installed for years
  :ensure t
  :defer t
  :bind
  (("C-c m a" . mc/vertical-align)
   ("C-c m s" . mc/mark-next-like-this)
   ("C-c m d" . mc/mark-all-like-this)
   ("C-c m f" . mc/vertical-align)))

;; Helm packages
(use-package helm-ag
  :ensure
  :bind
  (("M-s a" .  helm-ag)))
(use-package helm-swoop
  :ensure)
(use-package helm
  :ensure
  :commands
  (helm-mode)
  :bind
  (("M-y" . helm-show-kill-ring)
   ("M-x" . helm-M-x)

   ("C-c C-h b" . helm-filtered-bookmarks)
   ("C-x C-f" . helm-find-files)
   ;;("C-x b" . helm-mini)
   ))

(global-set-key (kbd "M-s s") 'helm-occur)

(defhydra vimish-fold-hydra (:color blue :columns 3)
  "fold"
  ("a" vimish-fold-avy "avy")
  ("s" vimish-fold-unfold "undo")
  ("S" vimish-fold-unfold-all "undo-all")
  ("d" vimish-fold-delete "del")
  ("D" vimish-fold-delete-all "del-all")
  ("f" vimish-fold "fold")
  ("g" vimish-fold-refold "refold")
  ("G" vimish-fold-refold-all "refold-all")
  ("h" vimish-fold-toggle "toggle" :exit nil)
  ("H" vimish-fold-toggle-all "toggle-all" :exit nil)
  ("j" vimish-fold-next-fold "down" :exit nil)
  ("k" vimish-fold-previous-fold "up" :exit nil)
  ("q" nil "quit"))

(use-package counsel
  :ensure)

(use-package ivy
  :ensure t
  :bind
  (("C-c M-s" . counsel-ag))
  :config
  (ivy-mode 1)  
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d%d)"))

;;http://pragmaticemacs.com/emacs/read-your-rss-feeds-in-emacs-with-elfeed/
(use-package elfeed-org
  :ensure t
  :config
  (setq rmh-elfeed-org-files (list "/home/bjr/.emacs.d/elfeed.org")))

(defun eshell/clear ()
  "clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))
