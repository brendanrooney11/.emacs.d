(use-package racer)
(use-package cargo)
(use-package rust-mode)
(defun my/rust-hook()
  (setq company-tooltip-align-annotations t)
  (electric-pair-mode 1)
  (require 'racer)
  (require 'rust-mode)
  (require 'flycheck)
  (require 'idle-highlight-mode)
  (require 'yasnippet)
  (require 'electric))


(add-hook 'rust-mode-hook  #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook #'my/rust-hook)
(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)

		     
