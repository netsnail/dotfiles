(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(initial-major-mode (quote text-mode))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(tooltip-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set 'yes-or-no-p 'y-or-n-p) 
(setq initial-scratch-message nil)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "<f6>") 'linum-mode)
(global-set-key (kbd "<f7>") 'eshell)
(global-set-key (kbd "<f8>") 'switch-to-buffer)
(global-set-key (kbd "C-j") 'newline)



