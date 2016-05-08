(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Changes colors
;; (setq frame-background-mode 'dark)

(global-linum-mode t)

;; Places annoying *~ backups elsewhere
(setq backup-directory-alist '(("." . "~/.saves")))
(setq backup-by-copying t)

;; Allows for mouse functionality
(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(require 'auto-complete)
(global-auto-complete-mode t)
(defun auto-complete-mode-maybe ()
  "Always use auto-complete"
  (unless (minibufferp (current-buffer))
    (auto-complete-mode 1)))
