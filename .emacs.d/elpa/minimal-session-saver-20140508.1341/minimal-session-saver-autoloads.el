;;; minimal-session-saver-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "minimal-session-saver" "minimal-session-saver.el"
;;;;;;  (22461 34838 225030 724000))
;;; Generated autoloads from minimal-session-saver.el

(autoload 'minimal-session-saver-customize-set-hooks "minimal-session-saver" "\
Set function which adds or removes hooks.

SYMBOL and VALUE are passed to `custom-set-default'.

\(fn SYMBOL VALUE)" nil nil)

(let ((loads (get 'minimal-session-saver 'custom-loads))) (if (member '"minimal-session-saver" loads) nil (put 'minimal-session-saver 'custom-loads (cons '"minimal-session-saver" loads))))

(defvar minimal-session-saver-store-on-exit nil "\
Automatically store the session data every time you quit Emacs.

This value may also be a string representing a separate data file
to be used for store-on-exit session data.")

(custom-autoload 'minimal-session-saver-store-on-exit "minimal-session-saver" nil)

(defvar minimal-session-saver-install-short-aliases nil "\
Install short aliases such as `mss-load' for `minimal-session-saver-load'.")

(custom-autoload 'minimal-session-saver-install-short-aliases "minimal-session-saver" t)

(autoload 'minimal-session-saver-install-aliases "minimal-session-saver" "\
Install aliases outside the \"minimal-session-saver-\" namespace.

With optional negative ARG, uninstall aliases.

The following aliases will be installed

   mss-store                for   minimal-session-saver-store
   mss-load                 for   minimal-session-saver-load
   mss-store-frame          for   minimal-session-saver-store-frame
   mss-load-frame           for   minimal-session-saver-load-frame
   mss-add-buffer           for   minimal-session-saver-add-buffer
   mss-remove-buffer        for   minimal-session-saver-remove-buffer
   mss-mark-stored-buffers  for   minimal-session-saver-mark-stored-buffers

\(fn &optional ARG)" nil nil)

(when minimal-session-saver-install-short-aliases (minimal-session-saver-install-aliases))

(autoload 'minimal-session-saver-store "minimal-session-saver" "\
Save the list of currently visited files to PATH.

Optional FILE-LIST overrides the list of currently visited
files.

With universal prefix argument, enter PATH interactively.

\(fn &optional PATH FILE-LIST)" t nil)

(autoload 'minimal-session-saver-store-frame "minimal-session-saver" "\
Save currently visited files associated with the current frame to PATH.

Requires frame-bufs.el.

When PATH is not supplied, prompts to enter value interactively.

\(fn &optional PATH)" t nil)

(autoload 'minimal-session-saver-load "minimal-session-saver" "\
Load the saved set of visited files from PATH.

With universal prefix argument, enter PATH interactively.

\(fn &optional PATH)" t nil)

(autoload 'minimal-session-saver-load-frame "minimal-session-saver" "\
Load the saved set of visited files from PATH into a new frame.

Requires frame-bufs.el.

When PATH is not supplied, prompts to enter value interactively.

\(fn &optional PATH)" t nil)

(autoload 'minimal-session-saver-add-buffer "minimal-session-saver" "\
Add the current buffer to the saved set of visited files in PATH.

With universal prefix argument, enter PATH interactively.

BUFFER is optional, and defaults to the currently visited buffer.
When BUFFER is not visiting a file, there is no effect.

\(fn &optional PATH BUFFER)" t nil)

(autoload 'minimal-session-saver-remove-buffer "minimal-session-saver" "\
Remove the current buffer from the saved set of visited files in PATH.

With universal prefix argument, enter PATH interactively.

BUFFER is optional, and defaults to the currently visited buffer.
When the BUFFER is not visiting a file, or is visiting a file
which was not in the list, there is no effect.

\(fn &optional PATH BUFFER)" t nil)

(autoload 'minimal-session-saver-mark-stored-buffers "minimal-session-saver" "\
Mark buff-menu entries matching the saved set of visited files in PATH.

With universal prefix argument, enter PATH interactively.

Optional CHAR defaults to `buff-menu-marker-char' or ?> if that
variable is not defined.

Optional COL is a 0-indexed position in the line at which to draw
the requested marker character.  Default is 0.

This command can only be called from within a `buff-menu' buffer.

\(fn &optional PATH CHAR COL)" t nil)

(autoload 'minimal-session-saver-kill-emacs-hook "minimal-session-saver" "\
Optionally save session data at shutdown time.

This function has not effect unless the variable
`minimal-session-saver-store-on-exit' is non-nil.

\(fn)" nil nil)

(when minimal-session-saver-store-on-exit (add-hook 'kill-emacs-hook 'minimal-session-saver-kill-emacs-hook))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; minimal-session-saver-autoloads.el ends here
