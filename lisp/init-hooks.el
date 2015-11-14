;; Lets create some hooks here

(add-hook 'css-mode-hook 'my-css-mode-hook)

(defun my-css-mode-hook ()
  (rainbow-mode 1))

(provide 'init-hooks)
