;;; dired-config.el --- Configuration for dired.

;;; Commentary:

;; Extra functions and configuration related to dired.

;;; Code:

(prelude-require-package 'dired-narrow)

;; Bindings
(define-key dired-mode-map (kbd "/") 'dired-narrow)

(provide 'dired-config)
;;; dired-config.el ends here
