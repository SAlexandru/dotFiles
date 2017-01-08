;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;      The Vim Way           ;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package evil
    :init
    ;; lot of the variables need to be set BEFORE evil loads
    (setq evil-move-cursor-back t
          evil-cross-lines t
          evil-want-fine-undo t
          evil-want-C-u-scroll t
          evil-want-C-w-in-emacs-state nil)
    (global-evil-leader-mode)
    :config
    (add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
    (evil-mode 1)
)



;;;default exits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;;Make evil-mode up/down operate in screen lines instead of logical lines
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
(define-key evil-visual-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-visual-state-map (kbd "k") 'evil-previous-visual-line)

(use-package key-chord
    :config
    (key-chord-mode 1)
)

;;my favorite way of exiting
(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)

(use-package evil-leader)
(evil-leader/set-leader ",")
(evil-leader/set-key 
    "e" 'find-file
    "bs" 'switch-to-buffer
    "k" 'kill-buffer
     ;; Folding
    "zf"      'hs-hide-block
    "zo"      'hs-show-block

     ;; Buffer management
    "bu"      'buffer-menu
    "bd"      'kill-buffer-and-window

     ;; Window/pane management
    "vs"      'split-window-right
    "hs"      'split-window-below
    "bw"      'balance-windows
    "w"       'next-multiframe-window  
)


(setq evil-find-skip-newlines t)
(setq evil-move-cursor-back nil
      evil-cross-lines t)

;; numbers
(use-package evil-numbers)
(define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)


(use-package evil-surround
    :config
    (global-evil-surround-mode 1)
)

;;;;;;;;  evil nerd-commenter
;;; nerd commenter

(evilnc-default-hotkeys)
(evil-leader/set-key
   "ci" 'evilnc-comment-or-uncomment-lines
   "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
   "ll" 'evilnc-quick-comment-or-uncomment-to-the-line
   "cc" 'evilnc-copy-and-comment-lines
   "cp" 'evilnc-comment-or-uncomment-paragraphs
   "cr" 'comment-or-uncomment-region
   "cv" 'evilnc-toggle-invert-comment-line-by-line
   "\\" 'evilnc-comment-operator 
) 

;;;; use % to match tags in any language
(use-package evil-matchit
    :config
    (global-evil-matchit-mode 1)
)

;;;;; evil-snipe
(use-package evil-snipe
    :config
    (evil-snipe-mode 1)
)

(setq evil-snipe-scope 'line)
(setq evil-snipe-repeat-scope 'whole-line)
(setq evil-snipe-count-scope nil)
(setq evil-snipe-search-highlight nil)
(setq evil-snipe-search-incremental-highlight nil)
(setq evil-snipe-repeat-keys t)
;; or 'buffer, 'whole-visible or 'whole-buffer
(setq evil-snipe-scope 'visible)
(setq evil-snipe-repeat-scope 'whole-visible)
(setq evil-snipe-enable-highlight t)
(setq evil-snipe-enable-incremental-highlight t)


;;;;;;;;; NeoTree config
(use-package neotree)
(setq projectile-switch-project-action 'neotree-projectile-action)
(global-set-key [f8] 'neotree-toggle)
(setq neotree-theme 'nerd)
(add-hook 'neotree-mode-hook
            (lambda ()
              (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
              (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)
              (define-key evil-normal-state-local-map (kbd "|") (neotree-make-executor
                                                                 :file-fn 'neo-open-file-vertical-split) )
              (define-key evil-normal-state-local-map (kbd "-")  (neotree-make-executor
                                                                 :file-fn 'neo-open-file-horizontal-split))
              (define-key evil-normal-state-local-map (kbd ",n") 'neotree-create-node)
              (define-key evil-normal-state-local-map (kbd ",d") 'neotree-delete-node)
              (define-key evil-normal-state-local-map (kbd ",r") 'neotree-rename-node)
              (define-key evil-normal-state-local-map (kbd ",h") 'neotree-hidden-file-toggle) 
            )
)

(provide 'evilConfig)
