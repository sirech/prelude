;;; server-config.el --- Configuration for server.

;;; Commentary:

;; Launch the server functionality automatically.

;;; Code:

(require 'server)
(when (equal window-system 'w32)
  (defun server-ensure-safe-dir (dir) "Noop" t)) ; Suppress error "directory
                                        ; ~/.emacs.d/server is unsafe"
                                        ; on windows.

(unless (server-running-p)
  (server-start))

(provide 'server-config)
;;; server-config.el ends here
