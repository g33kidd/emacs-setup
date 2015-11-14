;;  '(el-get; el-get is self-hosting
;;    escreen            ; screen for emacs, C-\ C-h
;;    php-mode-improved; if you're into php...
;;    elixir ; if you like elixir.... ^
;;    alchemist ; for working with mix and elixir
;;    switch-window ; takes over C-x o
;;    auto-complete
;;    emmet-mode
;;    org-mode
;;    helm
;;    powerline
;;    markdown-mode
;;    web-mode
;;    projectile
;;    color-theme               
;;    color-theme-tomorrow))
					;
;; (color-theme-tomorrow-night)
;; (powerline-vim-theme)

;; (global-set-key (kbd "M-x") 'helm-M-x)
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;; (global-set-key (kbd "C-x b") 'helm-buffers-list)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'exec-path "/usr/local/bin")

(require 'init-packages)
(require 'init-themes)
(require 'init-hooks)

(maybe-require-package 'elixir-mode)
(maybe-require-package 'alchemist)
(maybe-require-package 'auto-complete)
(maybe-require-package 'switch-window)
(maybe-require-package 'emmet-mode)
(maybe-require-package 'projectile)
(maybe-require-package 'helm)
(maybe-require-package 'magit)
(maybe-require-package 'rainbow-mode)
(maybe-require-package 'powerline)
(maybe-require-package 'web-mode)
(maybe-require-package 'neotree)

(add-hook 'css-mode-hook 'my-css-mode-hook)
(defun my-css-mode-hook ()
  (rainbow-mode 1))

;; keys configuration
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-x t") 'neotree-toggle)


(defvar show-paren-delay 0
  "Delay (in seconds) before matching paren is highlighted")

;(require 'color-theme-sanityinc-tomorrow)
(powerline-default-theme) ;; change look of powerline

;; replace with some configuration
(global-auto-complete-mode t)

(global-linum-mode t)
(setq linum-format "%d ")

(menu-bar-mode -1)
(tool-bar-mode -1)
(show-paren-mode 1)







