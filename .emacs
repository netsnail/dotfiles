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

;;(set-frame-parameter (selected-frame) 'alpha (list 85 50))
;;(add-to-list 'default-frame-alist (cons 'alpha (list 85 50)))

;; add font 75dpi for fcitx
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

(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/helm")

;;(require 'ecb)
;;(require 'web-mode)
;;(require 'flymake)

;; yas
;;(yas/initialize)
;;(yas/load-directory "/usr/share/emacs/etc/yasnippet/snippets")

;; helm
(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.we\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; ido-mode
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point 'guess)
(setq ido-everywhere t)          
(ido-mode 1)

;; company-mode
;;(add-hook 'after-init-hook 'global-company-mode)

;; org-mode
(defun org-mode-my-init ()
  (define-key org-mode-map (kbd "×") (kbd "*"))
  (define-key org-mode-map (kbd "<f8>") 'org-publish-current-file)
  )
(add-hook 'org-mode-hook 'org-mode-my-init)
(setq org-startup-indented t)
(setq org-publish-project-alist
       '(("notes"
          :base-directory "~/Documents/org/notes/"
		  :base-extension "org"
          :publishing-function org-html-publish-to-html
          :publishing-directory "~/Documents/org/public_html"
		  :exclude "style.css" ;; regexp
		  :headline-levels 3
		  :recursive t
		  :section-numbers t
		  :with-toc t
		  :with-author t
		  :with-email t
		  :html-head "<link rel=\"stylesheet\" href=\"../style.css\" type=\"text/css\" />"
		  :html-preamble t)))
