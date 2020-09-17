(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))

;;Package Install
;;Link melpa package repository to package index
(require 'package)

(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(defvar local-packages '(use-package))

;; FILES ARE ALL LOCATED IN ~/.emacs.d/init_files/
(load "~/.emacs.d/init_files/global.el")
(load "~/.emacs.d/init_files/completion.el")
(load "~/.emacs.d/init_files/elfeed.el")
(load "~/.emacs.d/init_files/notes.el")
(load "~/.emacs.d/init_files/org.el")
(load "~/.emacs.d/init_files/themes.el")
(load "~/.emacs.d/init_files/whitespace.el")

;; Langs
(load "~/.emacs.d/init_files/c.el")
(load "~/.emacs.d/init_files/clojure.el")
(load "~/.emacs.d/init_files/emacs-lisp.el")
(load "~/.emacs.d/init_files/go.el")
(load "~/.emacs.d/init_files/haskell.el")
(load "~/.emacs.d/init_files/js.el")
(load "~/.emacs.d/init_files/java.el")
(load "~/.emacs.d/init_files/lisp.el")
(load "~/.emacs.d/init_files/lua.el")
(load "~/.emacs.d/init_files/python.el")
;;(load "~/.emacs.d/init_files/rust_devlopment.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("96c56bd2aab87fd92f2795df76c3582d762a88da5c0e54d30c71562b7bf9c605" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "ae65ccecdcc9eb29ec29172e1bfb6cadbe68108e1c0334f3ae52414097c501d2" "2a9039b093df61e4517302f40ebaf2d3e95215cb2f9684c8c1a446659ee226b9" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "fd3c7bd752f48dcb7efa5f852ef858c425b1c397b73851ff8816c0580eab92f1" "e2fd81495089dc09d14a88f29dfdff7645f213e2c03650ac2dd275de52a513de" "ab564a7ce7f2b2ad9e2cfe9fe1019b5481809dd7a0e36240c9139e230cc2bc32" "3da031b25828b115c6b50bb92a117f5c0bbd3d9d0e9ba5af3cd2cb9db80db1c2" "595617a3c537447aa7e76ce05c8d43146a995296ea083211225e7efc069c598f" "8a9be13b2353a51d61cffed5123b157000da0347c252a7a308ebc43e16662de7" "dd43ce1171324a8e47f9e4ca9f49773c4b4960706171ab951130c668adc59f53" "26d49386a2036df7ccbe802a06a759031e4455f07bda559dcf221f53e8850e69" "13d20048c12826c7ea636fbe513d6f24c0d43709a761052adbca052708798ce3" default))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(package-selected-packages
   '(modus-vivendi-theme modus-operandi-theme org-roam all-the-icons kaolin-themes tuareg lua-mode slime-company nord-theme ibuffer-vc elfeed-org elpy company-lsp lsp-java rjsx-mode json-mode js2-refactor js2-mode tidal ghc go-stacktracer go-gopath go-eldoc go-add-tags company-go go-mode cider company-quickhelp company keyfreq yasnippet which-key vimish-fold smart-mode-line smartparens sublimity restart-emacs rainbow-delimiters projectile pdf-tools powerline neotree multiple-cursors monokai-theme moe-theme magit lsp-ui lsp-mode idle-highlight-mode iedit hydra helm-swoop helm-ag helm gruvbox-theme flycheck fill-column-indicator exec-path-from-shell expand-region dumb-jump darkokai-theme crux counsel command-log-mode beacon ag ace-window use-package))
 '(whitespace-style
   '(face tabs spaces trailing space-before-tab newline indentation space-after-tab space-mark tab-mark)))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Iosevka" :foundry "CYEL" :slant normal :weight normal :height 113 :width normal))))
 '(js2-object-property ((t (:foreground "aquamarine3"))))
 '(js2-object-property-access ((t (:inherit js2-object-property :foreground "green")))))
