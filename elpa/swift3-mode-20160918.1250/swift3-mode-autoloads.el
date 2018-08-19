;;; swift3-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "swift3-mode" "swift3-mode.el" (23404 21740
;;;;;;	635766 894000))
;;; Generated autoloads from swift3-mode.el

(let ((loads (get 'swift3 'custom-loads))) (if (member '"swift3-mode" loads) nil (put 'swift3 'custom-loads (cons '"swift3-mode" loads))))

(autoload 'swift3-mode "swift3-mode" "\
Major mode for editing Swift code.

\\{swift3-mode-map}

\(fn)" t nil)
 (add-to-list 'auto-mode-alist '("\\.swift\\'" . swift3-mode))

;;;***

;;;### (autoloads nil "swift3-mode-indent" "swift3-mode-indent.el"
;;;;;;	(23404 21740 571766 21000))
;;; Generated autoloads from swift3-mode-indent.el

(defvar swift3-mode:basic-offset 4 "\
Amount of indentation for block contents.")

(custom-autoload 'swift3-mode:basic-offset "swift3-mode-indent" t)

(defvar swift3-mode:parenthesized-expression-offset 2 "\
Amount of indentation inside parentheses and square brackets.")

(custom-autoload 'swift3-mode:parenthesized-expression-offset "swift3-mode-indent" t)

(defvar swift3-mode:multiline-statement-offset 2 "\
Amount of indentation for continuations of expressions.")

(custom-autoload 'swift3-mode:multiline-statement-offset "swift3-mode-indent" t)

(defvar swift3-mode:switch-case-offset 0 "\
Amount of indentation for case labels in switch statements.")

(custom-autoload 'swift3-mode:switch-case-offset "swift3-mode-indent" t)

(defvar swift3-mode:insert-space-after-asterisk-in-comment t "\
Automatically insert a space after asterisk in comment if non-nil.")

(custom-autoload 'swift3-mode:insert-space-after-asterisk-in-comment "swift3-mode-indent" t)

(defvar swift3-mode:auto-close-multiline-comment t "\
If non-nil, `indent-new-comment-line' automatically close multiline comment.")

(custom-autoload 'swift3-mode:auto-close-multiline-comment "swift3-mode-indent" t)

(defvar swift3-mode:fix-comment-close t "\
Fix \"* /\" in incomplete multiline comment to \"*/\" if non-nil.")

(custom-autoload 'swift3-mode:fix-comment-close "swift3-mode-indent" t)

;;;***

;;;### (autoloads nil "swift3-mode-repl" "swift3-mode-repl.el" (23404
;;;;;;	21740 671767 387000))
;;; Generated autoloads from swift3-mode-repl.el

(autoload 'swift3-mode:run-repl "swift3-mode-repl" "\
Run a Swift REPL process.
It input and output via buffer `*CMD*' where CMD is replaced with the CMD given.
If there is a process already running in `*CMD*', switch to that buffer.
With argument CMD allows you to edit the command line (default is value
of `swift3-mode:repl-executable').  This function updates the buffer local
variable `swift3-mode:repl-executable' with the given CMD, so it will be used
as the default value for the next invocatoin in the current buffer.
With DONT-SWITCH cursor will stay in current buffer.
Runs the hook `swift3-repl-mode-hook' (after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn CMD &optional DONT-SWITCH)" t nil)

(defalias 'run-swift 'swift3-mode:run-repl)

(autoload 'swift3-mode:send-region "swift3-mode-repl" "\
Send the current region to the inferior swift process.
START and END define region within current buffer

\(fn START END)" t nil)

(autoload 'swift3-mode:send-buffer "swift3-mode-repl" "\
Send the buffer to the Swift REPL process.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("swift3-mode-beginning-of-defun.el" "swift3-mode-font-lock.el"
;;;;;;	"swift3-mode-lexer.el" "swift3-mode-pkg.el") (23404 21740
;;;;;;	827769 517000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; swift3-mode-autoloads.el ends here
