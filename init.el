;;; package ---- Summary:
;;; Commentary:
;;; Code:
;; ==== EMOJIFY  ====
;;(add-hook 'after-init-hook #'global-emojify-mode)

;; ===== INSERT TODAY'S DATE AND TIME ====
(defun insert-current-date () 
  (interactive)
  (insert (shell-command-to-string "echo -n $(date +%m/%d/%Y-%H:%M:%S)")))
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

(add-to-list 'load-path "~/.emacs.d/nyan-mode")
(require 'nyan-mode)
(setq-default nyan-wavy-trail t)
(nyan-mode)
(nyan-start-animation)

;; (if (/= 1 detect-display)
;;     ((add-to-list 'load-path "~/.emacs.d/nyan-mode")
;;      (require 'nyan-mode)
;;      (setq-default nyan-wavy-trail t)
;;      (nyan-mode)
;;      (nyan-start-animation)))

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
;;(require 'helm-config)
;;(helm-mode 1)
;;(helm-autoresize-mode t)
;;(global-set-key (kbd "M-x") 'helm-M-x)
;;(global-set-key (kbd "M-y") 'helm-show-kill-ring)
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
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("d83bd04930314c053753d199873ee36c54bf221fe4b8a0938098f41eaa9a22ae" "b550fc3d6f0407185ace746913449f6ed5ddc4a9f0cf3be218af4fb3127c7877" "ed8cf6d52a2ba9ed7a29a8aac81d83c362a9b62f48b558932a77130163fe9972" "12b7ed9b0e990f6d41827c343467d2a6c464094cbcc6d0844df32837b50655f9" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "12ab69d8db952a79aa079da812c147ae551f6427448f2564e29f910bcef7bf93" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "5cd0afd0ca01648e1fff95a7a7f8abec925bd654915153fb39ee8e72a8b56a1f" "a3132bd39a977ddde4c002f8bd0ef181414c3fbe9228e3643b999491192680ad" "90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "590759adc4a5bf7a183df81654cce13b96089e026af67d92b5eec658fb3fe22f" default)))
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/arfed/Workspace/morse-code-master/src")))
 '(electric-pair-mode t)
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#202020")
 '(flycheck-clang-include-path
   (quote
    ("/home/arfed/Workspace/morse-code-master" "/home/arfed/Workspace/sdku-gen/include")))
 '(flycheck-clang-includes nil)
 '(fringe-mode 10 nil (fringe))
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
 '(org-agenda-files
   (quote
    ("~/orged/LP-DBA/gl.org" "/home/arfed/orged/MASTER.org" "/home/arfed/orged/Q.org" "/home/arfed/orged/emails.org" "/home/arfed/orged/ghiwan.org" "/home/arfed/orged/led-zeppelin.org" "/home/arfed/orged/todo.org")))
 '(org-plantuml-jar-path "/home/arfed/.emacs.d/plantuml/plantuml.jar")
 '(package-selected-packages
   (quote
    (geben cyberpunk-theme awk-it smartparens tern zenburn-theme yascroll visual-regexp vkill minor-mode-hack symon magithub function-args bongo emms smart-mode-line smart-mode-line-powerline-theme helm-dictionary define-word dictionary nhexl-mode quickrun popwin ace-popup-menu popup-complete popup-kill-ring popup-switcher basic-c-compile runtests rvm rsense ac-inf-ruby flymake-ruby rubocop yari helm-rubygems-local helm-rubygems-org helm-spotify howdoi howm omniref ruby-block ruby-compilation ruby-dev ruby-electric ruby-factory ruby-hash-syntax ruby-refactor ruby-tools helm-robe robe swift3-mode benchmark-init ivy-youtube sudoku zweilight-theme helm-gitignore hide-comnt super-save ggtags desktop+ ac-html ac-clang flycheck-css-colorguard flymake-css all-the-icons ox-pandoc pandoc pandoc-mode langtool rich-minority diminish auto-complete-auctex flylisp c-eldoc term+ markdown-mode+ org-commentary org-doing org-readme orgtbl-ascii-plot spaces ssh svg svg-clock swap-buffers sx vline vmd-mode org-pandoc highlight highlight-quoted highlight-escape-sequences highlight-operators highlight-blocks plantuml-mode ascii-art-to-unicode smex desktop-menu magit-filenotify magit-rockstar latex-preview-pane magic-latex-buffer tango-2-theme tangotango-theme anti-zenburn-theme auctex git-timemachine zeal-at-point dash-at-point linum-relative bm ac-helm dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd rotate nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(plantuml-jar-path "/home/arfed/.emacs.d/plantuml/plantuml.jar")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(puml-plantuml-jar-path "~/.emacs.d/plantuml/plantuml.jar")
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(sml/mode-width
   (if
       (eq
	(powerline-current-separator)
	(quote arrow))
       (quote right)
     (quote full)))
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active1)
		   (quote sml/global))))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (car powerline-default-separator-dir)))
		   (quote sml/global)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
		  (quote display)
		  (funcall
		   (intern
		    (format "powerline-%s-%s"
			    (powerline-current-separator)
			    (cdr powerline-default-separator-dir)))
		   (quote powerline-active2)
		   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(timeclock-mode-line-display nil)
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
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal :size 15))))
 '(bm-face ((t (:background "orange" :foreground "Black"))))
 '(bm-fringe-face ((t (:background "gold" :foreground "Black"))))
 '(font-lock-comment-face ((t (:foreground "#245361" :slant oblique)))))
;; '(rainbow-delimiters-depth-1-face ((t (:foreground "#99d1ce"))))
;; '(rainbow-delimiters-depth-2-face ((t (:inherit outline-1 :foreground "#5CACEE"))))
;; '(rainbow-delimiters-depth-3-face ((t (:inherit outline-2 :foreground "#FF4500"))))
;; '(rainbow-delimiters-depth-4-face ((t (:inherit outline-3 :foreground "#FF6103"))))
;; '(rainbow-delimiters-depth-5-face ((t (:inherit outline-4 :foreground "#8B7500"))))
;; '(rainbow-delimiters-depth-6-face ((t (:inherit outline-5 :foreground "#228B22"))))
;; '(rainbow-delimiters-depth-7-face ((t (:inherit outline-6 :foreground "#008080"))))
;; '(rainbow-delimiters-depth-8-face ((t (:inherit outline-7 :foreground "#CC681F"))))
;; '(rainbow-delimiters-depth-9-face ((t (:inherit outline-8 :foreground "#4B0082"))))


(require 'company)
(add-hook 'global-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)

;; (add-hook 'c++-mode-hook 'irony-mode)
;; (add-hook 'c-mode-hook 'irony-mode)
;; (add-hook 'objc-mode-hook 'irony-mode)

;; (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)


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

(global-set-key (kbd "M-p") 'move-line-up)
(global-set-key (kbd "M-n") 'move-line-down)

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
        ;; ((c-mode . "C program") nil
	
	;;          "/**************************************************************************\\ \n"
	;;          " File: " (file-name-nondirectory buffer-file-name) "\n\n"
	;; 	 "The MIT License (MIT)\n

	;; Copyright (c)" (substring (current-time-string) -4)" - Anas Rchid

	;; Permission is hereby granted, free of charge, to any person obtaining a copy
	;;  of this software and associated documentation files (the ""Software""), to 
	;; deal in the Software without restriction, including without limitation the 
	;; rights to use, copy, modify, merge, publish, distribute, sublicense, and/or 
	;; sell copies of the Software, and to permit persons to whom the Software is 
	;; furnished to do so, subject to the following conditions:

	;; The above copyright notice and this permission notice shall be included in 
	;; all copies or substantial portions of the Software.

	;; THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
	;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
	;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
	;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
	;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM
	;; , OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
	;; THE SOFTWARE.

	;;  Last modicication:						
	;; 	"(insert-date)"					
	
	;; \\**************************************************************************/\n"
	;; 	" \n\n")
	((c-mode . "C program") nil
	 "/* FILE: \t" (file-name-nondirectory buffer-file-name) "\n"
	 " * AUTHOR: \tANAS RCHID\n"
	 " * DESCRIPTION:\tNULL\n"
	 " * \n"
	 " * CREATION:\t" (insert-date) "\n"
	 " * MODIFIED:\t" (insert-date) " */\n"
	 "/* ---------- headers ---------- */\n"
	 "#include <stdio.h>\n#include<stdlib.h>\n\n"
	 "/* ---------- types ---------- */\n\n"
	 "/* ---------- prototypes ---------- */\n\n"
	 "/* ---------- main entry ---------- */\n"
	 "int main(int argc, char **argv) {\n"
	 "  return 0;\n"
	 "}\n\n"
	 "/* ---------- implementations ---------- */\n"
	 )
        ((shell-mode . "Shell script") nil
         "#!/bin/bash\n\n"
         " # File: " (file-name-nondirectory buffer-file-name) "\n"
         " # Time-stamp: <>\n"
         " # Copyright (C) " (substring (current-time-string) -4) " " auto-insert-copyright "\n"
         " # Description: " _ "\n\n")))


;; ==== etags ====
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (eshell-command 
   (format "find . -name '*.c' -print -or -name '*.h' -print | xargs etags --append" dir-name)))

(defadvice find-tag (around refresh-etags activate)
  "Rerun etags and reload tags if tag not found and redo find-tag.              
   If buffer is modified, ask about save before running etags."
  (let ((extension (file-name-extension (buffer-file-name))))
    (condition-case err
	ad-do-it
      (error (and (buffer-modified-p)
		  (not (ding))
		  (y-or-n-p "Buffer is modified, save it? ")
		  (save-buffer))
	     (er-refresh-etags extension)
	     ad-do-it))))

(defun er-refresh-etags (&optional extension)
  "Run etags on all peer files in current dir and reload them silently."
  (interactive)
  (shell-command (format "etags *.%s" (or extension "el")))
  (let ((tags-revert-without-query t))  ; don't query, revert silently          
    (visit-tags-table default-directory nil)))

(global-set-key (kbd "C-;") 'helm-etags-select)
(global-set-key (kbd "C-c C-f") 'find-tag)
(global-set-key (kbd "C-c /") 'tags-query-replace)
(global-set-key (kbd "<f12>") 'info)
(global-set-key (kbd "C-c a") 'org-agenda)


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

;; (defun c-reformat-buffer()
;;     (interactive)
;;     (save-buffer)
;;     (setq sh-indent-command
;; 	  (concat "indent -nbad -bap -bbo -nbc -br -brs "
;; 		  "-brf -c33 -cd33 -ncdb -ce -ci2 -cli0 "
;; 		  "-cp33 -cs -d0 -di1 -nfc1 -nfca -hnl "
;; 		  "-i2 -ip0 -l75 -lp -npcs -nprs -npsl "
;; 		  "-saf -sai -saw -nsc -nsob -nss -ppi2 "
;; 		  buffer-file-name))
;;     (mark-whole-buffer)
;;     (universal-argument)
;;     (shell-command-on-region
;;      (point-min)
;;      (point-max)
;;      sh-indent-command
;;      (buffer-name))
;;     (save-buffer))

(defun c-reformat-buffer()
    (interactive)
    (save-buffer)
    (setq sh-indent-command
	  (concat "indent -nbad -bap -bbo -nbc -br -brs "
		  "-brf -c33 -cd33 -ncdb -ce -ci2 -cli0 "
		  "-cp33 -cs -d0 -di1 -nfc1 -nfca -hnl "
		  "-i2 -ip0 -l75 -lp -npcs -nprs -npsl "
		  "-saf -sai -saw -nsc -nsob -nss -ppi2 "))
    (mark-whole-buffer)
    (universal-argument)
    (shell-command-on-region
     (point-min)
     (point-max)
     sh-indent-command
     (buffer-name))
    (save-buffer))

(global-set-key (kbd "C-c f") 'c-reformat-buffer)


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


;;    
(global-set-key (kbd "S-M-<down>") 'windmove-down)

(global-set-key (kbd "S-M-<left>") 'windmove-left)        
(global-set-key (kbd "S-M-<right>") 'windmove-right)     
(global-set-key (kbd "S-M-<up>") 'windmove-up)           
;; ==== WINDOWS SIZE SHORTKEYS ====
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; V2
(global-set-key (kbd "S-M-n") 'windmove-down)
;;    

(global-set-key (kbd "S-M-b") 'windmove-left)        
(global-set-key (kbd "S-M-f") 'windmove-right)     
(global-set-key (kbd "S-M-p") 'windmove-up)           
;; ==== WINDOWS SIZE SHORTKEYS ====
(global-set-key (kbd "S-C-b") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-f") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-n") 'shrink-window)
(global-set-key (kbd "S-C-p") 'enlarge-window)

;;
(defalias 'qrr 'query-replace-regexp)
;; ==== LINUM SHORTKEY ====
(global-set-key (kbd "S-C-l") 'linum-mode)
(global-set-key (kbd "C-:") 'linum-relative-mode)


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

;; (global-set-key (kbd "C-x t") 'named-term)

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

;; ==== REVERT THE BUFFER ==== 
(global-set-key (kbd "C-c v") (lambda ()
                                (interactive)
                                (revert-buffer t t t)
                                (message "buffer is reverted")))
;; ==== RESTART EMACS ====
(global-set-key (kbd "C-x !") 'restart-emacs)

;; ==== (I don't really remember why I put this) ====
(diminish 'projectile-mode)

;; ==== MINOR MODE SETUP ====
(require 'rich-minority)
(rich-minority-mode 1)
(setf rm-blacklist "")

;; (defvar auto-minor-mode-alist ()
;;   "Alist of filename patterns vs correpsonding minor mode functions, see `auto-mode-alist'
;; All elements of this alist are checked, meaning you can enable multiple minor modes for the same regexp.")

;; (defun enable-minor-mode-based-on-extension ()
;;   "check file name against auto-minor-mode-alist to enable minor modes
;; the checking happens for all pairs in auto-minor-mode-alist"
;;   (when buffer-file-name
;;     (let ((name buffer-file-name)
;;           (remote-id (file-remote-p buffer-file-name))
;;           (alist auto-minor-mode-alist))
;;       ;; Remove backup-suffixes from file name.
;;       (setq name (file-name-sans-versions name))
;;       ;; Remove remote file name identification.
;;       (when (and (stringp remote-id)
;;                  (string-match-p (regexp-quote remote-id) name))
;;         (setq name (substring name (match-end 0))))
;;       (while (and alist (caar alist) (cdar alist))
;;         (if (string-match (caar alist) name)
;;             (funcall (cdar alist) 1))
;;         (setq alist (cdr alist))))))

;; (add-hook 'find-file-hook 'enable-minor-mode-based-on-extension)

;; (define-minor-mode minor-mode-blackout-mode
;;   "Hides minor modes from the mode line."
;;   t)

;; (catch 'done
;;   (mapc (lambda (x)
;;           (when (and (consp x)
;;                      (equal (cadr x) '("" minor-mode-alist)))
;;             (let ((original (copy-sequence x)))
;;               (setcar x 'minor-mode-blackout-mode)
;;               (setcdr x (list "" original)))
;;             (throw 'done t)))
;;         mode-line-modes))

;; (global-set-key (kbd "C-c m") 'minor-mode-blackout-mode)

;; ==== NEOTREE ====
;;(setq neo-theme (if window-system 'icons 'arrow))

;; ==== EMACS BACKUP ====
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/



;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)

;; 
;; ==== key bendings and stuff ====
;;(desktop+/special-buffer-handlers)
(set-frame-parameter (selected-frame) 'buffer-predicate #'buffer-file-name)

(global-set-key (kbd "C-c ;") 'make-directory)

(global-set-key (kbd "C-x p") (lambda ()
				(interactive)
				(other-window -1)))
(global-set-key (kbd "C-x 5 p") (lambda ()
				  (interactive)
				  (other-frame -1)))

(global-set-key (kbd "C-c C-t") (lambda ()
				  (interactive)
				  (transpose-chars -1)))

(global-set-key (kbd "C-c M-t") (lambda ()
				  (interactive)
				  (transpose-words -1)))

(global-set-key (kbd "C-c v") (lambda ()
                                (interactive)
                                (revert-buffer t t t)
                                (message "buffer is reverted")))

(global-set-key (kbd "C-c j") 'join-line)
(global-set-key (kbd "C-c M-j") (lambda ()
				  (interactive)
				  (join-line -1)))

(global-set-key (kbd "C-c d") (lambda ()
                                (interactive)
                                (delete-char -1)))
(global-set-key (kbd "C-c M-d") (lambda ()
				  (interactive)
				  (kill-word -1)))

(global-set-key (kbd "C-c e") (lambda ()
                                (interactive)
                                (eval-buffer)))

(global-set-key (kbd "C-c y") 'popup-kill-ring)

(global-set-key (kbd "C-c b") 'recover-this-file)
(global-set-key (kbd "C-c x") 'man)

;; ==== magit setup ====
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; ==== QUOTE ====
(message "In theory, there is no difference between theory and practice. But, in practice, there is.")
(put 'narrow-to-region 'disabled nil)

(add-hook 'ruby-mode-hook 'robe-mode)

(ac-config-default)

(setq rsense-home "/opt/rsense-0.3")
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

;; Rsense + Autocomplete
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

(defun set-frame-size-according-to-resolution ()
  "Set the windows size according to resolution."
  (interactive)
  (if window-system
      (progn
	;; use 120 char wide window for largeish displays
	;; and smaller 80 column windows for smaller displays
	(if (> (x-display-pixel-width) 1280)
	    (add-to-list 'default-frame-alist (cons 'width 120))
	  (add-to-list 'default-frame-alist (cons 'width 80)))
	;; for the height, subtract a couple hundred pixels
	;; from the screen height (for panels, menubars and
	;; whatnot), then divide by the height of a char to
	;; get the height
	(add-to-list 'default-frame-alist 
		     (cons 'height (/ (- (x-display-pixel-height) 200)
				      (frame-char-height)))))))

;;(set-frame-size-according-to-resolution)
(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
;; (add-hook 'ruby-mode-hook 'inf-ruby)

(global-set-key (kbd "C-.") 'quickrun)
(global-set-key (kbd "C-,") 'quickrun-compile-only)
(global-set-key (kbd "C-c =") 'compile)
(global-set-key (kbd "C-c z") 'occur)
(global-set-key (kbd "C-c i") 'inf-ruby)

(defun next-code-buffer ()
  "Next code buffer."
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (next-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (next-buffer))))

(defun previous-code-buffer ()
  "Previous code buffer."
  (interactive)
  (let (( bread-crumb (buffer-name) ))
    (previous-buffer)
    (while
        (and
         (string-match-p "^\*" (buffer-name))
         (not ( equal bread-crumb (buffer-name) )) )
      (previous-buffer))))

(global-set-key [remap next-buffer] 'next-code-buffer)
(global-set-key [remap previous-buffer] 'previous-code-buffer)

(setq lexical-binding t
      visible-bell t)

(defvar night-start 22
  "The hour that people go to sleep.")

(defvar night-end 8
  "The hour that people wake up.")

;; (defun nightp ()
;;   "Check if it is night."
;;   (let ((hr (nth 2 (decode-time (current-time)))))
;;     (unless (< hr night-end) (> hr night-start))))

(defvar install-theme-loading-times nil
  "An association list of time strings and theme names.
The themes will be loaded at the specified time every day.")
(defvar install-theme-timers nil)

(defun install-theme-loading-at-times ()
  "Set up theme loading according to `install-theme-loading-at-times`."
  (interactive)
  (dolist (timer install-theme-timers) (cancel-timer timer))
  (setq install-theme-timers nil)
  (dolist (time-theme install-theme-loading-times)
    (add-to-list
     'install-theme-timers
     (run-at-time
      (car time-theme)
      (* 60 60 24)
      'load-theme (cdr time-theme)))))
(setq install-theme-loading-times '(("6:00am" . manoj-dark)
				    ("10:30pm" . anti-zenburn-theme)))

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;; ==== disable the mouse =====
(define-minor-mode disable-mouse-mode
  "A minor-mode that disables all mouse keybinds."
  :global t
  :lighter " 🐭"
  :keymap (make-sparse-keymap))

(dolist (type '(mouse down-mouse drag-mouse
                      double-mouse triple-mouse))
  (dolist (prefix '("" C- M- S- M-S- C-M- C-S- C-M-S-))
    ;; Yes, I actually HAD to go up to 7 here.
    (dotimes (n 7)
      (let ((k (format "%s%s-%s" prefix type n)))
        (define-key disable-mouse-mode-map
          (vector (intern k)) #'ignore)))))

(disable-mouse-mode 1) ;; activate the mode

;; (require 'php+-mode)
;; (php+-mode-setup)

;;(setq org-agenda-files (file-expand-wildcards "~/orged/*.org"))
;;(add-to-list 'org-agenda-files (expand-file-name "~/orged"))
(setq org-agenda-files (list "~/orged"))

;; By an unknown contributor

(global-set-key "%" 'match-paren)
;; (global-set-key ")" 'goto-paren)

;; (defun goto-paren (ARG)
;;   "Goto matching paren `ARG` and back to the oroginal."
;;   (interactive "p")
;;   (cond ((looking-at "\\s\(") (match-paren "%"))
;;         ((looking-at "\\s\)") (match-paren "%"))
;;         (t (self-insert-command (or ARG 1)))))

(defun match-paren (ARG)
  "Go to the matching parenthesis if on parenthesis `ARG`', otherwise insert %.
vi style of % jumping to matching brace."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or ARG 1)))))

(setq show-paren-when-point-inside-paren t)

(defun shell-command-on-str (cmd &optional str)
  "Insert result of calling CMD with STR as input.
STR is `current-kill` if unspecified."
  (interactive (list (read-shell-command "Shell command on region: ")))
  (setq str (or str
                (current-kill 0)))
  (insert (with-temp-buffer
            (insert str)
            (shell-command-on-region (point-min) (point-max) cmd nil 'replace)
            (buffer-string))))
(require 'iimage)
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)
(add-to-list 'iimage-mode-image-regex-alist '("@startuml\s+\\(.+\\)" . 1))

;; Rendering plantuml
(defun plantuml-render-buffer ()
  (interactive)
  (message "PLANTUML Start rendering")
  (shell-command (concat "java -jar ~/.emacs.d/plantuml/plantuml.jar " 
                         buffer-file-name))
  (message (concat "PLANTUML Rendered:  " (buffer-name))))

;; Image reloading
(defun reload-image-at-point ()
  (interactive)
  (message "reloading image at point in the current buffer...")
  (image-refresh (get-text-property (point) 'display)))

;; Image resizing and reloading
(defun resize-image-at-point ()
  (interactive)
  (message "resizing image at point in the current buffer123...")
  (let* ((image-spec (get-text-property (point) 'display))
         (file (cadr (member :file image-spec))))
    (message (concat "resizing image..." file))
    (shell-command
     (format "convert -resize %d %s %s " 
	     (* (window-width (selected-window)) (frame-char-width))
	     file file))
    (reload-image-at-point)))
(org-babel-do-load-languages
 (quote org-babel-load-languages)
 (quote ((emacs-lisp . t)
         (java . t)
         (dot . t)
         (ditaa . t)
         (R . t)
         (python . t)
         (ruby . t)
         (gnuplot . t)
         (clojure . t)
         (sh . t)
         (ledger . t)
         (org . t)
         (plantuml . t)
         (latex . t))))
(message "done.")

(setq image-file-name-extensions
   (quote
    ("png" "jpeg" "jpg" "gif" "tiff" "tif" "xbm" "xpm" "pbm" "pgm" "ppm" "pnm" "svg" "pdf" "bmp")))

(setq org-image-actual-width 400)

(setq org-imagemagick-display-command "convert -density 600 \"%s\" -thumbnail \"%sx%s>\" \"%s\"")
(defun org-display-inline-images (&optional include-linked refresh beg end)
  "Display inline images.
Normally only links without a description part are inlined, because this
is how it will work for export.  When INCLUDE-LINKED is set, also links
with a description part will be inlined.  This
can be nice for a quick
look at those images, but it does not reflect what exported files will look
like.
When REFRESH is set, refresh existing images between BEG and END.
This will create new image displays only if necessary.
BEG and END default to the buffer boundaries."
  (interactive "P")
  (unless refresh
    (org-remove-inline-images)
    (if (fboundp 'clear-image-cache) (clear-image-cache)))
  (save-excursion
    (save-restriction
      (widen)
      (setq beg (or beg (point-min)) end (or end (point-max)))
      (goto-char beg)
      (let ((re (concat "\\[\\[\\(\\(file:\\)\\|\\([./~]\\)\\)\\([^]\n]+?"
                        (substring (org-image-file-name-regexp) 0 -2)
                        "\\)\\]" (if include-linked "" "\\]")))
            old file ov img)
        (while (re-search-forward re end t)
          (setq old (get-char-property-and-overlay (match-beginning 1)
                                                   'org-image-overlay)
        file (expand-file-name
                      (concat (or (match-string 3) "") (match-string 4))))
          (when (file-exists-p file)
            (let ((file-thumb (format "%s%s_thumb.png" (file-name-directory file) (file-name-base file))))
              (if (file-exists-p file-thumb)
                  (let ((thumb-time (nth 5 (file-attributes file-thumb 'string)))
                        (file-time (nth 5 (file-attributes file 'string))))
                    (if (time-less-p thumb-time file-time)
            (shell-command (format org-imagemagick-display-command
                           file org-image-actual-width org-image-actual-width file-thumb) nil nil)))
                (shell-command (format org-imagemagick-display-command
                                         file org-image-actual-width org-image-actual-width file-thumb) nil nil))
              (if (and (car-safe old) refresh)
                  (image-refresh (overlay-get (cdr old) 'display))
                (setq img (save-match-data (create-image file-thumb)))
                (when img
                  (setq ov (make-overlay (match-beginning 0) (match-end 0)))
                  (overlay-put ov 'display img)
                  (overlay-put ov 'face 'default)
                  (overlay-put ov 'org-image-overlay t)
                  (overlay-put ov 'modification-hooks
                               (list 'org-display-inline-remove-overlay))
                  (push ov org-inline-image-overlays))))))))))
;; (defun org-display-inline-images (&optional include-linked refresh beg end)
;;   "Display inline images.
;; Normally only links without a description part are inlined, because this
;; is how it will work for export.  When INCLUDE-LINKED is set, also links
;; with a description part will be inlined.  This can be nice for a quick
;; look at those images, but it does not reflect what exported files will look
;; like.
;; When REFRESH is set, refresh existing images between BEG and END.
;; This will create new image displays only if necessary.
;; BEG and END default to the buffer boundaries."
;;   (interactive "P")
;;   (unless refresh
;;     (org-remove-inline-images)
;;     (if (fboundp 'clear-image-cache) (clear-image-cache)))
;;   (save-excursion
;;     (save-restriction
;;       (widen)
;;       (setq beg (or beg (point-min)) end (or end (point-max)))
;;       (goto-char beg)
;;       (let ((re (concat "\\[\\[\\(\\(file:\\)\\|\\([./~]\\)\\)\\([^]\n]+?"
;; 			(substring (org-image-file-name-regexp) 0 -2)
;; 			"\\)\\]" (if include-linked "" "\\]")))
;; 	    old file ov img)
;; 	(while (re-search-forward re end t)
;; 	  (setq old (get-char-property-and-overlay (match-beginning 1)
;; 						   'org-image-overlay))
;; 	  (setq file (expand-file-name
;; 		      (concat (or (match-string 3) "") (match-string 4))))
;; 	  (when (file-exists-p file)
;;             (let ((file-thumb (format "%s%st.png" (file-name-directory file) (file-name-base file) "t.png")))
;;               (unless (file-exists-p file-thumb)
;;                 (shell-command (format "convert %s -thumbnail 400x400 %s"
;;                                        file file-thumb)))
;; 	      (if (and (car-safe old) refresh)
;; 		  (image-refresh (overlay-get (cdr old) 'display))
;; 		(setq img (save-match-data (create-image file-thumb)))
;; 		(when img
;; 		  (setq ov (make-overlay (match-beginning 0) (match-end 0)))
;; 		  (overlay-put ov 'display img)
;; 		  (overlay-put ov 'face 'default)
;; 		  (overlay-put ov 'org-image-overlay t)
;; 		  (overlay-put ov 'modification-hooks
;; 			       (list 'org-display-inline-remove-overlay))
;; 		  (push ov org-inline-image-overlays))))))))))

(provide 'init)
;;; init ends here
