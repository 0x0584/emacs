(deftheme got
  "Created 2016-07-18.")

(custom-theme-set-variables
 'got
 '(custom-safe-themes (quote ("590759adc4a5bf7a183df81654cce13b96089e026af67d92b5eec658fb3fe22f" "d741e7e6c3a1fd8a8515cbf1792b7336460775a46f0e6387161dbed4b0418cad" default)))
 '(indicate-buffer-boundaries (quote (quote left)))
 '(tool-bar-mode nil)
 '(size-indication-mode t)
 '(column-number-mode t)
 '(nyan-mode t))

(custom-theme-set-faces
 'got
 '(default ((t (:slant normal :weight normal :height 134 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

(provide-theme 'got)
