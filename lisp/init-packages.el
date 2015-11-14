;; for loading packages and selecting the right package.el to use

(require 'package)

;; The various package repositories
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packaages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

;; gtags? code-tagging system...
(setq package-pinned-packages '((php-extras . "marmalade")
				(magit . "melpa-stable")))

(defun require-package (package &optional min-version no-refresh)
  "Install PACKAGE, optional MIN-VERSION."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

(defun maybe-require-package (package &optional min-version no-refresh)
  "Try to install PACKAGE, return non-nil if successful."
  (condition-case err
      (require-package package min-version no-refresh)
    (error
     (message "Couldn't install package `%s': %S" package err)
     nil)))

;; load package.el
(setq package-enable-at-startup nil)
(package-initialize)

(provide 'init-packages)
