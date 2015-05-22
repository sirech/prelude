;;; helm-config.el --- Configuration for helm.

;;; Commentary:

;; Extra functions and configuration related to helm.

;;; Code:

;; Settings
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(provide 'helm-config)
;;; helm-config.el ends here
