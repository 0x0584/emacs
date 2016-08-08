;;; package ---- Summary:
;;; Commentary:

;;; ==== Emojify  ====
(add-hook 'after-init-hook #'global-emojify-mode)

;; ===== INSERT TODAY'S DATE AND TIME
(defun insert-current-date () (interactive)
       (insert (shell-command-to-string "echo -n $(date +%m/%d/%Y-%H:%M:%S)")))
(defun insert-date () "Insert current date mm/dd/yyyy_H:M:S." (interactive) (insert (format-time-string "%m/%d/%Y-%H:%M:%S")))
;; ===== Nyan Mode ====
(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq-default nyan-wavy-trail t)
(nyan-mode)
(nyan-start-animation)

;; ===== flycheck mode =====
(add-hook 'after-init-hook #'global-flycheck-mode)

;; ===== auto-complete-mode =====
					;(require 'auto-complete-mode)
					;(auto-complete)

;; ===== Set the highlight current line minor mode =====
;; In every buffer, the line which contains the cursor will be fully
;; highlighted
(global-hl-line-mode 1);; line selection

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

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;; ===== Set standard indent to 2 rather that 4 ====
(setq standard-indent 2)

;; ===== Make Text mode the default mode for new buffers =====
(setq major-mode 'text-mode)

;; ==== Height ====
(if (window-system)
    (set-frame-height (selected-frame) 60))

(global-set-key (kbd "S-C-l") 'linum-mode)

;; ==== Packages-source ====

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ;; ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; ==== Settings ====

(package-initialize)
(require 'rainbow-delimiters)
(require 'rainbow-blocks )
(require 'helm-config)
(show-paren-mode 1)
(rainbow-delimiters-mode 1)
(hl-sexp-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(desktop-save-mode 1) ; 0 for off
(auto-complete-mode 1)
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
 '(custom-enabled-themes (quote (gotham)))
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
 '(nyan-mode t)
 '(package-selected-packages
   (quote
    (gotham-theme dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme company-irony company-c-headers helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd twittering-mode rotate restart-emacs persp-mode nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 134 :width normal))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#99d1ce"))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit outline-1 :foreground "#5CACEE"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit outline-2 :foreground "#FF4500"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit outline-3 :foreground "#FF6103"))))
 '(rainbow-delimiters-depth-5-face ((t (:inherit outline-4 :foreground "#8B7500"))))
 '(rainbow-delimiters-depth-6-face ((t (:inherit outline-5 :foreground "#228B22"))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit outline-6 :foreground "#008080"))))
 '(rainbow-delimiters-depth-8-face ((t (:inherit outline-7 :foreground "#CC681F"))))
 '(rainbow-delimiters-depth-9-face ((t (:inherit outline-8 :foreground "#4B0082")))))


;;


;;
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

;; ==== ctags =====

(setq path-to-ctags "/opt/local/bin/ctags") ;; <- your ctags path here
(bind-key "C-c c" #'comment-dwim)
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "ctags -f %s -t -T -d --global --declarations --members -R %s" path-to-ctags (directory-file-name dir-name)))
  )

;; ===== code formatting using astyle ====

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

;; ===== Windowing =====
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

;; ==== Windows size shortkeys ====

(global-set-key (kbd "S-M-<left>") 'windmove-left)        
(global-set-key (kbd "S-M-<right>") 'windmove-right)     
(global-set-key (kbd "S-M-<up>") 'windmove-up)           
(global-set-key (kbd "S-M-<down>") 'windmove-down)      
(defalias 'qrr 'query-replace-regexp)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; =========
(defun new-shell ()
  (interactive)

  (let (
        (currentbuf (get-buffer-window (current-buffer)))
        (newbuf     (generate-new-buffer-name "*shell*"))
	)

    (generate-new-buffer newbuf)
    (set-window-dedicated-p currentbuf nil)
    (set-window-buffer currentbuf newbuf)
    (shell newbuf)))

(defun create-shell ()
  "creates a shell with a given name"
  (interactive);; "Prompt\n shell name:")
  (let ((shell-name (read-string "shell name: " nil)))
    (shell (concat "*" shell-name "*"))))

;;(provide '.emacs);;; .emacs ends here
