;;; appearance.el --- How emacs looks

(setq visible-bell nil
      font-lock-maximum-decoration t
      inhibit-startup-message t
      color-theme-is-global t
      truncate-partial-width-windows nil)

(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (scroll-bar-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1)
  (column-number-mode 't))

(add-hook 'before-make-frame-hook 'turn-off-tool-bar)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; Support visual lines
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

(provide 'appearance)
;;; appearance.el ends here
