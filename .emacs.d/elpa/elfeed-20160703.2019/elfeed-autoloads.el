;;; elfeed-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (elfeed-export-opml elfeed-load-opml elfeed elfeed-update)
;;;;;;  "elfeed" "elfeed.el" (22413 8103 711555 590000))
;;; Generated autoloads from elfeed.el

(autoload 'elfeed-update "elfeed" "\
Update all the feeds in `elfeed-feeds'.

\(fn)" t nil)

(autoload 'elfeed "elfeed" "\
Enter elfeed.

\(fn)" t nil)

(autoload 'elfeed-load-opml "elfeed" "\
Load feeds from an OPML file into `elfeed-feeds'.
When called interactively, the changes to `elfeed-feeds' are
saved to your customization file.

\(fn FILE)" t nil)

(autoload 'elfeed-export-opml "elfeed" "\
Export the current feed listing to OPML-formatted FILE.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (elfeed-search-desktop-restore elfeed-search-bookmark-handler)
;;;;;;  "elfeed-search" "elfeed-search.el" (22413 8104 163557 831000))
;;; Generated autoloads from elfeed-search.el

(autoload 'elfeed-search-bookmark-handler "elfeed-search" "\
Jump to an elfeed-search bookmarked location.

\(fn RECORD)" nil nil)

(autoload 'elfeed-search-desktop-restore "elfeed-search" "\
Restore the state of an elfeed-search buffer on desktop restore.

\(fn FILE-NAME BUFFER-NAME SEARCH-FILTER)" nil nil)

(add-to-list 'desktop-buffer-mode-handlers '(elfeed-search-mode . elfeed-search-desktop-restore))

;;;***

;;;### (autoloads nil nil ("elfeed-curl.el" "elfeed-db.el" "elfeed-lib.el"
;;;;;;  "elfeed-log.el" "elfeed-pkg.el" "elfeed-show.el" "xml-query.el")
;;;;;;  (22413 8104 501534 748000))

;;;***

(provide 'elfeed-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elfeed-autoloads.el ends here
