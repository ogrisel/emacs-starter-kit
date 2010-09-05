(load-file (concat user-specific-dir "/color-theme-sunburst.el"))
(color-theme-tm)


;; Smaller font size to allow for 2x80 chars vertical split on 13 inches screen
(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Monospace-8"))
;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

;; Ctrl-F5 to display line numbers
(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)
