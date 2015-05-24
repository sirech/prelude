;;; company-config.el --- Configuration for company.

;;; Commentary:

;; Extra functions and configuration related to company.

;;; Code:

;; Settings

(when (featurep 'prelude-company)
  (unset-local-key 'smartparens "\M-s")
  (global-set-key (kbd "M-s") 'company-complete)

  (define-key company-active-map (kbd "C-n") 'company-select-next)
  (define-key company-active-map (kbd "C-p") 'company-select-previous)

  (setq company-idle-delay 1.5))

(provide 'company-config)
;;; company-config.el ends here
