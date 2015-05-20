;;; system-name.el --- Adjust the system name

(when (eq system-type 'darwin)
  ;; Work around a bug on OS X where system-name is FQDN
  (setq system-name (car (split-string system-name "\\."))))

(provide 'system-name)
;;; system-name.el ends here
