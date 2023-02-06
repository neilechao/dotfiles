; list the packages you want
(setq package-list '(rust-mode))

; list the repositories containing them
(setq package-archives '(("melpa" . "https://melpa.org/packages/")))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; Rust
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
