(autoload 'paredit-mode "paredit"
      "Minor mode for pseudo-structurally editing Lisp code." t)

(paredit-mode 1)

; (add-hook 'clojure-mode-hook
;           (lambda()
;             (add-to-list 'load-path "~/.emacs.d/clj-imports")
;            ))

; (defun lisp-my-customizations ()
(custom-set-faces
       ;; custom-set-faces was added by Custom.
       ;; If you edit it by hand, you could mess it up, so be careful.
       ;; Your init file should contain only one such instance.
       ;; If there is more than one, they won't work right.
       '(rainbow-delimiters-depth-1-face ((t (:foreground "dark orange" :underline nil :weight normal))))
       '(rainbow-delimiters-depth-2-face ((t (:foreground "goldenrod" :underline nil :weight normal))))
       '(rainbow-delimiters-depth-3-face ((t (:foreground "blue violet" :underline nil :weight normal))))
       '(rainbow-delimiters-depth-4-face ((t (:foreground "cornflower blue" :underline nil :weight normal))))
       '(rainbow-delimiters-depth-5-face ((t (:foreground "coral" :underline nil :weight normal))))
       '(rainbow-delimiters-depth-6-face ((t (:foreground "lime green" :underline nil :weight normal)))))

(local-set-key (kbd "RET") 'newline-and-indent)
(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode)
; (set-variable 'lisp-indent-offset 2)

; (add-hook 'lisp-mode-hook 'lisp-my-customizations)
; (add-hook 'emacs-lisp-mode-hook 'lisp-my-customizations)

; (add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

; (defun jack-enable-paredit ()
;   (paredit-mode 1))
; (add-hook 'ielm-mode-hook 'jack-enable-paredit)
; (add-hook 'emacs-lisp-mode-hook 'jack-enable-paredit)
; (add-hook 'clojure-mode-hook 'jack-enable-paredit)

; (add-hook 'lisp-mode-hook
;   (lambda ()
;     (setq inferior-lisp-program "/usr/bin/sbcl")
;     (add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
;     (require 'slime)
;     (slime-setup)
;     (paredit-mode)))
