(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

(use-package company-c-headers
  :ensure
  :init
  (add-to-list 'company-backends 'company-c-headers))


(defun my/c-mode-hook ()
  (c-set-style "k&r")
  (flycheck-mode)
  (linum-mode)
  (company-mode)) ;;Fill column line mode

(add-hook 'c-mode-hook 'my/c-mode-hook)
(add-hook 'c++-mode-hook 'my/c-mode-hook)


(setq auto-mode-alist
      (append
       '(("CMakeLists\\.txt\\'" . cmake-mode))
       '(("\\.cmake\\'" . cmake-mode))
       auto-mode-alist))

(autoload 'cmake-mode "~/programs/cmake/Auxiliary/cmake-mode.el" t)
