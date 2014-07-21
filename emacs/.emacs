;;; packages
(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.
Return a list of installed packages or nil for every package not installed."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         package
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         nil)))
   packages))


(require 'package)
(add-to-list    'package-archives
                '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;; line wrapping
(setq-default truncate-lines nil)

;;; color theme
(load-theme 'solarized-dark t)

;;; basic UI tweaks
(set 'inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-face-attribute 'default nil :height 90)

;;; line numbers
(global-linum-mode t)

;;; evil mode
(ensure-package-installed 'evil)
(require 'evil)
(evil-mode 1)

;;; elpy
(ensure-package-installed 'elpy)
(require 'elpy)
(elpy-enable)

;;; go
(ensure-package-installed 'go-autocomplete 'auto-complete)
(require 'auto-complete-config)
(require 'go-autocomplete)

;;; dirtree
;;(add-to-list 'load-path "~/.emacs.d/neotree")
;;(require 'neotree)
;;(global-set-key [f8] 'neotree-toggle)
