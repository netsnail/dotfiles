(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote org-mode))
 '(initial-scratch-message nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (json-mode html5-schema)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(tooltip-mode t))
(setq default-frame-alist '((height . 26)(width . 80)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(fset 'yes-or-no-p 'y-or-n-p) 
(setq auto-save-default nil)
(global-linum-mode 0)
;;(setq suggest-key-bindings-1)
;;(set-frame-parameter (selected-frame) 'alpha (list 85 50))
;;(add-to-list 'default-frame-alist (cons 'alpha (list 85 50)))
(set-language-environment "UTF-8")
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
  (define-key org-mode-map (kbd "<f12>") 'org-publish-current-file)
  (define-key org-mode-map (kbd "<S-f12>") 'org-latex-export-to-pdf)
  (define-key org-mode-map (kbd "<f9>") 'my-org-screenshot))
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
		 :html-head "<link rel=\"stylesheet\" href=\"../worg.css\" type=\"text/css\" />"
		 :html-preamble t)))
(defun my-org-screenshot ()
  (interactive)
  (setq filename
        (concat (make-temp-name
          (concat "../image/" (file-name-nondirectory (buffer-file-name))
                  "_" (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (call-process "import" nil nil nil filename)
  (insert (concat "[[" filename "]]"))
  (org-display-inline-images))

;; ox-latex
(require 'ox-latex)
(setq org-latex-default-class "cjk-article")
(add-to-list 'org-latex-classes
             '("cjk-article"
			   "
\\documentclass[11pt]{article}
\\usepackage{xeCJK}
\\setCJKsansfont{Microsoft YaHei}
\\usepackage{indentfirst}
\\usepackage[bookmarksnumbered=true]{hyperref}
\\usepackage{bookmark}
"
			   ("\\section{%s}" . "\\section*{%s}")
     ("\\subsection{%s}" . "\\subsection*{%s}")
     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
     ("\\paragraph{%s}" . "\\paragraph*{%s}")
     ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
	 ))
(setq org-latex-pdf-process
	  '("xelatex -interaction nonstopmode -output-directory %o %f"
		"rm %b.tex"))

;; lua-mode
(add-to-list 'load-path "~/.emacs.d/lua/")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

