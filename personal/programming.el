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
(prelude-require-packages '(ruby-hash-syntax robe))

;; rbenv
(when (executable-find "rbenv")
  (prelude-require-package 'rbenv)

  (require 'rbenv)
  (rbenv--setup)
  (rbenv-use-global))

;; Robe
(add-hook 'ruby-mode-hook 'robe-mode)
(when (featurep 'prelude-company)
  (push 'company-robe company-backends))

(provide 'programming)
;;; programming.el ends here
