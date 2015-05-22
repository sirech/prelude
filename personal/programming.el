;;; programming.el --- Settings for programming.

;;; Commentary:

;; Settings for everything related to programming.

;;; Code:

;; JS

(setq js2-basic-offset 2)
(setq js2-bounce-indent t)
(setq js2-cleanup-whitespace t)
(setq js2-highlight-level 3)
(setq js2-indent-on-enter-key t)

;; Ruby
(prelude-require-package 'ruby-hash-syntax)

(when (executable-find "rbenv")
  (prelude-require-package 'rbenv)

  (require 'rbenv)
  (rbenv--setup)
  (rbenv-use-global))

(provide 'programming)
;;; programming.el ends here
