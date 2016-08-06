;;; gnu-apl-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (gnu-apl) "gnu-apl-interactive" "gnu-apl-interactive.el"
;;;;;;  (22411 18847 131584 408000))
;;; Generated autoloads from gnu-apl-interactive.el

(autoload 'gnu-apl "gnu-apl-interactive" "\
Start the GNU APL interpreter in a buffer.
APL-EXECUTABLE is the path to the apl program (defaults
to ‘gnu-apl-executable’).

\(fn APL-EXECUTABLE)" t nil)

;;;***

;;;### (autoloads (gnu-apl gnu-apl-mode gnu-apl) "gnu-apl-mode" "gnu-apl-mode.el"
;;;;;;  (22411 18846 891583 217000))
;;; Generated autoloads from gnu-apl-mode.el

(let ((loads (get 'gnu-apl 'custom-loads))) (if (member '"gnu-apl-mode" loads) nil (put 'gnu-apl 'custom-loads (cons '"gnu-apl-mode" loads))))

(autoload 'gnu-apl-mode "gnu-apl-mode" "\
Major mode for editing GNU APL files.

\(fn)" t nil)

(autoload 'gnu-apl "gnu-apl-mode" "\
Start the GNU APL interpreter in a buffer.
APL-EXECUTABLE is the path to the apl program (defaults
to ‘gnu-apl-executable’).

\(fn APL-EXECUTABLE)" t nil)

(add-to-list 'auto-mode-alist '("\\.apl\\'" . gnu-apl-mode))

(add-to-list 'interpreter-mode-alist '("apl" . gnu-apl-mode))

;;;***

;;;### (autoloads nil nil ("gnu-apl-documentation.el" "gnu-apl-editor.el"
;;;;;;  "gnu-apl-follow.el" "gnu-apl-input.el" "gnu-apl-mode-pkg.el"
;;;;;;  "gnu-apl-network.el" "gnu-apl-osx-workaround.el" "gnu-apl-plot.el"
;;;;;;  "gnu-apl-refdocs-bsd-license.el" "gnu-apl-spreadsheet.el"
;;;;;;  "gnu-apl-symbols.el" "gnu-apl-util.el") (22411 18847 366093
;;;;;;  419000))

;;;***

(provide 'gnu-apl-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; gnu-apl-mode-autoloads.el ends here
