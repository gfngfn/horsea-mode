;;; lwsd-mode.el --- A major mode for editing Lightweight Staged Dependent Types programs.  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Takashi SUWA

;; Author: Takashi SUWA <bd.gfngfn[at]gmail.com>
;; Keywords: languages

;;; Commentary:

;;; Code:

(defgroup lwsd nil
  "Lwsd"
  :prefix "lwsd-"
  :group 'languages)

(defface lwsd-tag-face
  '((t (:foreground "#88ffaa")))
  "tags")

(defface lwsd-type-variable-face
  '((t (:foreground "#ff88dd")))
  "type variables")

(defface lwsd-uppercase-identifier-face
  '((t (:foreground "#aaffff")))
  "uppercase identifier")

(defface lwsd-uppercase-identifier-face
  '((t (:foreground "#ffffaa")))
  "uppercase identifier")

(define-generic-mode lwsd-mode
  nil
  '("let" "rec" "and" "in" "fun"
    "if" "then" "else" "true" "false"
    "do" "end" "case" "of"
    "val" "type" "module" "struct" "signature" "sig" "with"
    "external" "include" "import" "pack" "unpack" "assert" "open")
  '(("\\([A-Z][A-Za-z0-9_]+\\)\\>"
     (1 'lwsd-uppercase-identifier-face t))
    ("\\(\\$[a-z0-9_]+\\)\\>"
     (1 'lwsd-type-variable-face t))
    ("\\(%\\|&\\|~\\)\\>")
     (1 'lwsd-staging-symbol-face t))
  nil
  nil
  "A major mode for editing Lwsd programs.")


(provide 'lwsd-mode)
;;; lwsd-mode.el ends here
