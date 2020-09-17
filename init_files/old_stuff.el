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

