;;; defuns-text.el --- Text related functions

;;; Commentary:

;; Useful functions to manipulate text.

;;; Code:

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))

(provide 'defuns-text)
;;; defuns-text.el ends here
