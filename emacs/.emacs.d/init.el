;; set default font
(add-to-list 'default-frame-alist
	     '(font . "Rec Mono Casual-10.5"))

;; set default theme
;; testing the "dracula-theme" theme
;; (load-theme 'dracula :no-confirm)

;; set default theme
(require-theme 'modus-themes)
(setq modus-themes-italic-constructs t
      modus-themes-bold-constructs t)
(load-theme 'modus-operandi :no-confirm)
(define-key global-map (kbd "<f5>") #'modus-themes-toggle)

;; install MELPA repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; use "rainbow parentheses" like mode
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; display absolute line numbers
(setq display-line-numbers 't)
(add-hook 'prog-mode-hook #'display-line-numbers-mode)

;; remove menu bar, tool bar, and scroll-bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(dracula-theme rainbow-delimiters)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 
