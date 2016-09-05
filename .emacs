;;; package ---- Summary:
;;; Commentary:
;; ==== EMOJIFY  ====
(add-hook 'after-init-hook #'global-emojify-mode)

;; ===== INSERT TODAY'S DATE AND TIME
(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%m/%d/%Y-%H:%M:%S)")))
(defun insert-date () "Insert current date mm/dd/yyyy_H:M:S." (interactive) (insert (format-time-string "%m/%d/%Y-%H:%M:%S")))

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
    (set-frame-height (selected-frame) 47))
(if (window-system)
    (set-frame-width (selected-frame) 83))


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
(auto-complete)
(auto-complete-mode 1)

(show-paren-mode 1)
(hl-sexp-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
;;(desktop-save-mode 1) ; 0 for off
(winner-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (clues)))
 '(custom-safe-themes
   (quote
    ("90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "590759adc4a5bf7a183df81654cce13b96089e026af67d92b5eec658fb3fe22f" default)))
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(fringe-mode 4 nil (fringe))
 '(indicate-buffer-boundaries (quote left))
 '(line-number-mode nil)
 '(linum-format (quote dynamic))
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(nyan-mode t)
 '(package-selected-packages
   (quote
    (plantuml-mode ascii-art-to-unicode smex desktop-menu web-mode magit magit-filenotify magit-rockstar latex-preview-pane magic-latex-buffer pdf-tools tango-2-theme tango-plus-theme tangotango-theme tao-theme anti-zenburn-theme which-key undo-tree auctex minimal-session-saver session git-timemachine zeal-at-point dash-at-point linum-relative bm ac-helm gotham-theme dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme company-irony company-c-headers helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd twittering-mode rotate restart-emacs persp-mode nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(puml-plantuml-jar-path "~/.emacs.d/plantuml/plantuml.jar")
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 113 :width normal :size 15))))
 '(bm-face ((t (:background "orange" :foreground "Black"))))
 '(bm-fringe-face ((t (:background "gold" :foreground "Black"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#99d1ce"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit outline-1 :foreground "#5CACEE"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit outline-2 :foreground "#FF4500"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit outline-3 :foreground "#FF6103"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit outline-4 :foreground "#8B7500"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit outline-5 :foreground "#228B22"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit outline-6 :foreground "#008080"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit outline-7 :foreground "#CC681F"))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit outline-8 :foreground "#4B0082")))))

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

;; ==== hook ====
(add-hook 'c-mode-common-hook
	  (lambda()
	    (local-set-key (kbd "C-c <down>") 'hs-show-block)
	    (local-set-key (kbd "C-c <up>")  'hs-hide-block)
	    (local-set-key (kbd "C-c a <up>")    'hs-hide-all)
	    (local-set-key (kbd "C-c a <down>")  'hs-show-all)
	    (hs-minor-mode t)))

;; ==== parens ====
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

;; === documentation ===
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

;; ===== =====
(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))

(global-set-key (kbd "C-c k") 'kill-other-buffers)
(global-set-key (kbd "C-c s") 'desktop-save-in-desktop-dir)
(global-set-key (kbd "C-c r") 'desktop-read)

(global-set-key (kbd "C-c d") 'desktop-save-mode)
(global-set-key (kbd "C-c e") 'recover-session)
(global-set-key (kbd "C-x C-o") 'ff-find-other-file)

(defun browse-file-directory ()
  "Open the current file's directory however the OS would."
  (interactive)
  (if default-directory
      (browse-url-of-file (expand-file-name default-directory))
    (error "No `default-directory' to open")))

(global-undo-tree-mode)

;;(global-set-key (kbd "C-.") 'duplicate-line)
(require 'smex) ; Not needed if you use package.el
;; Can be omitted. This might cause a (minimal) delay
(smex-initialize) ; when Smex is auto-initialized on its first run.


(global-set-key (kbd "M-X") 'smex)
(global-set-key (kbd "M-m") 'smex-major-mode-commands)
;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(ansi-term "/usr/bin/sh")
(message "In theory, there is no difference between theory and practice. But, in practice, there is.")

;;(provide '.emacs);;; .emacs ends here
