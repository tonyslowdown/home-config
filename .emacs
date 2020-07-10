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
      '(eyebrowse
	ivy
	magit
	markdown-mode
	multi-term
	color-theme-sanityinc-tomorrow
	undo-tree
	projectile))
(package-install-selected-packages)

;; Set up tomorrow night theme
(require 'color-theme-sanityinc-tomorrow)

;; Activate winner-mode
(when (fboundp 'winner-mode)
  (winner-mode 1))

;; Set up windmove
(global-set-key (kbd "C-c h") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c k") 'windmove-up)
(global-set-key (kbd "C-c j") 'windmove-down)

;; Window divider
(defun my-change-window-divider ()
  (let ((display-table (or buffer-display-table standard-display-table)))
    (set-display-table-slot display-table 5 ?│)
    (set-window-display-table (selected-window) display-table)))
(add-hook 'window-configuration-change-hook 'my-change-window-divider)

;; Show line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Backup file management https://www.emacswiki.org/emacs/BackupDirectory
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist '(("." . "~/.saves/"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

;; Set up eyebrowse
(require 'eyebrowse)
(eyebrowse-mode t)

;; Set up magit
(add-to-list 'load-path "~/.emacs.d/site-lisp/magit/lisp")
(require 'magit)
(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/magit/Documentation/"))
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; Set up markdown-mode
(require 'markdown-mode)
(setq markdown-command '("pandoc" "--from=markdown" "--to=html5"))
(setq markdown-fontify-code-blocks-natively t)
(setq markdown-css-paths '("~/home-config/pandoc.css"))

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
