(use-package company
  :ensure
  :demand t
  :commands company-mode
  :config  
  (setq company-global-modes '(not term-mode))  
  (setq company-minimum-prefix-length 2
        company-selection-wrap-around t
        company-show-numbers t
        company-tooltip-align-annotations t
        company-require-match nil
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-tooltip-limit 20
        company-idle-delay .1
        company-echo-delay 0)
  (setq company-transformers '(company-sort-by-occurrence))  
  (use-package company-quickhelp
    :ensure
    :defines company-quickhelp-delay
    :bind (:map company-active-map
                ("M-h" . company-quickhelp-manual-begin))
    :hook (global-company-mode . company-quickhelp-mode)
    :init (setq company-quickhelp-delay 0.8)))
;;(add-to-list 'company-backends #'company-tabnine)


(use-package lsp-ui
  :ensure t)

(use-package company-lsp
  :ensure :after company)

(use-package lsp-ui
  :ensure t
  :config
  (setq lsp-prefer-flymake nil
        lsp-ui-doc-delay 5.0
        lsp-ui-sideline-enable nil
        lsp-ui-sideline-show-symbol nil))







