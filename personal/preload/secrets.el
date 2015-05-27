;;; secrets.el --- Load secrets file.

;;; Commentary:

;; ~/.secrets file may contain configuration information, like the
;; email to use for git

;;; Code:

(defun read-lines (file)
  "Return a list of lines of a file at file."
  (with-temp-buffer
    (insert-file-contents file)
    (split-string (buffer-string) "\n" t)))

(defun source-secrets-file ()
  (let ((secrets "~/.secrets"))
    (when (file-exists-p secrets)
      (let ((lines (read-lines secrets)))
        (dolist (line lines)
          (save-match-data
            (when (string-match "^export \\(.*\\)=['\"]\\(.*\\)['\"]$" line)
              (let ((var (match-string 1 line))
                    (value (match-string 2 line)))
                (setenv var value)))))))))

(source-secrets-file)

(provide 'secrets)
;;; secrets.el ends here
