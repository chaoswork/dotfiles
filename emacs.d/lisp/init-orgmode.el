;;;
;;; Org mode
;;;

(require 'org)

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-html-validation-link nil)

;; fontify code in code blocks
(setq org-src-fontify-natively t)
(eval-after-load "org"
  '(require 'ox-md nil t))

(provide 'init-orgmode)
