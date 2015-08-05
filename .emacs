(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(initial-major-mode (quote text-mode))
 '(initial-scratch-message nil)
 '(inhibit-startup-screen t)
 '(size-indication-mode t)
 '(make-backup-files nil)
 '(column-number-mode t)
 '(scroll-bar-mode nil)
 '(global-linum-mode t)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(tooltip-mode t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;'(default ((t (:family "WenQuanYi Micro Hei Mono")))))
)
(set 'yes-or-no-p 'y-or-n-p)
(setq-default make-backup-files nil)

;(set-frame-parameter (selected-frame) 'alpha (list 85 50))
;(add-to-list 'default-frame-alist (cons 'alpha (list 85 50)))

(let ((encoding (getenv "LANG")))
  (cond ((equal encoding "zh_CN")
         t)))
(when (display-graphic-p)
  (set-face-attribute 'default nil :font "Monaco 10")
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                 charset (font-spec :family "WenQuanYi Micro Hei Mono" :size 14))))

(setq-default c-basic-offset 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))


(global-set-key (kbd "C-j") 'newline)
