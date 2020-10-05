(use-package kaolin-themes
  :ensure
  :config
  (load-theme 'kaolin-dark)
  (kaolin-treemacs-theme))
(use-package darkokai-theme
  :defer
  :ensure)
(use-package gruvbox-theme
  :defer
  :ensure)
(use-package moe-theme
  :defer
  :ensure)
(use-package monokai-theme
  :defer
  :ensure)
(use-package nord-theme
  :defer
  :ensure)
(use-package modus-operandi-theme
  :defer
  :ensure)
(use-package modus-vivendi-theme
  :defer
  :ensure)

(use-package all-the-icons
  :ensure)

;;(load-theme 'gruvbox-dark-hard t)
;;(load-theme 'modus-vivendi t)

(defvar dark-theme 'modus-vivendi)
(defvar light-theme 'modus-operandi)

(defun toggle-light-dark-themes ()
  "Toggle between `light-theme' and `dark-theme' themes."
  (interactive)
  (if (eq (car custom-enabled-themes) light-theme)
      (progn
        (disable-theme light-theme)
        (load-theme dark-theme t))
    (disable-theme dark-theme)
    (load-theme light-theme t)))
