(use-package lsp-java
  :ensure :after lsp
  :config 
  (add-hook 'java-mode-hook 'lsp))

(add-hook 'java-mode-hook 'company-mode)
  
