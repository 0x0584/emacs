;; ==== Emojify  ====
(add-hook 'after-init-hook #'global-emojify-mode)
;; ===== INSERT TODAY'S DATE AND TIME
  (defun insert-current-date () (interactive)
    (insert (shell-command-to-string "echo -n $(date +%m/%d/%Y-%H:%M:%S)")))
;; ===== Nyan Mode ====
(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)

(setq-default nyan-wavy-trail t)
(nyan-mode)
(nyan-start-animation)
;; ===== auto-complete-mode =====
;(require 'auto-complete-mode)
;(auto-complete)
;; ===== Set the highlight current line minor mode =====
;; In every buffer, the line which contains the cursor will be fully
;; highlighted

;; ==== persp-mode ====
;(eval-after-load "persp-mode-autoloads"
 ;  '((setq wg-morph-on nil) ;; switch off animation
  ;   (add-hook 'after-init-hook #'(lambda () (persp-mode 1)))))
;(with-eval-after-load "persp-mode-autoloads"
 ; (setq wg-morph-on nil) ;; switch off animation
  ;(add-hook 'after-init-hook #'(lambda () (persp-mode 1))))

;(unless (fboundp 'with-eval-after-load)
 ;(defmacro with-eval-after-load (file &rest body)
  ;(declare (indent 1) (debug t))
   ;`(eval-after-load ,file '(progn ,@body))))

(global-hl-line-mode 1);; line selection 
(winner-mode 1) ;; winner mode
;; ===== Set standard indent to 2 rather that 4 ====
(setq standard-indent 2)

;; ===== Make Text mode the default mode for new buffers =====
(setq default-major-mode 'text-mode)

;; ==== Height ====
(if (window-system)
  (set-frame-height (selected-frame) 60))

;; ==== MELPA ====
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; ==== Settings ====

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (gotham)))
 '(custom-safe-themes
   (quote
    ("590759adc4a5bf7a183df81654cce13b96089e026af67d92b5eec658fb3fe22f" default)))
 '(indicate-buffer-boundaries (quote left))
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (pacmacs xkcd twittering-mode rotate restart-emacs persp-mode nyan-mode inkpot-theme imgur hlinum gotham-theme gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed egg disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(send-mail-function (quote smtpmail-send-it))
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 134 :width normal)))))

;; ==== Keys ====
(global-set-key (kbd "S-M-<left>") 'windmove-left)        ; move to left window
(global-set-key (kbd "S-M-<right>") 'windmove-right)      ; move to right window
(global-set-key (kbd "S-M-<up>") 'windmove-up)            ; move to upper window
(global-set-key (kbd "S-M-<down>") 'windmove-down)        ; move to lower window
;; (defalias 'qrr 'query-replace-regexp)
    (global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
    (global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
    (global-set-key (kbd "S-C-<down>") 'shrink-window)
    (global-set-key (kbd "S-C-<up>") 'enlarge-window)
    (global-set-key (kbd "S-C-l") 'linum-mode)
;; ==== Move lines ====
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

;; ===== save\restore opened files ======
(desktop-save-mode 1) ; 0 for off
(defun insert-date () "Insert current date mm/dd/yyyy_H:M:S." (interactive) (insert (format-time-string "%m/%d/%Y-%H:%M:%S")))
;; ===== autoinsert =====
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
 
