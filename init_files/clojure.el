;;(setq exec-path (append exec-path '("/home/bjr/programs/leiningen")))
(use-package cider
  :ensure
  :config
  (add-hook 'clojure-mode-hook 'cider-mode)
  (add-hook 'cider-repl-mode-hook 'company-mode)
  (add-hook 'cider-mode-hook 'company-mode))
