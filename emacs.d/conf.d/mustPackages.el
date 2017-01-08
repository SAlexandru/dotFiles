;; Setup packages
(use-package package)
(use-package dash)
(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))

(defun packages-install (packages)
  (--each packages
    (when (not (package-installed-p it))
      (package-install it)))
  (delete-other-windows))

;;; On-demand installation of packages
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))

;; Install extensions if they're missing
(defun init--install-packages ()
  (packages-install 
    '(
      key-chord
      smart-mode-line
      linum-relative
      fill-column-indicator
      magit
      neotree
      helm
      projectile

      
      evil
      evil-surround
      evil-numbers
      evil-leader
      evil-nerd-commenter
      evil-mark-replace
      evil-matchit
      evil-args
      evil-snipe
      evil-paredit
     
      ensime
      scala-mode

      merlin
      ocp-indent
     
      seti-theme
      ir-black-theme
     
      
      company-cmake
      company-irony
      yasnippet
      irony
     
      python-mode
      ;pymacs
      ;jedi
      ;ropemacs
     )
))

(condition-case nil
  (init--install-packages)
   (error
     (package-refresh-contents)
     (init--install-packages)))



(provide 'mustPackages)
