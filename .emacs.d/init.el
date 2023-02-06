;; Melpa
(require 'package)
 (add-to-list 'package-archives
              '("melpa" . "https://melpa.org/packages/") t)
 (package-initialize)
 (package-refresh-contents)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package lsp-mode rustic go-mode rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'rust-mode)

;; Prompt before exiting emacs
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(global-set-key (kbd "C-x C-c") 'ask-before-closing)
(global-set-key (kbd "C-z") 'ask-before-closing)
(global-set-key "\M-1" 'goto-line)

;; Refreshing buffer to what is on disk
(global-set-key "\M-2" 'revert-buffer)
;; Comment and uncomment in python
(global-set-key "\M-4" 'comment-region)
(global-set-key "\M-3" 'uncomment-region)
;; Quick moving between windows
(global-set-key (kbd "C-x j") 'windmove-left)
(global-set-key (kbd "C-x l") 'windmove-right)
