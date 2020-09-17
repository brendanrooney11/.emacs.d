;;http://pragmaticemacs.com/emacs/read-your-rss-feeds-in-emacs-with-elfeed/

(use-package elfeed-org
  :ensure t
  :config
  (setq rmh-elfeed-org-files (list "/home/bjr/.emacs.d/elfeed.org")))

