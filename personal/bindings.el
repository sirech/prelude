;;; bindings.el --- Set up some handy key bindings

;;; Commentary:
;; Useful global keybindings

;; repeat commands
(global-set-key "\C-x." 'repeat)

;; Font size
(define-key global-map (kbd "C-_") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;;
;; CLEANUP
;;

;; Use kill word instead of backspace. Remap kill region
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

;; Add function to copy single line
(global-set-key "\C-c\C-k" 'copy-line)

;; reload changed buffer
(global-set-key "\M-r" 'revert-buffer)

;;
;; FINDING STUFF
;;

;; Use regex searches by default.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Jump to a definition in the current file. (This is awesome.)
(global-set-key (kbd "C-o") 'prelude-goto-symbol)

;; File finding
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f") 'prelude-recentf-ido-find-file)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; ctags
(global-set-key (kbd "M-.") 'my-find-tag)
(global-set-key (kbd "M->") 'pop-tag-mark)
(global-set-key (kbd "M-?") 'tags-search)

;;
;; MOVING BETWEEN WINDOWS
;;

;; Moving between paragraphs
(global-set-key (kbd "M-[") 'backward-paragraph)
(global-set-key (kbd "M-]") 'forward-paragraph)

;; Rotate window
(global-set-key (kbd "C-x C-o") 'rotate-windows)

;; Moving around windows
(global-set-key (kbd "C-x o") 'ace-window)

;;
;; MOVING INSIDE A BUFFER
;;

(global-set-key [remap goto-line] 'goto-line-with-feedback)

;;
;; INDENTING / COMMENTS
;;

;; make commenting/uncommenting easy
(global-set-key (kbd "C-;") 'comment-region)
(global-set-key (kbd "C-'") 'uncomment-region)

;; TODO: remove if needed
;; enter indents automatically
;;(global-set-key (kbd "RET") 'newline-and-indent)

;;
;; RECTANGLE
;;

;; Surround a rectangle from the left and the right
(define-key ctl-x-r-map "u" 'surround-rectangle-with)
;; Insert something before a rectangle
(define-key ctl-x-r-map "p" 'string-insert-rectangle)

;;
;; EDITING
;;

(global-set-key (kbd "M-<down>") 'move-text-down)
(global-set-key (kbd "M-<up>") 'move-text-up)

(global-set-key (kbd "C-+") 'er/contract-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(browse-kill-ring-default-keybindings)

;;
;; FLYSPELL
;;

(eval-after-load 'flyspell
  '(progn
     (define-key flyspell-mode-map (kbd "C-;") 'nil)))

(provide 'bindings)
;;; bindings.el ends here
