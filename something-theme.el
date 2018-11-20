(deftheme something
  "Created 2018-10-25.")

(custom-theme-set-variables
 'something
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(flycheck-clang-include-path (quote ("/home/arfed/Workspace/morse-code-master" "/home/arfed/Workspace/sdku-gen/include")))
 '(flycheck-clang-includes nil)
 '(indicate-buffer-boundaries (quote left))
 '(magit-diff-arguments (quote ("--no-ext-diff" "--stat" "--diff-algorithm=histogram")))
 '(magit-diff-refine-hunk t)
 '(magit-diff-section-arguments (quote ("--no-ext-diff" "--diff-algorithm=patience")))
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(magit-log-section-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(org-latex-caption-above (quote (image table src-block special-block)))
 '(org-plantuml-jar-path "/home/arfed/.emacs.d/plantuml/plantuml.jar")
 '(package-selected-packages (quote (lsp-javascript-flow scheme-complete fzf helm-flymake f3 synonymous sr-speedbar map-regexp helm-git-files helm-git-grep helm-git ac-slime magit-todos melancholy-theme nimbus-theme sly markdown-toc markdown-preview-mode markdownfmt ac-math diffview dumb-diff find-file-in-project find-file-in-repository find-things-fast firefox-controller latexdiff magit-org-todos vdiff-magit vdiff magit-find-file magit-annex gitlab csharp-mode devdocs god-mode helm-perldoc lang-refactor-perl ac-emoji emojify-logos plsense perl6-mode org-preview-html flymake-jshint flymake-jslint flymake-json flymake-less indium ac-js2 helm-spotify-plus spotify tldr edit-server org-gnome-calendar org-gnome org-web-tools pacmacs php-eldoc plsql org-alert ahungry-theme ample-theme doom-themes exotica-theme flatui-dark-theme org-beautify-theme paper-theme spacemacs-theme djvu gited memory-usage nlinum sotlisp nasm-mode flycheck-julia julia-mode julia-repl julia-shell synonyms ac-ispell mysql-to-org calfw-howm geben cyberpunk-theme awk-it smartparens tern zenburn-theme yascroll visual-regexp vkill minor-mode-hack symon magithub function-args bongo emms smart-mode-line smart-mode-line-powerline-theme helm-dictionary define-word dictionary nhexl-mode quickrun popwin ace-popup-menu popup-complete popup-kill-ring popup-switcher basic-c-compile runtests rvm rsense ac-inf-ruby flymake-ruby rubocop yari helm-rubygems-local helm-rubygems-org howdoi howm omniref ruby-block ruby-compilation ruby-dev ruby-electric ruby-factory ruby-hash-syntax ruby-refactor ruby-tools helm-robe robe swift3-mode benchmark-init ivy-youtube sudoku zweilight-theme helm-gitignore hide-comnt super-save ggtags desktop+ ac-html ac-clang flycheck-css-colorguard flymake-css all-the-icons ox-pandoc pandoc pandoc-mode langtool rich-minority diminish auto-complete-auctex flylisp c-eldoc term+ markdown-mode+ org-commentary org-doing org-readme orgtbl-ascii-plot spaces ssh svg svg-clock swap-buffers sx vline vmd-mode org-pandoc highlight highlight-quoted highlight-escape-sequences highlight-operators highlight-blocks plantuml-mode ascii-art-to-unicode smex desktop-menu magit-filenotify magit-rockstar latex-preview-pane magic-latex-buffer tango-2-theme tangotango-theme anti-zenburn-theme auctex git-timemachine zeal-at-point dash-at-point linum-relative bm ac-helm dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd rotate nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout)))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(blink-cursor-mode t)
 '(column-number-mode t)
 '(display-time-mode t)
 '(electric-pair-mode t)
 '(fringe-mode 10)
 '(global-ede-mode nil)
 '(line-number-mode nil)
 '(menu-bar-mode nil)
 '(nyan-mode t)
 '(show-paren-mode t)
 '(timeclock-mode-line-display nil)
 '(tool-bar-mode nil)
 '(which-key-mode t)
 '(custom-safe-themes (quote ("dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "b35a14c7d94c1f411890d45edfb9dc1bd61c5becd5c326790b51df6ebf60f402" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "725a0ac226fc6a7372074c8924c18394448bb011916c05a87518ad4563738668" "0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "b550fc3d6f0407185ace746913449f6ed5ddc4a9f0cf3be218af4fb3127c7877" "d83bd04930314c053753d199873ee36c54bf221fe4b8a0938098f41eaa9a22ae" default))))

(custom-theme-set-faces
 'something
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 98 :width normal :size 15))))
 '(bm-face ((t (:background "orange" :foreground "Black"))))
 '(bm-fringe-face ((t (:background "gold" :foreground "Black"))))
 '(bold ((t (:slant normal :weight bold))))
 '(cfw:face-select ((t (:background "light steel blue"))))
 '(cfw:face-sunday ((t (:foreground "gainsboro" :weight bold))))
 '(cfw:face-today-title ((t (:foreground "medium slate blue" :slant italic))))
 '(cfw:face-toolbar ((t nil)))
 '(diff-refine-added ((t (:inherit diff-added :background "sea green" :underline (:color foreground-color :style wave) :weight bold))))
 '(diff-refine-removed ((t (:inherit diff-removed :strike-through t :weight bold))))
 '(dired-ignored ((t (:inherit shadow :underline (:color foreground-color :style wave) :slant italic))))
 '(flycheck-error ((t (:underline (:color "#DADADA" :style wave) :weight bold))))
 '(font-lock-constant-face ((t (:foreground "LightSlateBlue" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "#F1F1F1" :slant italic))))
 '(font-lock-keyword-face ((t (:foreground "cyan1" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "indian red" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#C3C3C3" :slant italic))))
 '(font-lock-type-face ((t (:foreground "SteelBlue1"))))
 '(italic ((t (:slant italic))))
 '(magit-diff-hunk-region ((t (:inherit bold :background "gray"))))
 '(magit-diff-removed-highlight ((t (:background "#663333" :foreground "#eecccc"))))
 '(magit-section-highlight ((t nil)))
 '(org-agenda-clocking ((t (:underline (:color "firebrick" :style wave) :slant italic))))
 '(org-agenda-date-today ((t (:foreground "sea green" :slant italic :weight bold))))
 '(org-agenda-done ((t (:foreground "burlywood3"))))
 '(org-checkbox ((t (:foreground "#FAFAFA" :box (:line-width 1 :style released-button) :slant normal))))
 '(org-checkbox-statistics-todo ((t (:background "#F1F1F1" :foreground "dark red" :weight bold))))
 '(org-done ((t (:foreground "#2aa889" :weight bold))))
 '(org-level-1 ((t (:inherit outline-1 :foreground "#FAFAFA" :overline t :underline t :weight bold :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :foreground "#FAFAFA" :overline t :slant italic :weight normal :height 1.0))))
 '(org-level-3 ((t (:foreground "#FAFAFA" :underline t :weight normal :height 1.0))))
 '(org-link ((t (:inherit link :foreground "Deepskyblue4" :underline nil :slant italic))))
 '(org-list-dt ((t (:foreground "light steel blue"))))
 '(org-priority ((t (:inherit font-lock-keyword-face :slant normal))))
 '(org-scheduled-previously ((t (:foreground "rosy brown" :weight bold))))
 '(org-tag ((t (:foreground "gold" :weight bold))))
 '(org-todo ((t (:foreground "#c23127" :slant italic :weight bold))))
 '(org-upcoming-deadline ((t (:inherit font-lock-keyword-face :foreground "cornsilk" :slant italic))))
 '(org-verbatim ((t (:inherit shadow :underline t))))
 '(org-warning ((t (:foreground "coral" :slant italic :weight bold)))))

(provide-theme 'something)