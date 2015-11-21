;;; dash-config.el --- Configuration for dash, the documentation
;;; browser for OS X

;;; Commentary:

;; Extra functions and configuration related to dash.

;;; Code:

(prelude-require-package 'dash-at-point)

(autoload 'dash-at-point "dash-at-point"
  "Search the word at point with Dash." t nil)
(global-set-key "\C-c." 'dash-at-point)

(provide 'dash-config)
;;; dash-config.el ends here
