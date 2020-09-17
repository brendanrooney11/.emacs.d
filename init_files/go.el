(setq exec-path (append exec-path '("/home/bjr/go/bin")))
(setq exec-path (append exec-path '("/usr/local/go/bin")))
(use-package go-mode
  :ensure)  
(use-package company-go
  :ensure)
(use-package go-add-tags  
  :ensure)
(use-package go-eldoc
  :ensure
  :diminish eldoc-mode)
(use-package go-gopath
  :ensure)
(use-package go-stacktracer
  :ensure)

(add-hook 'go-mode-hook
          (lambda ()
            (company-mode)
            (add-hook 'before-save-hook 'gofmt-before-save)
            (set (make-local-variable 'company-backends) '(company-go))
            (go-eldoc-setup)))
