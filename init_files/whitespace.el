(global-set-key (kbd "C-c C-w") 'delete-trailing-whitespace)
;;(setq tab-width 2)

(custom-set-variables '(whitespace-style
                        (quote (face
                                tabs
                                spaces
                                trailing
                                space-before-tab
                                newline
                                indentation
                                empty
                                space-after-tab
                                space-mark
                                tab-mark))))

(global-set-key (kbd "M-SPC") 'cycle-spacing)
(global-set-key (kbd "M-o") 'delete-blank-lines)

(defun whitespace-handeling ()
  (interactive)
  (whitespace-mode 1)
  (add-to-list 'write-file-functions 'delete-trailing-whitespace))

(let ((whitespace-enabled-modes
       '(c-mode-hook
         c++-mode-hook
         emacs-lisp-mode
         rust-mode-hook
         scala-mode-hook
         js2-mode-hook
         haskell-mode-hook
         python-mode-hook
         erlang-mode-hook
         go-mode-hook
         lisp-mode-hook)))
  (dolist (mode whitespace-enabled-modes)
    (add-hook mode 'whitespace-handeling)))
