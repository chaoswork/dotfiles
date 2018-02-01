
(require-package 'yasnippet)
(require 'yasnippet)
;; 使用Ctrl-TAB 作为唯一的触发快捷键
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c TAB") 'yas-expand)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-global-mode 1)
(provide 'init-yasnippet)
