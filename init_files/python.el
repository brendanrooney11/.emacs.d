(use-package elpy
  :ensure
  :hook python-mode
  :init
  (elpy-enable))

		       

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
