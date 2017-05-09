;;; benchmark-init-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "benchmark-init" "benchmark-init.el" (22717
;;;;;;  8544 767043 141000))
;;; Generated autoloads from benchmark-init.el

(autoload 'benchmark-init/activate "benchmark-init" "\
Activate benchmark-init and start collecting data.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "benchmark-init-modes" "benchmark-init-modes.el"
;;;;;;  (22717 8544 817043 140000))
;;; Generated autoloads from benchmark-init-modes.el

(autoload 'benchmark-init/show-durations-tabulated "benchmark-init-modes" "\
Show the benchmark results in a sorted table.

\(fn)" t nil)

(autoload 'benchmark-init/show-durations-tree "benchmark-init-modes" "\
Show durations in call-tree.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("benchmark-init-pkg.el") (22717 8544 859043
;;;;;;  139000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; benchmark-init-autoloads.el ends here