;;; machines.el --- Configuration for specific machines

(cond
 ((equal system-name "finks")
  (set-face-attribute 'default nil :family "Inconsolata" :height 170)
  (prelude-swap-meta-and-super))
 ((equal system-name "ls005")
  (set-face-attribute 'default nil :family "Inconsolata" :height 150)))

(provide 'machines)
;;; machines.el ends here
