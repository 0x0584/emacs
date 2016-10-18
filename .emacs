;;; package ---- Summary:
;;; Commentary:
;;; Code:
;; ==== EMOJIFY  ====
;;(add-hook 'after-init-hook #'global-emojify-mode)

;; ===== INSERT TODAY'S DATE AND TIME ====
;;(defun insert-current-date () (interactive)
;;       (insert (shell-command-to-string "echo -n $(date +%m/%d/%Y-%H:%M:%S)")))
(defun insert-date-time ()
  "Insert current date mm/dd/yyyy_H:M:S."
  (interactive)
  (insert
   (format-time-string "%m/%d/%Y-%H:%M:%S")))

(defun insert-time ()
  "Insert current time H:M:S."
  (interactive)
  (insert
   (format-time-string "%H:%M:%S")))
(defun insert-date ()
  "Insert current date mm/dd/yyyy."
  (interactive)
  (insert
   (format-time-string "%m/%d/%Y")))

;; ===== NYAN MODE ====
(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq-default nyan-wavy-trail t)
(nyan-mode)
(nyan-start-animation)

;; ===== FLYCHECK MODE =====
(add-hook 'after-init-hook #'global-flycheck-mode)


;; ===== SET THE HIGHLIGHT CURRENT LINE MINOR MODE =====
;; In every buffer, the line which contains the cursor will be fully
;; highlighted
(global-hl-line-mode 1);; line selection

;; ==== PERSP-MODE ====
;;(eval-after-load "persp-mode-autoloads"
;;  '((setq wg-morph-on nil) ;; switch off animation
;;   (add-hook 'after-init-hook #'(lambda () (persp-mode 1)))))
;;(with-eval-after-load "persp-mode-autoloads"
;; (setq wg-morph-on nil) ;; switch off animation
;;(add-hook 'after-init-hook #'(lambda () (persp-mode 1))))

;;(unless (fboundp 'with-eval-after-load)
;;(defmacro with-eval-after-load (file &rest body)
;;(declare (indent 1) (debug t))
;;`(eval-after-load ,file '(progn ,@body))))



;; ===== SET STANDARD INDENT TO 2 RATHER THAT 4 ====
(setq standard-indent 2)

;; ===== MAKE TEXT MODE THE DEFAULT MODE FOR NEW BUFFERS =====
(setq major-mode 'text-mode)

;; ==== HEIGHT ====
(if (window-system)
    (set-frame-height (selected-frame) 35))
(if (window-system)
    (set-frame-width (selected-frame) 82))


;; ==== PACKAGES-SOURCE ====

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ;; ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; ==== SETTINGS ====
(package-initialize)
(require 'rainbow-blocks )

;; ===== RAINBOW-DELIMITER =====
(require 'rainbow-delimiters)
(rainbow-delimiters-mode 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; ==== HELM ====
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode t)
;;(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
;;(global-set-key (kbd "C-x b") 'helm-mini);
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)
;;(setq helm-M-x-fuzzy-match t)

;; ===== AUTO-COMPLETE-MODE =====
;;(require 'auto-complete-mode)
(auto-complete-mode 1)
(auto-complete)
(global-undo-tree-mode)
(show-paren-mode 1)
(hl-sexp-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;;(desktop-save-mode 1) ; 0 for off
(winner-mode 1)


;; ==== SHELL ====
(setenv "SHELL" (expand-file-name "/usr/bin/sh"))
;;(ansi-term "/usr/bin/sh")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (clues)))
 '(custom-safe-themes
   (quote
    ("603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "5cd0afd0ca01648e1fff95a7a7f8abec925bd654915153fb39ee8e72a8b56a1f" "a3132bd39a977ddde4c002f8bd0ef181414c3fbe9228e3643b999491192680ad" "90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "590759adc4a5bf7a183df81654cce13b96089e026af67d92b5eec658fb3fe22f" default)))
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/arfed/Workspace/morse-code-master/src")))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(flycheck-clang-include-path (quote ("/home/arfed/Workspace/morse-code-master")))
 '(flycheck-clang-includes nil)
 '(global-ede-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(line-number-mode nil)
 '(linum-format (quote dynamic))
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(nyan-mode t)
 '(package-selected-packages
   (quote
    (mu4e-maildirs-extension hide-comnt super-save ggtags desktop+ multiple-cursors ac-html ac-clang flycheck-css-colorguard flymake-css org-page all-the-icons neotree ox-pandoc pandoc pandoc-mode org-download langtool rich-minority diminish auto-complete-auctex flylisp c-eldoc term+ markdown-mode+ org-commentary org-doing org-readme org-ref org-webpage orgtbl-ascii-plot spaces ssh svg svg-clock swap-buffers sx tuareg vdiff vline vmd-mode org-pandoc highlight highlight-quoted highlight-escape-sequences highlight-operators highlight-blocks plantuml-mode showkey ascii-art-to-unicode smex desktop-menu web-mode magit magit-filenotify magit-rockstar latex-preview-pane magic-latex-buffer pdf-tools tango-2-theme tango-plus-theme tangotango-theme tao-theme anti-zenburn-theme which-key undo-tree auctex git-timemachine zeal-at-point dash-at-point linum-relative bm ac-helm gotham-theme dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme company-irony company-c-headers helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd twittering-mode rotate restart-emacs persp-mode nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(puml-plantuml-jar-path "~/.emacs.d/plantuml/plantuml.jar")
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   (quote
    ((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c"))))
 '(vc-annotate-very-old-color "#23733c")
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 113 :width normal :size 15))))
 '(bm-face ((t (:background "orange" :foreground "Black"))))
 '(bm-fringe-face ((t (:background "gold" :foreground "Black")))))
;; '(rainbow-delimiters-depth-1-face ((t (:foreground "#99d1ce"))))
;; '(rainbow-delimiters-depth-2-face ((t (:inherit outline-1 :foreground "#5CACEE"))))
;; '(rainbow-delimiters-depth-3-face ((t (:inherit outline-2 :foreground "#FF4500"))))
;; '(rainbow-delimiters-depth-4-face ((t (:inherit outline-3 :foreground "#FF6103"))))
;; '(rainbow-delimiters-depth-5-face ((t (:inherit outline-4 :foreground "#8B7500"))))
;; '(rainbow-delimiters-depth-6-face ((t (:inherit outline-5 :foreground "#228B22"))))
;; '(rainbow-delimiters-depth-7-face ((t (:inherit outline-6 :foreground "#008080"))))
;; '(rainbow-delimiters-depth-8-face ((t (:inherit outline-7 :foreground "#CC681F"))))
;; '(rainbow-delimiters-depth-9-face ((t (:inherit outline-8 :foreground "#4B0082"))))


;; ==== MOVE LINES ====
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)

(put 'narrow-to-page 'disabled nil)

;; ===== AUTOINSERT =====
(setq auto-insert-alist
      '(((ruby-mode . "Ruby program") nil
         "#!/usr/bin/env ruby\n\n"
         "# File: " (file-name-nondirectory buffer-file-name) "\n"
         "# Time-stamp: <>\n"
         "# Copyright (C) " (substring (current-time-string) -4) " " auto-insert-copyright "\n"
         "# Description: " _ "\n\n")
	((emacs-lisp-mode . "Emacs lisp mode") nil
         ";;; " (file-name-nondirectory buffer-file-name) " --- " _ "\n\n"
         ";; Time-stamp: <>\n"
         ";; Copyright (C) " (substring (current-time-string) -4) " " auto-insert-copyright "\n\n"
         ";;; Commentary:\n\n"
         ";;; Code:\n\n"
         ";;; " (file-name-nondirectory buffer-file-name) " ends here\n")
        ((c-mode . "C program") nil
         
         "/**************************************************************************\\ \n"
         " File: " (file-name-nondirectory buffer-file-name) "\n\n"
	 "The MIT License (MIT)\n

Copyright (c)" (substring (current-time-string) -4)" - Anas Rchid

Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the ""Software""), to 
deal in the Software without restriction, including without limitation the 
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or 
sell copies of the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in 
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM
, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
THE SOFTWARE.

 Last modicication:						
	"(insert-date)"					
								
\\**************************************************************************/\n"
	" \n\n")
        ((shell-mode . "Shell script") nil
         "#!/bin/bash\n\n"
         " # File: " (file-name-nondirectory buffer-file-name) "\n"
         " # Time-stamp: <>\n"
         " # Copyright (C) " (substring (current-time-string) -4) " " auto-insert-copyright "\n"
         " # Description: " _ "\n\n")))


;; ==== CTAGS =====

(setq path-to-ctags "/opt/local/bin/ctags") ;; <- your ctags path here
(bind-key "C-c c" #'comment-dwim)
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "ctags -f %s -t -T -d --global --declarations --members -R %s" path-to-ctags (directory-file-name dir-name)))
  )

;; ===== CODE FORMATTING USING ASTYLE ====
(defun ccc-astyle ()
  "Format C++ code with astyle."
  (interactive)
  (let (beg end)
    (if (region-active-p)
        (setq beg (region-beginning)
              end (region-end))
      (setq beg (point-min)
            end (point-max)))
    (shell-command-on-region
     beg end
     "astyle --style=otbs --indent=spaces=2 -U --pad-oper --pad-paren-out --add-brackets -k3"
     nil t)))


;; ===== WINDOWING =====
(defun window-split-toggle ()
  "Toggle between horizontal and vertical split with two windows."
  (interactive)
  (if (> (length (window-list)) 2)
      (error "Can't toggle with more than 2 windows!")
    (let ((func (if (window-full-height-p)
                    #'split-window-vertically
                  #'split-window-horizontally)))
      (delete-other-windows)
      (funcall func)
      (save-selected-window
        (other-window 1)
	;;(delete-window)
        (switch-to-buffer (other-buffer))))))

(defun my-split-root-window (size direction)
  (split-window (frame-root-window)
                (and size (prefix-numeric-value size))
                direction))

(defun my-split-root-window-below (&optional size)
  (interactive "P")
  (my-split-root-window size 'below))
(defun my-split-root-window-right (&optional size)
  (interactive "P")
  (my-split-root-window size 'right))
(defun my-split-root-window-above (&optional size)
  (interactive "P")
  (my-split-root-window size 'above))
(defun my-split-root-window-left (&optional size)
  (interactive "P")
  (my-split-root-window size 'left))

(defalias 'wind-below 'my-split-root-window-below)
(defalias 'wind-above 'my-split-root-window-above)
(defalias 'wind-right 'my-split-root-window-right)
(defalias 'wind-left 'my-split-root-window-left)
(defalias 'window-split-toggle 'wind-tog)
(global-set-key (kbd "C-c w <down>") 'wind-below)
(global-set-key (kbd "C-c w <up>") 'wind-above)
(global-set-key (kbd "C-c w <left>") 'wind-left)
(global-set-key (kbd "C-c w <right>") 'wind-right)


;; ==== WINDOWS SIZE SHORTKEYS ====

(global-set-key (kbd "S-M-<left>") 'windmove-left)        
(global-set-key (kbd "S-M-<right>") 'windmove-right)     
(global-set-key (kbd "S-M-<up>") 'windmove-up)           
(global-set-key (kbd "S-M-<down>") 'windmove-down)      
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; ==== LINUM SHORTKEY ====
(global-set-key (kbd "S-C-l") 'linum-mode)


;; ==== SHELL SETUP ====
(defun new-shell ()
  (interactive)

  (let (
        (currentbuf (get-buffer-window (current-buffer)))
        (newbuf     (generate-new-buffer-name "*shell*")))

    (generate-new-buffer newbuf)
    (set-window-dedicated-p currentbuf nil)
    (set-window-buffer currentbuf newbuf)
    (shell newbuf)))

(defun create-shell ()
  "Create a shell with a given name."
  (interactive);; "Prompt\n shell name:")
  (let ((shell-name (read-string "shell name: " nil)))
    (shell (concat "*" shell-name "*"))))

(defun named-term (name)
  (interactive "sName: ")
  (ansi-term "/usr/bin/sh" name))

(global-set-key (kbd "C-x t") 'named-term)

(defun m-term-right ()
  "Add terminal on the right."
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1)
  (ansi-term "/usr/bin/sh"))

(defun m-term-below ()
  "Add terminal on the bottom."
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1)
  (ansi-term "/usr/bin/sh"))

(global-set-key (kbd "C-x <C-down>") 'm-term-below)
(global-set-key (kbd "C-x <C-right>") 'm-term-right)
;; (load-theme 'light-blue t t)
;; (load-theme 'tango t t)
;; (add-hook 'buffer-list-update-hook
;;           (lambda ()
;;             (cond
;;              ((and (eq major-mode 'c-mode)
;;                    (not (memq 'light-blue custom-enabled-themes)))
;;               (disable-theme 'tango)
;;               (enable-theme 'light-blue))
;;              ((and (eq major-mode 'perl-mode)
;;                    (not (memq 'tango custom-enabled-themes)))
;;               (disable-theme 'light-blue)
;;               (enable-theme 'tango)))))


;; ==== HIGHLIGHT LINES ====
(defun find-overlays-specifying (prop pos)
  (let ((overlays (overlays-at pos))
        found)
    (while overlays
      (let ((overlay (car overlays)))
        (if (overlay-get overlay prop)
            (setq found (cons overlay found))))
      (setq overlays (cdr overlays)))
    found))

(defun highlight-or-dehighlight-line ()
  (interactive)
  (if (find-overlays-specifying
       'line-highlight-overlay-marker
       (line-beginning-position))
      (remove-overlays (line-beginning-position) (+ 1 (line-end-position)))
    (let ((overlay-highlight (make-overlay
                              (line-beginning-position)
                              (+ 1 (line-end-position)))))
      (overlay-put overlay-highlight 'face '(:background "gray10"))
      (overlay-put overlay-highlight 'line-highlight-overlay-marker t))))


(global-set-key [f8] 'highlight-or-dehighlight-line)

(defun remove-all-highlight ()
  (interactive)
  (remove-overlays (point-min) (point-max))
  )
(global-set-key [f9] 'remove-all-highlight)

(require 'bm)
(global-set-key (kbd "<f4>") 'bm-remove-all-current-buffer)
(global-set-key (kbd "<f5>") 'bm-toggle)
(global-set-key (kbd "<f6>") 'bm-previous)
(global-set-key (kbd "<f7>") 'bm-next)


;; ==== HOOK ====
(add-hook 'c-mode-common-hook
	  (lambda()
	    (local-set-key (kbd "C-c <down>") 'hs-show-block)
	    (local-set-key (kbd "C-c <up>")  'hs-hide-block)
	    (local-set-key (kbd "C-c a <up>")    'hs-hide-all)
	    (local-set-key (kbd "C-c a <down>")  'hs-show-all)
	    (hs-minor-mode t)))


;; ==== PARENS ====
(defun surround-with-parens ()
  (interactive)
  (save-excursion
    (goto-char (region-beginning))
    (insert "("))
  (goto-char (region-end))
  (insert ")"))

(defun delete-surrounded-parens ()
  (interactive)
  (let ((beginning (region-beginning))
        (end (region-end)))
    (cond ((not (eq (char-after beginning) ?\())
           (error "Character at region-begin is not an open-parenthesis"))
          ((not (eq (char-before end) ?\)))
           (error "Character at region-end is not a close-parenthesis"))
          ((save-excursion
             (goto-char beginning)
             (forward-sexp)
             (not (eq (point) end)))
           (error "Those parentheses are not matched"))
          (t (save-excursion
               (goto-char end)
               (delete-backward-char 1)
               (goto-char beginning)
               (delete-char 1))))))


(global-set-key (kbd "C-c p") 'surround-with-parens)
(global-set-key (kbd "C-c o") 'delete-surrounded-parens)

;; === DOCUMENTATION ===
(dolist (hook
         '(c-mode-hook
           c++-mode-hook))
  (add-hook hook
	    (lambda ()
	      (local-set-key (kbd "C-h d")
                             (lambda ()
                               (interactive)
                               (manual-entry (current-word)))))))
(global-set-key (kbd "<f2>") 'zeal-at-point)

;; ===== KILL BUFFERS =====
(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))

(global-set-key (kbd "C-c k") 'kill-other-buffers)

;; ==== DESKTOP MODE ====
(require 'desktop+)
(global-set-key (kbd "C-c s") 'desktop+-create)
(global-set-key (kbd "C-c S") 'desktop+-create-auto)
(global-set-key (kbd "C-c l") 'desktop+-load)
(global-set-key (kbd "C-c L") 'desktop+-load-auto)
(global-set-key (kbd "C-c r") 'recover-session)


;;==== BROWSE SOURCE ====

(defun browse-file-directory ()
  "Open the current file's directory however the OS would."
  (interactive)
  (if default-directory
      (browse-url-of-file (expand-file-name default-directory))
    (error "No `default-directory' to open")))

(global-set-key (kbd "C-x M-d") 'browse-file-directory)

(global-set-key (kbd "C-x C-o") 'ff-find-other-file)


(load "c-eldoc")
(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
;;(global-set-key (kbd "C-.") 'duplicate-line)
(require 'smex) ; Not needed if you use package.el
;; Can be omitted. This might cause a (minimal) delay
(smex-initialize) ; when Smex is auto-initialized on its first run.


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-m") 'smex-major-mode-commands)
;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; ==== ORG-MODE ====
(setq org-todo-keywords
      '((sequence "TODO(t)" "IN-PROGRESS(s!)" "|" "PENDING(p!)" "DONE(d!/!)" "CANCELED(c!/!)" "UNDER-REVISING(u)")))

;; -- Display images in org mode
;; enable image mode first
(iimage-mode)
;; add the org file link format to the iimage mode regex
(add-to-list 'iimage-mode-image-regex-alist
  (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex "\\)\\]")  1))
;;  add a hook so we can display images on load
(add-hook 'org-mode-hook '(lambda () (org-turn-on-iimage-in-org)))
;; function to setup images for display on load
(defun org-turn-on-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (turn-on-iimage-mode)
  (set-face-underline-p 'org-link nil))
;; function to toggle images in a org bugger
(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (call-interactively 'iimage-mode))
(setq org-image-actual-width (/ (display-pixel-width) 3))
;; (define-key org-mode-map (kbd "C-S-a") 'org-archive-subtree)
;; ==== SELECTION ====
(defun select-line ()
  "Select the active line."
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))

(defun select-paragraph ()
  "Select the active block of text between blank lines."
  (interactive)
  (let (-parag)
    (progn
      (if (re-search-backward "\n[ \t]*\n" nil "move")
          (progn (re-search-forward "\n[ \t]*\n")
                 (setq -parag (point)))
        (setq -parag (point)))
      (re-search-forward "\n[ \t]*\n" nil "move"))
    (set-mark -parag)))

(defun select-in-delim ()
  (interactive)
  (let (a
        b
        (target "^\"\'()[]"))
    (if (not (use-region-p))
	(progn (skip-chars-backward target)
	       (setq a (point)))
      (setq a (region-beginnig)))
    (skip-chars-forward target)
    (setq b (point))
    (set-mark a)))

(global-set-key (kbd "M-4") 'select-in-delim)
(global-set-key (kbd "M-5") 'select-line)
(global-set-key (kbd "M-6") 'select-paragraph)
(global-set-key (kbd "C-c h") 'highlight-blocks-mode)

(global-set-key (kbd "C-c v") (lambda ()
                                (interactive)
                                (revert-buffer t t t)
                                (message "buffer is reverted")))

(global-set-key (kbd "C-x !") 'restart-emacs)

(diminish 'projectile-mode)
(require 'rich-minority)
(rich-minority-mode 1)
(setf rm-blacklist "")

(defvar auto-minor-mode-alist ()
  "Alist of filename patterns vs correpsonding minor mode functions, see `auto-mode-alist'
All elements of this alist are checked, meaning you can enable multiple minor modes for the same regexp.")
(defun enable-minor-mode-based-on-extension ()
  "check file name against auto-minor-mode-alist to enable minor modes
the checking happens for all pairs in auto-minor-mode-alist"
  (when buffer-file-name
    (let ((name buffer-file-name)
          (remote-id (file-remote-p buffer-file-name))
          (alist auto-minor-mode-alist))
      ;; Remove backup-suffixes from file name.
      (setq name (file-name-sans-versions name))
      ;; Remove remote file name identification.
      (when (and (stringp remote-id)
                 (string-match-p (regexp-quote remote-id) name))
        (setq name (substring name (match-end 0))))
      (while (and alist (caar alist) (cdar alist))
        (if (string-match (caar alist) name)
            (funcall (cdar alist) 1))
        (setq alist (cdr alist))))))

(add-hook 'find-file-hook 'enable-minor-mode-based-on-extension)

(define-minor-mode minor-mode-blackout-mode
  "Hides minor modes from the mode line."
  t)

(catch 'done
  (mapc (lambda (x)
          (when (and (consp x)
                     (equal (cadr x) '("" minor-mode-alist)))
            (let ((original (copy-sequence x)))
              (setcar x 'minor-mode-blackout-mode)
              (setcdr x (list "" original)))
            (throw 'done t)))
        mode-line-modes))

(global-set-key (kbd "C-c m") 'minor-mode-blackout-mode)

;; ==== NEOTREE ====
;;(setq neo-theme (if window-system 'icons 'arrow))

;; ==== EMACS BACKUP ====
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.



;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; 
;; ==== DESKTOP-PLUS ====
;;(desktop+/special-buffer-handlers)
(set-frame-parameter (selected-frame) 'buffer-predicate #'buffer-file-name)

(global-set-key (kbd "C-c ;") 'hide/show-comments-toggle)
;; ==== QUOTE ====
(message "In theory, there is no difference between theory and practice. But, in practice, there is.")
(put 'narrow-to-region 'disabled nil)

;;(provide '.emacs);;; .emacs ends here
