(add-to-list 'exec-path "/usr/bin")

(use-package ensime
    :ensure t
    :pin melpa-stable
)

(use-package scala-mode
    :interpreter
    ("scala" . scala-mode)
)

;; For complex scala files
;(setq max-lisp-eval-depth 50000)
(setq max-specpdl-size 5000)

(setq prettify-symbols-alist scala-prettify-symbols-alist)
(prettify-symbols-mode)

(use-package sbt-mode
  :commands sbt-start sbt-command
  :config
   ;WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
   ;allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map)
)



(provide 'scalaConfig)
