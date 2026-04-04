;;; lwsd-mode.el --- A major mode for editing Staged Shape-Dependent Types programs.  -*- lexical-binding: t; -*-

;; Copyright (C) 2026  Takashi SUWA

;; Author: Takashi SUWA <bd.gfngfn[at]gmail.com>
;; Keywords: languages

;;; Commentary:

;;; Code:

(defgroup lwsd nil
  "Lwsd"
  :prefix "lwsd-"
  :group 'languages)

(defface lwsd-application-label-face
  '((t (:foreground "#88ffaa")))
  "application labels")

(defface lwsd-type-variable-face
  '((t (:foreground "#ff88dd")))
  "type variables")

(defface lwsd-uppercase-identifier-face
  '((t (:foreground "#aaffff")))
  "uppercase identifier")

(defface lwsd-staging-symbol-face
  '((t (:foreground "#ff88aa")))
  "staging symbols")

(define-generic-mode lwsd-mode
  nil
  '("fun" "rec" "let" "in"
    "if" "then" "else" "case" "of" "as"
    "val" "type" "module" "struct" "end"
    "external" "open" "true" "false" "forall")
  '(("\\([A-Z][A-Za-z0-9_]+\\)\\>"
     (1 'lwsd-uppercase-identifier-face t))
    ("\\('[a-z0-9_]+\\)\\>"
     (1 'lwsd-type-variable-face t))
    ("\\(\\#[a-z0-9_]+\\)\\>"
     (1 'lwsd-application-label-face t))
    ("\\(%\\|&\\|~\\)"
     (1 'lwsd-staging-symbol-face t)))
  nil
  nil
  "A major mode for editing Lwsd programs.")

(provide 'lwsd-mode)
;;; lwsd-mode.el ends here
