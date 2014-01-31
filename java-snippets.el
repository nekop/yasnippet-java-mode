;;; java-snippets.el --- Yasnippets for Java

;; Copyright (C)  2010-2014 Takayoshi Kimura

;; Author: Takayoshi Kimura
;; URL: https://github.com/nekop/yasnippet-java-mode
;; Package-Requires: ((yasnippet "0.8.0"))

;;; Commentary:

;;; Code:

(require 'yasnippet)

(defvar java-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun java-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" java-snippets-root)))
   (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(java-snippets-initialize))

(provide 'java-snippets)

;;; java-snippets.el ends here
