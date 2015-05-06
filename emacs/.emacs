;;; # package management
(require 'package)
(package-initialize)

(setq packages '(
    ;; relevant for config
    evil
    evil-leader
    evil-nerd-commenter
    solarized-theme
    fill-column-indicator
    key-chord
    
    ;; editing modes
    markdown-mode
    haskell-mode
))

(add-to-list    'package-archives
                '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 	'package-archives
    		'("marmalade" . "http://marmalade-repo.org/packages/") t)

( defun install-required-packages ()
	( interactive )
	( package-refresh-contents )
	( mapcar 'package-install packages )
)

;; unpackaged modes
(add-to-list 'load-path "~/.emacs.d/custom-modes")

;; # gui
;; # # theme
(require 'solarized-theme)
(load-theme 'solarized-dark t)

;; # # tweaks
(set 'inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :height 100)
(column-number-mode)

;; # # line numbers
(global-linum-mode t)

;; # # highlight matching braces
(show-paren-mode)

;; # # enable evil-leader
(require 'evil-leader)
(global-evil-leader-mode)

;; # # evil
(require 'evil)
(evil-mode 1)

;; # # ifc 
(setq fci-rule-column 79)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; scale test
(evil-leader/set-key "t" 'text-scale-adjust)

;; # editing
;; # # jj to ESC
(require 'key-chord)
(setq key-chord-two-keys-delay 0.25)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; # # evil-nerd-commenter
(require 'evil-nerd-commenter)
(evil-leader/set-key "c" 'evilnc-comment-or-uncomment-lines)

;; # # use spaces for indentation
(setq-default indent-tabs-mode nil)

;; # # show trailing whitespace
(setq-default show-trailing-whitespace t)
