;; init.el

;; add lisp to load path

;; (setq url-proxy-services '(("no_proxy" . "work\\.com")
;;                           ("http" . "10.95.103.98:3128")))

(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-modeline)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
(require 'idle-require)
(require 'init-elpa) ;; load ELPA
(require 'init-yasnippet) ;; load yasnippet
(require 'init-ido)
(require 'init-smex)
(require 'ace-jump-mode)
(require 'init-orgmode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(require 'magit)

;; jedi
(autoload 'jedi:setup "jedi" nil t)
(setq jedi:setup-keys t);注意这句的位置要靠前
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)   ; optional

;; elpy setup
(elpy-enable)
(setq elpy-rpc-backend "jedi")


(require 'init-themes)
(provide 'init)

;; shell mode color
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)


;; Save all tempfiles in $TMPDIR/emacs$UID/                                                        
;;(defconst emacs-tmp-dir (format "%s/%s/" temporary-file-directory  "emacs" ))
(defconst emacs-tmp-dir (format "~/.%s.tmp/" "emacs" ))
(setq backup-directory-alist
    `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
    `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
    emacs-tmp-dir)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 '(custom-safe-themes
   (quote
    ("0c49a9e22e333f260126e4a48539a7ad6e8209ddda13c0310c8811094295b3a3" "afbb40954f67924d3153f27b6d3399df221b2050f2a72eb2cfa8d29ca783c5a8" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(org-agenda-files
   (quote
    ("~/git-local/chaoswork/work-records/daily-work/workspace/work.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'sql)
(setq sql-mysql-login-params (append sql-mysql-login-params '(port)))
(defun event-apply-control-shift-modifier (ignore-prompt)
     "\\Add the Control+Shift modifier to the following event.
 For example, type \\[event-apply-control-shift-modifier] SPC to enter Control-Shift-SPC."
     (vector (event-apply-modifier
 	     (event-apply-modifier (read-event) 'shift 25 "S-")
 	     'control 26 "C-")))
 (define-key function-key-map (kbd "C-x @ C") 'event-apply-control-shift-modifier)
;(global-set-key (kbd "<return>") (kbd "RET") )
(global-set-key  (kbd "C-RET") (kbd "C-<return>"))
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

