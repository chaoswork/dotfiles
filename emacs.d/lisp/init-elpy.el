;;;
;;; elpy model
;;;

(require 'elpy)

;; disable highlight-indentation
(add-hook 'python-mode-hook (lambda () (highlight-indentation-mode 0)))

(provide 'init-elpy)
