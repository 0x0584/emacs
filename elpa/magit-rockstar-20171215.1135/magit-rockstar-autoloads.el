;;; magit-rockstar-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "magit-rockstar" "magit-rockstar.el" (23149
;;;;;;  44015 581877 946000))
;;; Generated autoloads from magit-rockstar.el

(autoload 'magit-rockstar "magit-rockstar" "\
Attempt to make you look like a rockstar programmer.
Want to hammer out commits at one commit per minute?
With this function you can!

\(fn FROM &optional OFFSET)" t nil)

(autoload 'magit-reshelve "magit-rockstar" "\
Change the author and committer dates of `HEAD' to DATE.

\(fn DATE)" t nil)

(autoload 'magit-debug-sections "magit-rockstar" "\
Print information about the current Magit buffer's sections.

\(fn)" t nil)

(autoload 'magit-uncommit-extend "magit-rockstar" "\
Reverse the change at point in `HEAD'.

\(fn &rest ARGS)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; magit-rockstar-autoloads.el ends here
