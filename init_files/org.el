(use-package org-roam  
  :ensure t
  :config
  (setq org-roam-directory "~/documents/notes/notes"))

(setq org-log-done 'time)
(setq org-export-coding-system 'utf-8)

(setq AGENDA "~/documents/agenda/agenda.org")
(setq REMINDERS "~/reminders/agenda/reminders.org")
(setq INBOX "~/documents/agenda/inbox.org")

(setq org-agenda-files (list AGENDA REMINDERS INBOX))

;; Capture Templates
(setq org-capture-templates
     '(("t" "Todo" entry
	 (file INBOX)
	 "* TODO %^{TODO}  :%?:\n  %i")
	("l" "Todo with link" entry
	 (file INBOX)
	 "* TODO %?\n  %i\n  %a")
	("e" "Event" entry
	 (file INBOX)
	 "* TODO %^{TODO}  :%?:\n SCHEDULED:%^T")
	("d" "Deadline" entry
	 (file INBOX)
	 "* TODO %^{TODO}  :%?:\n DEADLINE:%^T")
	("r" "respond" entry
	 (file "~/documents/agenda/inbox.org")
	 "* TODO %^{TODO} :%?:\n SCHEDULED:%^T")
        ("n" "Note" entry
         (file "~/documents/notes/notes/dump.org")
         "* %^{NOTE} :%?:\n %i")))


(setq org-refile-targets '(("~/documents/agenda/agenda.org" :level . 2)
                           ("~/documents/agenda/reminders.org" :level . 2)))                          

;; (defun contextual-refile ()
;;     (interactive)
;;     (setq buff buffer-name)
;;     (if (eq buff "notes.org")
;;         (setq org-refile-targets
;;     (if (eq buff "
;;     )

(setq org-todo-keywords '((sequence "TODO(t)" "WAITING(w)" "EVENT(e)" "MAYBE(m)" "|" "DONE(d)" "CANCELLED(c)")))

;; Agenda View
(setq org-agenda-dim-blocked-tasks nil)
(setq org-agenda-compact-blocks t)

;; Set the default org columns view
(setq org-columns-default-format "%50ITEM(Task) %10CLOCKSUM %16TIMESTAMP_IA")







