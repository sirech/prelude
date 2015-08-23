;;; projectile-config.el --- Configuration for projectile.

;;; Commentary:

;; Extra functions and configuration related to projectile.

;;; Code:

;; Settings
(setq projectile-enable-caching t)
(add-to-list-multiple 'projectile-globally-ignored-files '("gems.tags" "tags"))
(add-to-list-multiple 'helm-grep-ignored-directories '("tmp" "coverage"))

(provide 'projectile-config)
;;; projectile-config.el ends here
