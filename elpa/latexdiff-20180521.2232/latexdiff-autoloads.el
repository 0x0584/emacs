;;; latexdiff-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "latexdiff" "latexdiff.el" (23404 22230 442397
;;;;;;	555000))
;;; Generated autoloads from latexdiff.el

(autoload 'latexdiff "latexdiff" "\
Ask for two tex files and make the difference between them.

\(fn)" t nil)

(autoload 'latexdiff-vc "latexdiff" "\
Compile the pdf difference between the choosen commit and the current version of the current file.

\(fn)" t nil)

(autoload 'latexdiff-vc-range "latexdiff" "\
Compile the pdf difference between two choosen commits.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; latexdiff-autoloads.el ends here
