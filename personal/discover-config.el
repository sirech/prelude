;;; discover-config.el --- Configuration for discover.

;;; Commentary:

;; Extra functions and configuration related to discover.

;;; Code:

(prelude-require-package 'discover)

(add-hook 'dired-mode-hook 'discover-mode)

(provide 'discover-config)
;;; discover-config.el ends here
