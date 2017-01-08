(use-package org
    :config
    (setq org-log-done t)
    :bind
    (
      ("C-c l" . org-store-link)
      ("C-c a" . org-agenda)
    )
)

(provide 'orgConfig)

