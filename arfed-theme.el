(deftheme arfed
  "Created 2017-12-01.")

(custom-theme-set-variables
 'arfed
 '(ansi-color-faces-vector [default default default italic underline success warning error])
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-safe-themes (quote ("b550fc3d6f0407185ace746913449f6ed5ddc4a9f0cf3be218af4fb3127c7877" "ed8cf6d52a2ba9ed7a29a8aac81d83c362a9b62f48b558932a77130163fe9972" "12b7ed9b0e990f6d41827c343467d2a6c464094cbcc6d0844df32837b50655f9" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "b9e9ba5aeedcc5ba8be99f1cc9301f6679912910ff92fdf7980929c2fc83ab4d" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "12ab69d8db952a79aa079da812c147ae551f6427448f2564e29f910bcef7bf93" "603a9c7f3ca3253cb68584cb26c408afcf4e674d7db86badcfe649dd3c538656" "40bc0ac47a9bd5b8db7304f8ef628d71e2798135935eb450483db0dbbfff8b11" "9b402e9e8f62024b2e7f516465b63a4927028a7055392290600b776e4a5b9905" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "6bb466c89b7e3eedc1f19f5a0cfa53be9baf6077f4d4a6f9b5d087f0231de9c8" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "5cd0afd0ca01648e1fff95a7a7f8abec925bd654915153fb39ee8e72a8b56a1f" "a3132bd39a977ddde4c002f8bd0ef181414c3fbe9228e3643b999491192680ad" "90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "590759adc4a5bf7a183df81654cce13b96089e026af67d92b5eec658fb3fe22f" default)))
 '(ede-project-directories (quote ("/home/arfed/Workspace/morse-code-master/src")))
 '(flycheck-clang-include-path (quote ("/home/arfed/Workspace/morse-code-master" "/home/arfed/Workspace/sdku-gen/include")))
 '(flycheck-clang-includes nil)
 '(indicate-buffer-boundaries (quote left))
 '(org-agenda-files (quote ("~/orged/LP-DBA/gl.org" "/home/arfed/orged/MASTER.org" "/home/arfed/orged/Q.org" "/home/arfed/orged/emails.org" "/home/arfed/orged/ghiwan.org" "/home/arfed/orged/led-zeppelin.org" "/home/arfed/orged/todo.org" "/home/arfed/orged/exams.org")))
 '(org-plantuml-jar-path "/home/arfed/.emacs.d/plantuml/plantuml.jar")
 '(org-startup-folded (quote content))
 '(package-selected-packages (quote (volatile-highlights company-inf-ruby slime fuzzy ac-etags ac-html-bootstrap ac-html-csswatcher ac-php ac-php-core css-eldoc enlive helm-css-scss helm-dash show-css calfw-org calfw-gcal calfw-cal calfw smartparens tern zenburn-theme php+-mode yascroll visual-regexp vkill minor-mode-hack symon magithub function-args bongo emms smart-mode-line smart-mode-line-powerline-theme helm-dictionary define-word dictionary nhexl-mode quickrun popwin ace-popup-menu popup-complete popup-kill-ring popup-switcher basic-c-compile company company-irony-c-headers flycheck-irony irony-eldoc runtests rvm rsense ac-inf-ruby flymake-ruby rubocop yari helm-rubygems-local helm-rubygems-org helm-spotify howdoi howm omniref ruby-block ruby-compilation ruby-dev ruby-electric ruby-factory ruby-hash-syntax ruby-refactor ruby-tools helm-robe robe swift3-mode benchmark-init ivy-youtube sudoku zweilight-theme helm-gitignore hide-comnt super-save ggtags desktop+ ac-html ac-clang flycheck-css-colorguard flymake-css all-the-icons ox-pandoc pandoc pandoc-mode langtool rich-minority diminish auto-complete-auctex flylisp c-eldoc term+ markdown-mode+ org-commentary org-doing org-readme orgtbl-ascii-plot spaces ssh svg svg-clock swap-buffers sx vline vmd-mode org-pandoc highlight highlight-quoted highlight-escape-sequences highlight-operators highlight-blocks plantuml-mode ascii-art-to-unicode smex desktop-menu magit-filenotify magit-rockstar latex-preview-pane magic-latex-buffer tango-2-theme tangotango-theme anti-zenburn-theme auctex git-timemachine zeal-at-point dash-at-point linum-relative bm ac-helm dark-krystal-theme caroline-theme meacupla-theme clues-theme cherry-blossom-theme distinguished-theme soothe-theme grandshell-theme company-irony company-c-headers helm-company helm-make helm-themes electric-operator flycheck-perl6 rainbow-delimiters helm-gtags ctags-update hl-sexp rainbow-blocks ctags clang-format bind-key flycheck flycheck-cstyle iedit impatient-mode xkcd rotate nyan-mode inkpot-theme imgur hlinum gnuplot gnu-apl-mode flycheck-clangcheck emojify elfeed disaster chess badger-theme auto-complete-clang auto-complete-c-headers ac-c-headers abyss-theme 2048-game 0blayout))))

(custom-theme-set-faces
 'arfed
 )

(provide-theme 'arfed)
