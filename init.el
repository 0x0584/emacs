;;; package ---- Summary:
;;; Commentary:
;;; Code:
;; ==== EMOJIFY  ====
(add-hook 'after-init-hook #'global-emojify-mode)

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
(setq org-agenda-files (list "~/orged/agenda"))
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
(require 'desktop+)
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
 '(cperl-autoindent-on-semi t)
 '(cperl-brace-offset 0)
 '(cperl-close-paren-offset -4)
 '(cperl-continued-brace-offset 0)
 '(cperl-continued-statement-offset 0)
 '(cperl-electric-backspace-untabify t)
 '(cperl-electric-parens-mark nil)
 '(cperl-highlight-variables-indiscriminately nil)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(custom-enabled-themes (quote (tao-yin)))
 '(custom-safe-themes
   (quote
    ("0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "b550fc3d6f0407185ace746913449f6ed5ddc4a9f0cf3be218af4fb3127c7877" "d83bd04930314c053753d199873ee36c54bf221fe4b8a0938098f41eaa9a22ae" default)))
 '(display-time-mode t)
 '(electric-pair-mode t)
 '(f90-program-indent 2)
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
 '(main-line-color1 "#222232")
 '(main-line-color2 "#333343")
 '(main-line-separator-style (quote chamfer))
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c")))
 '(nyan-mode t)
 '(org-plantuml-jar-path "/home/arfed/.emacs.d/plantuml/plantuml.jar")
 '(package-selected-packages
   (quote
    (csharp-mode devdocs god-mode helm-perldoc lang-refactor-perl vc-auto-commit vc-check-status vc-msg ac-emoji emojify-logos plsense perl6-mode org-preview-html flymake-jshint flymake-jslint flymake-json flymake-less indium ac-js2 helm-spotify-plus spotify tldr edit-server org-gnome-calendar org-gnome org-web-tools pacmacs php-eldoc plsql org-alert ahungry-theme ample-theme doom-themes exotica-theme flatui-dark-theme org-beautify-theme paper-theme spacemacs-theme djvu gited memory-usage nlinum sotlisp nasm-mode flycheck-julia julia-mode julia-repl julia-shell synonyms ac-ispell mysql-to-org calfw-howm geben cyberpunk-theme awk-it smartparens tern zenburn-theme yascroll visual-regexp vkill minor-mode-hack symon magithub function-args bongo emms smart-mode-line smart-mode-line-powerline-theme helm-dictionary define-word dictionary nhexl-mode quickrun popwin ace-popup-menu popup-complete popup-kill-ring popup-switcher basic-c-compile runtests rvm rsense ac-inf-ruby flymake-ruby rubocop yari helm-rubygems-local helm-rubygems-org howdoi howm omniref ruby-block ruby-compilation ruby-dev ruby-electric ruby-factory ruby-hash-syntax ruby-refactor ruby-tools helm-robe robe swift3-mode benchmark-init ivy-youtube sudoku zweilight-theme helm-gitignore hide-comnt super-save ggtags desktop+ ac-html ac-clang flycheck-css-colorguard flymake-css all-the-icons ox-pandoc pandoc pandoc-mode langtool rich-minority diminish auto-complete-auctex flylisp c-eldoc term+ markdown-mode+ org-commentary org-doing org-readme orgtbl-ascii-plot spaces ssh svg svg-clock swap-buffers sx vline vmd-mode org-pandoc highlight highlight-quoted highlight-escape-sequences highlight-operators highlight-blocks plantuml-mode ascii-art-to-unicode smex desktop-menu magit-filenotify magit-rockstar latex-preview-pane magic-latex-buffer tango-2-theme tangotango-theme anti-zenburn-theme auctex git-timemachine zeal-at-point dash-at-point linum-relative bm ac-helm dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd rotate nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(pdf-view-midnight-colors (quote ("#232333" . "#c7c7c7")))
 '(plantuml-jar-path "/home/arfed/.emacs.d/plantuml/plantuml.jar")
 '(powerline-color1 "#222232")
 '(powerline-color2 "#333343")
 '(puml-plantuml-jar-path "~/.emacs.d/plantuml/plantuml.jar")
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
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
 '(bold ((t (:slant normal :weight bold))))
 '(chess-ics1-black-face ((t (:foreground "dark orange" :weight bold))))
 '(chess-ics1-white-face ((t (:foreground "white" :weight bold))))
 '(cperl-array-face ((t (:foreground "Aquamarine" :weight bold))))
 '(cperl-hash-face ((t (:foreground "Aquamarine" :slant italic))))
 '(dired-ignored ((t (:inherit shadow :underline (:color foreground-color :style wave) :slant italic))))
 '(font-lock-constant-face ((t (:foreground "LightSlateBlue" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "#F1F1F1" :slant italic))))
 '(font-lock-keyword-face ((t (:foreground "cyan1" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "indian red" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#C3C3C3" :slant italic))))
 '(font-lock-type-face ((t (:foreground "SteelBlue1"))))
 '(italic ((t (:slant italic))))
 '(org-agenda-clocking ((t (:underline (:color "firebrick" :style wave) :slant italic))))
 '(org-checkbox-statistics-todo ((t (:background "#F1F1F1" :foreground "dark red" :weight bold))))
 '(org-done ((t (:foreground "#2aa889" :weight bold))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "#FAFAFA" :overline t :underline t :weight bold :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "#FAFAFA" :overline t :slant italic :weight normal :height 1.0))))
 '(org-level-3 ((t (:foreground "#FAFAFA" :underline t :weight normal :height 1.0))))
 '(org-link ((t (:inherit link :foreground "Deepskyblue4" :underline nil :slant italic))))
 '(org-list-dt ((t (:foreground "Seagreen3" :weight bold))))
 '(org-priority ((t (:inherit font-lock-keyword-face :slant normal))))
 '(org-scheduled-previously ((t (:foreground "rosy brown" :weight bold))))
 '(org-tag ((t (:foreground "gold" :weight bold))))
 '(org-todo ((t (:foreground "#c23127" :slant italic :weight bold))))
 '(org-upcoming-deadline ((t (:foreground "chocolate1" :slant italic))))
 '(org-verbatim ((t (:inherit shadow :underline t))))
 '(perl6-identifier ((t (:inherit default))))
 '(perl6-operator ((t (:foreground "light slate gray"))))
 '(perl6-var-name ((t (:inherit font-lock-variable-name-face))))
 '(php-method-call ((t (:inherit php-function-call :slant italic)))))
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

	((c-mode . "C program") nil
	 "/* FILE: \t" (file-name-nondirectory buffer-file-name) "\n"
	 " * AUTHOR: \tANAS RCHID\n"
	 " * DESCRIPTION:\tNULL\n"
	 " * \n"
	 " * CREATION:\t" (insert-date) "\n"
	 " * MODIFIED:\t" (insert-date) "\n */\n\n"
	 )
        ((shell-mode . "Shell script") nil
         "#!/bin/bash\n\n"
         " # File: " (file-name-nondirectory buffer-file-name) "\n"
         " # Time-stamp: <>\n"
         " # Copyright (C) " (substring
			      (current-time-string) -4) " "
			      auto-insert-copyright "\n"
			      " # Description: " _ "\n\n")
	((cperl-mode . "Perl") nil
	 "#!/usr/bin/perl"
	 "\n#======================================================="
	 "========================"
	 "\n#"
	 "\n#         FILE: " (file-name-nondirectory buffer-file-name)
	 "\n#"
	 "\n#        USAGE: ./" (file-name-nondirectory buffer-file-name)
	 "\n#"
	 "\n#  DESCRIPTION: ---"
	 "\n#"
	 "\n#      OPTIONS: ---"
	 "\n# REQUIREMENTS: ---"
	 "\n#         BUGS: ---"
	 "\n#        NOTES: ---"
	 "\n#       AUTHOR: Anas Rchid (0x0584) <rchid.anas@gmail.com>"
	 "\n# ORGANIZATION: ---"
	 "\n#      VERSION: 1.0"
	 "\n#      CREATED: " (insert-date)
	 "\n#     REVISION: ---"
	 "\n#========================================================"
	 "=======================")
	)) 


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
		"-brf -c33 -cd33 -ncdb -ce -ci4 -cli0 "
		"-cp33 -cs -d0 -di1 -nfc1 -nfca -hnl "
		"-i4 -ip0 -l75 -lp -npcs -nprs -npsl "
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

;; ;; V2
;; (global-set-key (kbd "S-M-n") 'windmove-down)
;; ;;    

;; (global-set-key (kbd "S-M-b") 'windmove-left)        
;; (global-set-key (kbd "S-M-f") 'windmove-right)     
;; (global-set-key (kbd "S-M-p") 'windmove-up)           
;; ==== WINDOWS SIZE SHORTKEYS ====
;; (global-set-key (kbd "S-C-b") 'shrink-window-horizontally)
;; (global-set-key (kbd "S-C-f") 'enlarge-window-horizontally)
;; (global-set-key (kbd "S-C-n") 'shrink-window)
;; (global-set-key (kbd "S-C-p") 'enlarge-window)

;;
(defalias 'qrr 'query-replace-regexp)
(defun linum-setup ()
  (interactive)
  (linum-mode)
  (set-face-attribute 'linum nil :height 100))
;; ==== LINUM SHORTKEY ====
(global-set-key (kbd "S-C-l") 'linum-setup)
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

(global-set-key (kbd "C-x t") 'eshell)

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
(global-set-key (kbd "C-h z") 'zeal-at-point)

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
;; (require 'desktop+)
;; (global-set-key (kbd "C-c s") 'desktop+-create)
;; (global-set-key (kbd "C-c S") 'desktop+-create-auto)
;; (global-set-key (kbd "C-c l") 'desktop+-load)
;; (global-set-key (kbd "C-c L") 'desktop+-load-auto)
(global-set-key (kbd "C-c r") 'recover-session)


;;==== BROWSE SOURCE ====

(defun browse-file-directory ()
  "Open the current file's directory however the OS would."
  (interactive)
  (if default-directory
      (browse-url-of-file
       (expand-file-name default-directory))
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
      '((sequence "TODO(t)" "IN-PROGRESS(s!)" "EXAM" "TO-BUY(b!)"
		  "MEETING(m!)" "|" "PENDING(p!)" "DONE(d!/@)"
		  "CANCELED(c!/!)" "UNDER-REVISING(u)" "|" "HOLIDAY")))
(setq org-agenda-skip-scheduled-if-done t)
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
        (target "/{}^\"\'()[]"))
    (if (not (use-region-p))
	(progn (skip-chars-backward target)
	       (setq a (point)))
      (setq a (region-beginnig)))
    (skip-chars-forward target)
    (setq b (point))
    (set-mark a)))

(global-set-key (kbd "C-c M-]") 'select-in-delim)
(global-set-key (kbd "M-[") 'select-line)
(global-set-key (kbd "M-]") 'select-paragraph)
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

(setq backup-by-copying t		; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.autosaves"))		; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)		; use versioned backups

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

;; (setq rsense-home "/opt/rsense-0.3")
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)

;; ;; Rsense + Autocomplete
;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;             (add-to-list 'ac-sources 'ac-source-rsense-method)
;;             (add-to-list 'ac-sources 'ac-source-rsense-constant)))

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
(setq org-agenda-files (list "~/orged/agenda"))

;; By an unknown contributor

;; (global-set-key "%" 'match-paren)
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
(require 'calfw)

(setq cfw:org-agenda-schedule-args '(:timestamp))
(setq cfw:org-overwrite-default-keybinding t)

;; Month
(setq calendar-month-name-array
      ["January" "February" "March"     "April"   "May"      "June"
       "July"    "August"   "September" "October" "November" "December"])

;; Week days
(setq calendar-day-name-array
      ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"])

;; First day of the week
(setq calendar-week-start-day 1) ; 0:Sunday, 1:Monday

;; (custom-set-faces
;;  '(cfw:face-title ((t (:foreground "#f0dfaf" :weight bold :height 2.0 :inherit variable-pitch))))
;;  '(cfw:face-header ((t (:foreground "#d0bf8f" :weight bold))))
;;  '(cfw:face-sunday ((t :foreground "#cc9393" :background "grey10" :weight bold)))
;;  '(cfw:face-saturday ((t :foreground "#8cd0d3" :background "grey10" :weight bold)))
;;  '(cfw:face-holiday ((t :background "grey10" :foreground "#8c5353" :weight bold)))
;;  '(cfw:face-grid ((t :foreground "DarkGrey")))
;;  '(cfw:face-default-content ((t :foreground "#bfebbf")))
;;  '(cfw:face-periods ((t :foreground "cyan")))
;;  '(cfw:face-day-title ((t :background "grey10")))
;;  '(cfw:face-default-day ((t :weight bold :inherit cfw:face-day-title)))
;;  '(cfw:face-annotation ((t :foreground "RosyBrown" :inherit cfw:face-day-title)))
;;  '(cfw:face-disable ((t :foreground "DarkGray" :inherit cfw:face-day-title)))
;;  '(cfw:face-today-title ((t :background "#7f9f7f" :weight bold)))
;;  '(cfw:face-today ((t :background: "grey10" :weight bold)))
;;  '(cfw:face-select ((t :background "#2f2f2f")))
;;  '(cfw:face-toolbar ((t :foreground "Steelblue4" :background "Steelblue4")))
;;  '(cfw:face-toolbar-button-off ((t :foreground "Gray10" :weight bold)))
;;  '(cfw:face-toolbar-button-on ((t :foreground "Gray50" :weight bold))))

;; Default setting
(setq cfw:fchar-junction ?+
      cfw:fchar-vertical-line ?|
      cfw:fchar-horizontal-line ?-
      cfw:fchar-left-junction ?+
      cfw:fchar-right-junction ?+
      cfw:fchar-top-junction ?+
      cfw:fchar-top-left-corner ?+
      cfw:fchar-top-right-corner ?+ )
;; css

(defun xah-syntax-color-hex ()
  "Syntax color text of the form 「#ff1100」 and 「#abc」 in current buffer.
URL `http://ergoemacs.org/emacs/emacs_CSS_colors.html'
Version 2017-03-12"
  (interactive)
  (font-lock-add-keywords
   nil
   '(("#[[:xdigit:]]\\{3\\}"
      (0 (put-text-property
          (match-beginning 0)
          (match-end 0)
          'face (list :background
                      (let* (
                             (ms (match-string-no-properties 0))
                             (r (substring ms 1 2))
                             (g (substring ms 2 3))
                             (b (substring ms 3 4)))
                        (concat "#" r r g g b b))))))
     ("#[[:xdigit:]]\\{6\\}"
      (0 (put-text-property
          (match-beginning 0)
          (match-end 0)
          'face (list :background (match-string-no-properties 0)))))))
  (font-lock-flush))
(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'php-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)

;; HSL
(defun xah-syntax-color-hsl ()
  "Syntax color CSS's HSL color spec eg 「hsl(0,90%,41%)」 in current buffer.
URL `http://ergoemacs.org/emacs/emacs_CSS_colors.html'
Version 2017-02-02"
  (interactive)
  (require 'color)
  (font-lock-add-keywords
   nil
   '(("hsl( *\\([0-9]\\{1,3\\}\\) *, *\\([0-9]\\{1,3\\}\\)% *, *\\([0-9]\\{1,3\\}\\)% *)"
      (0 (put-text-property
          (+ (match-beginning 0) 3)
          (match-end 0)
          'face
          (list
           :background
           (concat
            "#"
            (mapconcat
             'identity
             (mapcar
              (lambda (x) (format "%02x" (round (* x 255))))
              (color-hsl-to-rgb
               (/ (string-to-number (match-string-no-properties 1)) 360.0)
               (/ (string-to-number (match-string-no-properties 2)) 100.0)
               (/ (string-to-number (match-string-no-properties 3)) 100.0)))
             "" )) ;  "#00aa00"
           ))))))
  (font-lock-flush))
(add-hook 'css-mode-hook 'xah-syntax-color-hsl)
(add-hook 'php-mode-hook 'xah-syntax-color-hsl)
(add-hook 'html-mode-hook 'xah-syntax-color-hsl)

;; abbrv
(define-abbrev-table
  'global-abbrev-table
  '(("white" "#ffffff")
    ("silver" "#c0c0c0")
    ("gray" "#808080")
    ("black" "#000000")
    ("red" "#ff0000")
    ("maroon" "#800000")
    ("yellow" "#ffff00")
    ("olive" "#808000")
    ("lime" "#00ff00")
    ("green" "#008000")
    ("aqua" "#00ffff")
    ("teal" "#008080")
    ("blue" "#0000ff")
    ("navy" "#000080")
    ("fuchsia" "#ff00ff")
    ("purple" "#800080")))


;; Prevent accidentally killing emacs.
(global-set-key
 [(control x) (control c)]
 '(lambda ()
    (interactive)
    (if (y-or-n-p-with-timeout
	 "Do you really want to exit Emacs ? " 10 nil)
	(progn
	  (if window-system
	      (progn (if (fboundp 'uptime) (uptime))
		     (sleep-for 1)))
	  (save-buffers-kill-emacs)))
    (message "emacs quit aborted")))

(setq org-agenda-custom-commands
      '(("x" "Exams"
	 ;; agenda with only items tagged event  
	 ((agenda "" ((org-agenda-ndays 45)
		      (org-agenda-tag-filter-preset '("+exam"))
		      (org-deadline-warning-days 0)))))))

(add-to-list
 'org-agenda-custom-commands
 '("W" "Weekend" ((agenda "" ))
   ((org-agenda-overriding-header "20 days")
    (org-agenda-span 20))) t)
(setq eww-search-prefix "https://startpage.com/do/m/mobilesearch?query=")
(setq works "~/Workspace/")
(setq www (concat works "www/"))

(global-set-key (kbd "C-c g") 'auto-complete)

(defun change-file-permissions-to-writable ()
  "to be run from find-file-hook, change write permissions"
  (when (not (file-writable-p buffer-file-name))
    (chmod buffer-file-name
	   (file-modes-symbolic-to-number
	    "u+w" (nth 8 (file-attributes buffer-file-name))))
    (if (not (file-writable-p buffer-file-name))
        (message "Unable to make file writable."))))

;; (add-hook 'find-file-hook 'change-file-permissions-to-writable)
(require 'helm-dictionary)

(setq helm-dictionary-database "dict-en.txt")
(setq org-latex-create-formula-image-program 'dvisvgm)
(setq org-format-latex-options
      (plist-put org-format-latex-options
		 :scale 1.3))

(global-set-key (kbd "C-x \\") 'wordnut-lookup-current-word)
(global-set-key (kbd "C-x <f12>") 'helm-tldr)

(defun shell-command-on-buffer ()
  "Asks for a command and execute it in inferior shell with current buffer as input."
  (interactive)
  (shell-command-on-region
   (point-min) (point-max)
   (read-shell-command "Shell command on buffer: ")))
(global-set-key (kbd "M-\"") 'shell-command-on-buffer)
(put 'dired-find-alternate-file 'disabled nil)


(require 'org-alert)
(setq alert-default-style 'libnotify)
(setq org-alert-interval 2500)	; 60 sec * 30 min
(org-alert-enable)

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; Agenda clock report parameters
(setq org-agenda-clockreport-parameter-plist
      '(:link t :maxlevel 6 :fileskip0 t :compact t :narrow 60 :score 0))

;; If idle for more than 15 minutes, resolve the things by asking what to do
;; with the clock time
(setq org-clock-idle-time 15)

;; global Effort estimate values
(setq org-global-properties
      '(("Effort_ALL" .
         "0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 0:00")))
;;        1    2    3    4    5    6    7    8    9    0
;; These are the hotkeys ^^
;; Set default column view headings: Task Priority Effort Clock_Summary
(setq org-columns-default-format
      "%50ITEM(Task) %2PRIORITY %10Effort(Effort){:} %10CLOCKSUM")

(setq ac-auto-start 3)
(setq ac-dwim t)

(require 'epa-file)
(epa-file-enable)

;; (defun org-cycle-or-complete-latex (&optional arg)
;;   "Like `org-cycle' (which see) but completes latex math equations
;; if point is after ＼[ or ＼(."
;;   (interactive "P")
;;   (if (looking-back "\\\\[[(]" (max (point-min) (- (point) 2)))
;;       (progn
;; 	(insert
;; 	 (case (char-before)
;; 	   (?\( "  \\)")
;; 	   (?\[ "  \\]")
;; 	   (t (error "Should never happen."))))
;; 	(backward-char 3))
;;     (call-interactively #'org-cycle)))

;; (defun my-org-mode-hook-fun ()
;;   (org-defkey org-mode-map [(tab)] #'org-cycle-or-complete-latex))

;; (add-hook 'org-mode-hook #'my-org-mode-hook-fun)

;; (unless (boundp 'org-export-latex-classes)
;;   (setq org-export-latex-classes nil))
;; (add-to-list 'org-export-latex-classes
;; 	     ;; beamer class, for presentations
;; 	     '("beamer"
;; 	       "\\documentclass[11pt]{beamer}\n
;;       \\mode<{{{beamermode}}}>\n
;;       \\usetheme{{{{beamertheme}}}}\n
;;       \\usecolortheme{{{{beamercolortheme}}}}\n
;;       \\beamertemplateballitem\n
;;       \\setbeameroption{show notes}
;;       \\usepackage[utf8]{inputenc}\n
;;       \\usepackage[T1]{fontenc}\n
;;       \\usepackage{hyperref}\n
;;       \\usepackage{color}
;;       \\usepackage{listings}
;;       \\lstset{numbers=none,language=[ISO]C++,tabsize=4,
;;   frame=single,
;;   basicstyle=\\small,
;;   showspaces=false,showstringspaces=false,
;;   showtabs=false,
;;   keywordstyle=\\color{blue}\\bfseries,
;;   commentstyle=\\color{red},
;;   }\n
;;       \\usepackage{verbatim}\n
;;       \\institute{{{{beamerinstitute}}}}\n          
;;        \\subject{{{{beamersubject}}}}\n"

;; 	       ("\\section{%s}" . "\\section*{%s}")
	       
;; 	       ("\\begin{frame}[fragile]\\frametitle{%s}"
;; 		"\\end{frame}"
;; 		"\\begin{frame}[fragile]\\frametitle{%s}"
;; 		"\\end{frame}")))

;; ;; letter class, for formal letters

;; (add-to-list 'org-export-latex-classes

;; 	     '("letter"
;; 	       "\\documentclass[11pt]{letter}\n
;;       \\usepackage[utf8]{inputenc}\n
;;       \\usepackage[T1]{fontenc}\n
;;       \\usepackage{color}"
	       
;; 	       ("\\section{%s}" . "\\section*{%s}")
;; 	       ("\\subsection{%s}" . "\\subsection*{%s}")
;; 	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;; 	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
;; 	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

;; (setq browse-url-browser-function 'eww-browse-url)

(defun org-html2org-clipboard ()
  "Convert clipboard contents from HTML to Org and then paste (yank)."
  (interactive)
  (kill-new
   (shell-command-to-string
    "xclip -o -t TARGETS    | "
    "grep -q text/html      && "
    "(xclip -o -t text/html | "
    "pandoc -f html -t json | "
    "pandoc -f json -t org) || "
    "xclip -o"))
  (yank))

(defalias 'perl-mode 'cperl-mode)

(setq cperl-hairy nil) ;; Turns off most of the CPerlMode options

(defun my-cperl-eldoc-documentation-function ()
  "Return meaningful doc string for `eldoc-mode'."
  (car
   (let ((cperl-message-on-help-error nil))
     (cperl-get-help))))

(add-hook 'cperl-mode-hook
	  (lambda ()
	    (set (make-local-variable 'eldoc-documentation-function)
		 'my-cperl-eldoc-documentation-function)))
;; (require 'plsense)

;; ;; Key binding
;; (setq plsense-popup-help-key "C-c :")
;; (setq plsense-display-help-buffer-key "M-:")
;; (setq plsense-jump-to-definition-key "C->")

;; ;; Make config suit for you. About the config item, eval the following sexp.
;; ;; (customize-group "plsense")

;; ;; Do setting recommemded configuration
;; (plsense-config-default)

(defun set-to-nice-view ()
  "Set the current frame to nice look."
  (interactive)
  (set-frame-width nil 115)
  (text-scale-adjust 2))

(add-hook 'cperl-mode-hook 'auto-insert)
(add-hook 'org-mode-hook 'visual-line-mode)

(global-set-key (kbd "C-c +") 'set-to-nice-view)

(require 'god-mode)
(global-set-key (kbd "<escape>") 'god-local-mode)

(defun god-toggle-on-overwrite ()
  "Toggle `god-mode` on `overwrite-mode`."
  (if (bound-and-true-p overwrite-mode)
      (god-local-mode-pause)
    (god-local-mode-resume)))

(add-hook 'overwrite-mode-hook 'god-toggle-on-overwrite)

(require 'god-mode-isearch)

(define-key isearch-mode-map (kbd "<escape>") 'god-mode-isearch-activate)
(define-key god-mode-isearch-map (kbd "<escape>") 'god-mode-isearch-disable)

(define-key god-local-mode-map (kbd ".") 'repeat)
(define-key god-local-mode-map (kbd "i") 'god-local-mode)

;; (defun my-update ()
;;   (cond
;;    (god-local-mode
;;     (setq nyan-wavy-trail nil)
;;     (nyan-stop-animation)
;;     )
;;    (t
;;     (setq nyan-wavy-trail t)
;;     (nyan-start-animation)
;;     )))

;; (add-hook 'god-mode-enabled-hook 'my-update)
;; (add-hook 'god-mode-disabled-hook 'my-update)

(global-set-key (kbd "C-x C-1") 'delete-other-windows)
(global-set-key (kbd "C-x C-2") 'split-window-below)
(global-set-key (kbd "C-x C-3") 'split-window-right)
(global-set-key (kbd "C-x C-0") 'delete-window)
(global-set-key (kbd "C-h !") 'devdocs-search)
(add-to-list 'god-exempt-major-modes 'dired-mode)

(require 'recentf)
(recentf-mode 1)
(savehist-mode 1)

(setq org-return-follows-link t)
(setq org-src-fontify-natively t)
(require 'flymake-jslint)

(add-hook 'js-mode-hook 'flymake-jslint-load)
(add-hook 'js-mode-hook 'js2-mode)                                                             
(add-hook 'js-mode-hook 'ac-js2-mode)

(setq c-default-style "cc-mode")

(defun swap-buffer ()
  (interactive)
  (cond ((one-window-p) (display-buffer (other-buffer)))
        ((let* ((buffer-a (current-buffer))
                (window-b (cadr (window-list)))
                (buffer-b (window-buffer window-b)))
           (set-window-buffer window-b buffer-a)
           (switch-to-buffer buffer-b)
           (other-window 1)))))
(global-set-key (kbd "C-c s") 'swap-buffer)

;; (require 'org-latex)
;; (setq org-export-latex-listings 'minted)
;; (add-to-list 'org-export-latex-packages-alist '("" "minted"))

;; (setq c-basic-indent 4)
;; (setq c-basic-offset 4)

(define-minor-mode delete-nl-spaces-mode
  "Toggle deleting needless spaces (Delete Needless Spaces mode).
With a prefix argument ARG, enable Delete Needless Spaces mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil.
If Delete Needless Spaces mode is enable, before a buffer is saved to its file:
- delete initial blank lines;
- change spaces on tabs or vice versa depending on `indent-tabs-mode';
- delete the trailing whitespaces and empty last lines;
- delete also latest blank line if `require-final-newline' is nil;"
  :init-value t
  :lighter " dns")

(defun delete-nl-spaces ()
  "Execute `delete-nl-spaces'."
  (if delete-nl-spaces-mode
      (save-excursion
        ;; Delete initial blank lines
        (goto-char (point-min))
        (skip-chars-forward " \n\t")
        (skip-chars-backward " \t")
        (if (> (point) 0)
            (delete-char (- (- (point) 1))))

        ;; Change spaces on tabs or tabs on spaces
        (if indent-tabs-mode
            (tabify (point-min) (point-max))
          (untabify (point-min) (point-max)))

        ;; Delete the trailing whitespaces and all blank lines
        (let ((delete-trailing-lines t))
          (delete-trailing-whitespace))

        ;; Delete the latest newline
        (unless require-final-newline
          (goto-char (point-max))
          (let ((trailnewlines (skip-chars-backward "\n\t")))
            (if (< trailnewlines 0)
                (delete-char (abs trailnewlines))))))))

(defun delete-nl-spaces-find-file-hook ()
  "Check whether to disable `delete-nl-spaces'."
  (when (and (buffer-file-name) (file-exists-p (buffer-file-name)))
    (let ((buffer (current-buffer))
          (final-newline require-final-newline)
          (tabs-mode indent-tabs-mode))
      (with-temp-buffer
        (setq-local require-final-newline final-newline)
        (setq indent-tabs-mode tabs-mode)
        (insert-buffer-substring buffer)
        (delete-nl-spaces)
        (unless (= (compare-buffer-substrings buffer nil nil nil nil nil) 0)
          (set-buffer buffer)
          (delete-nl-spaces-mode -1)
          (message "delete-nl-spaces-mode disabed for %s"
                   (buffer-name buffer)))))))

(add-hook 'find-file-hook 'delete-nl-spaces-find-file-hook)
(add-hook 'before-save-hook 'delete-nl-spaces)

(provide 'init)
;;; init ends here
