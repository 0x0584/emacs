;;; svg-clock-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "svg-clock" "svg-clock.el" (22484 42740 423605
;;;;;;  417000))
;;; Generated autoloads from svg-clock.el

(autoload 'svg-clock-insert "svg-clock" "\
Insert a self-updating image displaying an analog clock at point.
Optional argument SIZE the size of the clock in pixels.
Optional argument FOREGROUND the foreground color.
Optional argument BACKGROUND the background color.
Optional argument OFFSET the offset in seconds between current and displayed
time.

\(fn &optional SIZE FOREGROUND BACKGROUND OFFSET)" nil nil)

(autoload 'svg-clock "svg-clock" "\
Start/stop the svg clock.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; svg-clock-autoloads.el ends here
