(add-to-list 'load-path "~/.emacs.d/lisp/")

;;line numbering
(require 'linum)
(linum-mode 1)

;;show matching parens
(show-paren-mode 1)
(setq show-paren-delay 0)

;; will indent the current line and new ones when you type certain “electric” characters or actions; pressing Enter, for example, will re-indent the current line if necessary, add a new one and indent it; adding a closing bracket (”}”) will automatically match the indentation of the opening pair (reducing identation if required), etc.
(electric-indent-mode 1)

;; Auto-indent yanked code
(dolist (command '(yank yank-pop))
   (eval `(defadvice ,command (after indent-region activate)
            (and (not current-prefix-arg)
                 (member major-mode '(emacs-lisp-mode lisp-mode
                                                      clojure-mode    scheme-mode
                                                      haskell-mode    ruby-mode
                                                      rspec-mode      python-mode
                                                      c-mode          c++-mode
                                                      objc-mode       latex-mode
                                                      plain-tex-mode  javascript-mode))
                 (let ((mark-even-if-inactive transient-mark-mode))
                   (indent-region (region-beginning) (region-end) nil))))))

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)

;;; Indentation for python

;; Ignoring electric indentation
(defun electric-indent-ignore-python (char)
  "Ignore electric indentation for python-mode"
  (if (equal major-mode 'python-mode)
      `no-indent'
    nil))
(add-hook 'electric-indent-functions 'electric-indent-ignore-python)

;; Enter key executes newline-and-indent
(defun set-newline-and-indent ()
  "Map the return key with `newline-and-indent'"
  (local-set-key (kbd "RET") 'newline-and-indent))
(add-hook 'python-mode-hook 'set-newline-and-indent)
