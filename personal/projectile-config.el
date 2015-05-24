;;; projectile-config.el --- Configuration for projectile.

;;; Commentary:

;; Extra functions and configuration related to projectile.

;;; Code:

;; Settings
(setq projectile-enable-caching t)
(add-to-list 'projectile-globally-ignored-files "gems.tags")

(provide 'projectile-config)
;;; projectile-config.el ends here
