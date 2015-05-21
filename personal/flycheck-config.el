;;; flycheck-config.el --- Configuration for flycheck.

;;; Commentary:

;; Extra functions and configuration related to flycheck.

;;; Code:

(prelude-require-package 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(provide 'flycheck-config)
;;; flycheck-config.el ends here
