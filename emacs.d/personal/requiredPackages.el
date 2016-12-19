;; Setup packages
(require 'package)
(require 'dash)
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
        fill-column-indicator
        linum-relative
        exec-path-from-shell
        ;;package manager
        use-package

        ;;vim like commands
        key-chord
        evil
        evil-leader
        evil-numbers
        evil-surround
        evil-nerd-commenter
        evil-mark-replace
        evil-matchit
        evil-snipe
        

        ;;scala
        ensime
        sbt-mode
     )
))

(condition-case nil
  (init--install-packages)
   (error
     (package-refresh-contents)
     (init--install-packages)))

(provide 'requiredPackages)
