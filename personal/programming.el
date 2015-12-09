;;; programming.el --- Settings for programming.

;;; Commentary:

;; Settings for everything related to programming.

;;; Code:

(prelude-require-package 'which-key)

;; Web Mode

(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; JS

(setq-default js2-basic-offset 2)
(setq js2-bounce-indent t)
(setq js2-cleanup-whitespace t)
(setq js2-highlight-level 3)
(setq js2-indent-on-enter-key t)

;; Ruby
(prelude-require-packages '(ruby-hash-syntax robe))

;; rbenv
(when (file-exists-p "~/.rbenv")
  (prelude-require-package 'rbenv)

  (require 'rbenv)
  (rbenv--setup)
  (rbenv-use-global))

;; Robe
(add-hook 'ruby-mode-hook 'robe-mode)
(when (featurep 'prelude-company)
  (push 'company-robe company-backends))

(setq ruby-insert-encoding-magic-comment nil)

(provide 'programming)
;;; programming.el ends here
