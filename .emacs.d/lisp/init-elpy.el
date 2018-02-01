;;;
;;; elpy model
;;;

(require 'elpy)

;; disable highlight-indentation
(add-hook 'python-mode-hook (lambda () (highlight-indentation-mode 0)))
(defun company-yasnippet-or-completion ()
  "Solve company yasnippet conflicts."
  (interactive)
  (let ((yas-fallback-behavior
	 (apply 'company-complete-common nil)))
    (yas-expand)))

(add-hook 'company-mode-hook
	  (lambda ()
	    (substitute-key-definition
	     'company-complete-common
	     'company-yasnippet-or-completion
	                  company-active-map)))
(provide 'init-elpy)
