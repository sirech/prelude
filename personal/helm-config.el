;;; helm-config.el --- Configuration for helm.

;;; Commentary:

;; Extra functions and configuration related to helm.

;;; Code:

;; Settings

(when (featurep 'prelude-helm)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
  (define-key helm-map (kbd "C-z")  'helm-select-action)

  (when (featurep 'prelude-key-chord)
    (key-chord-define-global "yy" 'helm-show-kill-ring)
    (key-chord-define-global "xx" 'helm-M-x))

  (prelude-require-package 'helm-ag))

(provide 'helm-config)
;;; helm-config.el ends here
