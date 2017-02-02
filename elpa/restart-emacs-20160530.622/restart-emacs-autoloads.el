;;; restart-emacs-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (restart-emacs) "restart-emacs" "restart-emacs.el"
;;;;;;  (22413 3971 567065 392000))
;;; Generated autoloads from restart-emacs.el

(autoload 'restart-emacs "restart-emacs" "\
Restart Emacs.

When called interactively ARGS is interpreted as follows

- with a single `universal-argument' (`C-u') Emacs is restarted
  with `--debug-init' flag
- with two `universal-argument' (`C-u') Emacs is restarted with
  `-Q' flag
- with three `universal-argument' (`C-u') the user prompted for
  the arguments

When called non-interactively ARGS should be a list of arguments
with which Emacs should be restarted.

\(fn &optional ARGS)" t nil)

;;;***

;;;### (autoloads nil nil ("restart-emacs-pkg.el") (22413 3971 698313
;;;;;;  437000))

;;;***

(provide 'restart-emacs-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; restart-emacs-autoloads.el ends here
