;;; osx-config.el --- Configuration for OSX.

(when (eq system-type 'darwin)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super))

(provide 'osx-config)
;;; osx-config.el ends here
