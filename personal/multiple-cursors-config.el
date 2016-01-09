;;; multiple-cursors-config.el --- Configuration for multiple-cursors
;;; Commentary:

;; Extra functions and configuration related to multiple-cursors.

;;; Code:

(prelude-require-package 'multiple-cursors)

(setq mc/list-file (expand-file-name ".mc-lists.el" prelude-savefile-dir))

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(provide 'multiple-cursors-config)
;;; multiple-cursors-config.el ends here
