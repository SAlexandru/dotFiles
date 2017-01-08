; Allow easy customization of emacs without restarting it.
(defun edit-dot-emacs ()
  "Load the .emacs file into a buffer for editing."
  (interactive)
  (find-file "~/.emacs"))

(defun reload-dot-emacs ()
  "Save .emacs, if it is in a buffer, and reload it."
  (interactive)
  (if (bufferp (get-file-buffer "~/.emacs"))
    (save-buffer (get-buffer "~/.emacs")))
  (load-file "~/.emacs"))

(global-set-key (kbd "C-8")  'edit-dot-emacs)
(global-set-key (kbd "C-9")  'reload-dot-emacs)

(load-theme 'seti t)

;; Are we on a mac?
(setq is-mac (equal system-type 'darwin))
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(use-package fill-column-indicator)
(setq fci-rule-column 80)
(setq fci-rule-width 3)
(setq fci-rule-color "red")

(use-package linum-relative)
(global-linum-mode 1)
(setq column-number-mode t)
;;Linum - display line numbers
(add-hook 'find-file-hook (lambda () (linum-mode 1)))


(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; No tabs! - spaces only
(setq tab-width 4)
(setq indent-tabs-mode nil)

;; No bell at all
(setq ring-bell-function 'ignore)

;; Turn off auto-saves 
(setq auto-save-default nil)

;; Turn off backups
(setq backup-inhibited t)

;; ssh-based file editing
(setq tramp-default-method "ssh")

;; Play nice with mac
(defun pbcopy ()
   (interactive)
   (call-process-region (point) (mark) "pbcopy")
   (setq deactivate-mark t))

(defun pbpaste ()
   (interactive)
   (call-process-region (point) (if mark-active (mark) (point)) "pbpaste" t t))

(defun pbcut ()
    (interactive)
    (pbcopy)
    (delete-region (region-beginning) (region-end)))


(setq x-select-enable-clipboard nil)

;; Add highlighting type thing for the selected region
(transient-mark-mode 1)

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
;;;;;; formating rules should move up
(setq-default indent-tabs-mode nil)  ;; Use only spaces and no tabs
(setq default-tab-width 4)           ;; "Tab" width is always 4 spaces
(setq-default fci-rule-column 80)    ;; Show column ruler at 80 columns
(show-paren-mode 1)                  ;; Always attempt to show matching parentheses
(global-hl-line-mode)                ;; Always highlight the current line
;;(aggressive-indent-global-mode)      ;; Enable aggressive indent mode everywhere

(provide 'generalConfig)
