(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; load path
(add-to-list 'load-path "~/.emacs.d/")

;; basic UI tweaks
    (set 'inhibit-startup-screen t)
    (set 'initial-buffer-choice t)
    (menu-bar-mode -1)
    (tool-bar-mode -1)
    (scroll-bar-mode -1)
    (set-face-attribute 'default nil :height 90)
    (global-linum-mode 1) ; display line numbers in margin. Emacs 23 only.

;; load solarized colorscheme
(add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized/")
(load-theme 'solarized-dark t)

;; load dirtree
(require 'dirtree)

;; load evil
(add-to-list 'load-path "~/.emacs.d/evil") ; only without ELPA/el-get
(require 'evil)
(evil-mode 1)

;; load jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional

;; load yasnippet
(require 'yasnippet-bundle)

;; 80 column wrap
(require 'column-marker)
(add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 80)))

;; actually display the opened file
(custom-set-variables
 '(inhibit-startup-screen t)
)
