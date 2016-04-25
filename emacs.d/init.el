;; init.el

;; add lisp to load path

;; (setq url-proxy-services '(("no_proxy" . "work\\.com")
;;                           ("http" . "10.95.103.98:3128")))

(add-to-list
    'load-path
    (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa) ;; load ELPA
(require 'init-yasnippet) ;; load yasnippet

(provide 'init)

