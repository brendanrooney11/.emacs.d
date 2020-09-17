(use-package slime
  :ensure
  :bind
  (("C-c t" . slime-selector))
  :config
  (load (expand-file-name "~/quicklisp/slime-helper.org")
  (setq inferior-lisp-program "sbcl"
        slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
  (slime-setup '(slime-fancy slime-tramp slime-asdf slime-company))
  (slime-require :swank-listener-hooks)))


(use-package slime-company
  :ensure
  :after (slime company)
  :config (setq slime-company-completion 'fuzzy
                slime-company-after-completion 'slime-company-just-one-space))
