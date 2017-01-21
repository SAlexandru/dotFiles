(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade.ferrier.me.uk/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

(use-package exec-path-from-shell)
(when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

(when (eq system-type 'darwin)
    (setq mac-command-modifier 'meta)
    (setq mac-option-modifier nil))
    
(tool-bar-mode 0) 
(menu-bar-mode 0)
(scroll-bar-mode 0)
(fset `yes-or-no-p `y-or-n-p)


(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal" default-directory))
(use-package requiredPackages)
(use-package generalConfigs)
(use-package scala)


;;;;;; Start emacs as a server-client app
(load "server")
(unless (server-running-p)
     (server-start))
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
