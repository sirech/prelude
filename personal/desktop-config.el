;;; desktop-config.el --- Config for desktop.

;;; Commentary:

;; Save and Restore the session when Emacs is restarted

;;; Code:

(setq desktop-path (list prelude-savefile-dir))
(desktop-save-mode 1)
(defadvice desktop-read (around trace-desktop-errors)
  (let ((old-debug-on-error debug-on-error))
    (setq debug-on-error t)
    ad-do-it
    (setq debug-on-error old-debug-on-error)))

(provide 'desktop-config)
;;; desktop-config.el ends here
