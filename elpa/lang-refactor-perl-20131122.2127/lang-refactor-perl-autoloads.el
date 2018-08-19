;;; lang-refactor-perl-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "lang-refactor-perl" "lang-refactor-perl.el"
;;;;;;	(23404 22236 538479 522000))
;;; Generated autoloads from lang-refactor-perl.el

(autoload 'lr-extract-variable "lang-refactor-perl" "\
Do refactoring 'extract Perl variable' of active region.

Ask the user for a variable name to extract the active region
into.

Replace all occurences in the current defun with the variable and
insert a variable declarion (initialized with the region text).

Push the mark and then leave point at the new variable
declaration (you'll need to ensure this is a reasonable location
before jumping back).

By default, only the current defun is changed. Invoke with the
prefix arg to change the entire buffer.

Both replacements and the declaration are highlighted.

\(fn BEG END &optional ARG-VARIABLE-NAME)" t nil)

(autoload 'lr-remove-highlights "lang-refactor-perl" "\


\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; lang-refactor-perl-autoloads.el ends here
