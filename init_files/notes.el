(defvar notes-dir "/home/bjr/documents/notes/notes")
(defvar dump-file "/home/bjr/documents/notes/notes/dump.org")

;; kcd (concat notes-dir "/daily/"))
;; (pop-to-buffer (concat notes-dir "/daily/" (format-time-string "%Y_%m_%d") ".org"))
;; Where to put notes when capturing them
(defun note-dump ()
  (interactive)
  (find-file dump-file))

(defun notes-search ()
  (interactive)
  (helm-ag notes-dir))

(defun notes-goto-file ()
  (interactive)
  (dired notes-dir))


(defhydra notes-hydra (:color blue)
  "notes"
  ("s" notes-search "search")
  ("g" notes-goto-file "goto")
  ("d" note-dump "dump"))

(global-set-key (kbd "C-c n") 'notes-hydra/body)
