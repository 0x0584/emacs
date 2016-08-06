;;; persp-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (persp-mode def-auto-persp) "persp-mode" "persp-mode.el"
;;;;;;  (22415 46811 972818 188000))
;;; Generated autoloads from persp-mode.el

(autoload 'def-auto-persp "persp-mode" "\


\(fn NAME &rest KEYARGS &key BUFFER-NAME FILE-NAME MODE MODE-NAME MINOR-MODE MINOR-MODE-NAME PREDICATE HOOKS DYN-ENV GET-NAME-EXPR GET-BUFFER-EXPR GET-PERSP-EXPR SWITCH PARAMETERS NOAUTO ON-MATCH AFTER-MATCH DONT-PICK-UP-BUFFERS DELETE)" nil nil)

(defvar persp-mode nil "\
Non-nil if Persp mode is enabled.
See the command `persp-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `persp-mode'.")

(custom-autoload 'persp-mode "persp-mode" nil)

(autoload 'persp-mode "persp-mode" "\
Toggle the persp-mode.
When active, keeps track of multiple 'perspectives',
named collections of buffers and window configurations.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("persp-mode-pkg.el") (22415 46812 129269
;;;;;;  368000))

;;;***

(provide 'persp-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; persp-mode-autoloads.el ends here
