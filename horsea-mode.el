;;; horsea-mode.el --- A major mode for editing programs in Horsea (Staged Shape-Dependent Types).  -*- lexical-binding: t; -*-

;; Copyright (C) 2025-2026 Takashi SUWA

;; Author: Takashi SUWA <bd.gfngfn[at]gmail.com>
;; Keywords: languages

;;; Commentary:

;;; Code:

(defgroup horsea nil
  "Horsea"
  :prefix "horsea-"
  :group 'languages)

(defface horsea-application-label-face
  '((t (:foreground "#88ffaa")))
  "application labels")

(defface horsea-type-variable-face
  '((t (:foreground "#ff88dd")))
  "type variables")

(defface horsea-uppercase-identifier-face
  '((t (:foreground "#aaffff")))
  "uppercase identifier")

(defface horsea-staging-symbol-face
  '((t (:foreground "#ff88aa")))
  "staging symbols")

(define-generic-mode horsea-mode
  nil
  '("as"
    "case"
    "else"
    "end"
    "external"
    "false"
    "forall"
    "fun"
    "if"
    "in"
    "let"
    "module"
    "of"
    "open"
    "rec"
    "struct"
    "then"
    "true"
    "type"
    "val")
  '(("\\([A-Z][A-Za-z0-9_]*\\)\\>"
     (1 'horsea-uppercase-identifier-face t))
    ("\\('[a-z_][A-Za-z0-9_]*\\)\\>"
     (1 'horsea-type-variable-face t))
    ("\\(\\(?:\\#\\|\\?\\)[a-z_][A-Za-z0-9_]*\\)\\>"
     (1 'horsea-application-label-face t))
    ("\\(%\\|&\\|~\\)"
     (1 'horsea-staging-symbol-face t)))
  nil
  nil
  "A major mode for editing programs in Horsea (Staged Shape-Dependent Types).")

(provide 'horsea-mode)
;;; horsea-mode.el ends here
