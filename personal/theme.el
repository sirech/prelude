;;; theme.el --- Choose a theme for emacs

;;; Code:

(prelude-require-packages '(solarized-theme powerline))

;; high contrast modeline
(setq solarized-high-contrast-mode-line t)

(load-theme 'solarized-dark t)
(powerline-default-theme)

(provide 'theme)
;;; theme.el ends here
