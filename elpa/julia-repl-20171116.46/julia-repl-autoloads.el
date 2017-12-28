;;; julia-repl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "julia-repl" "julia-repl.el" (23108 59124 418496
;;;;;;  151000))
;;; Generated autoloads from julia-repl.el

(autoload 'julia-repl "julia-repl" "\
Raise the Julia REPL term buffer, creating one if it does not exist.
This should be the standard entry point.

\(fn)" t nil)

(autoload 'julia-repl-mode "julia-repl" "\
Minor mode for interacting with a Julia REPL running inside a term.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; julia-repl-autoloads.el ends here