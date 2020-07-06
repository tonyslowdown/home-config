(require 'package)

;; Enable MELPA
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; Install packages
(setq package-selected-packages
      '(ivy
	multi-term
	color-theme-sanityinc-tomorrow
	undo-tree
	projectile))
(package-install-selected-packages)

;; Set up tomorrow night theme
(require 'color-theme-sanityinc-tomorrow)

;; Set up multi-term
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

;; Set up ivy
(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

;; Set up undo tree
(require 'undo-tree)
(global-undo-tree-mode)

;; Set up projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)

;; Custom auto-generated
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )