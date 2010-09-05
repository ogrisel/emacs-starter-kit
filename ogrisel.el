;(load-file "~/.emacs.d/ogrisel/color-theme-sunburst.el")
(load-file (concat user-specific-dir "/color-theme-sunburst.el"))
(color-theme-tm)

(defun fontify-frame (frame)
  (set-frame-parameter frame 'font "Monospace-8"))

;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)

(autoload 'linum-mode "linum" "toggle line numbers on/off" t)
(global-set-key (kbd "C-<f5>") 'linum-mode)
