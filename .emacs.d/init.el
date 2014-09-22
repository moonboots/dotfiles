; ;; http://whattheemacsd.com/
; ;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; (setq initial-scratch-message nil)
(if window-system
    (set-face-attribute 'default nil :height 100 :font "Ubuntu Mono"))

; (load "~/.emacs.d/color-theme-wombat.el")
(load-theme 'wombat t)
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(custom-enabled-themes (quote (wombat))))

(setq debug-on-error t)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
; (add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is non

;; (add-to-list 'load-path "~/.emacs.d/evil")
;; (require 'evil)
;; (evil-mode 0)

;; scroll without moving cursor
(global-set-key "\M-n" 'scroll-up-line)
(add-hook 'info-mode-hook (lambda ()
(define-key info-mode-map (kbd "M-n") 'scroll-up-line)))
(global-set-key "\M-p" 'scroll-down-line)

(add-hook 'org-mode-hook
          (lambda ()
            (org-indent-mode t)
            (setq org-use-speed-commands t)
	    (visual-line-mode))
          t)


;; (set-frame-font "ubuntu Mono")

; ; http://stackoverflow.com/questions/3984730/emacs-gui-with-emacs-daemon-not-loading-fonts-correctly
;; (setq default-frame-alist '((font . "Ubuntu Mono")))

; ; http://emacs-fu.blogspot.com/2010/01/duplicating-lines-and-commenting-them.html
; (defun djcb-duplicate-line (&optional commentfirst)
;   "comment line at point; if COMMENTFIRST is non-nil, comment the original" 
;   (interactive)
;   (beginning-of-line)
;   (push-mark)
;   (end-of-line)
;   (let ((str (buffer-substring (region-beginning) (region-end))))
;     (when commentfirst
;     (comment-region (region-beginning) (region-end)))
;     (insert-string
;       (concat (if (= 0 (forward-line 1)) "" "\n") str "\n"))
;     (forward-line -1)))

; ;; duplicate a line
; (global-set-key (kbd "C-c y") 'djcb-duplicate-line)

; ;; duplicate a line and comment the first
; (global-set-key (kbd "C-c c") (lambda()(interactive)(djcb-duplicate-line t)))





(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; Use ido everywhere
;; (require 'ido-ubiquitous)
;; (ido-ubiquitous-mode 1)

;; ;; Fix ido-ubiquitous for newer packages
;; (defmacro ido-ubiquitous-use-new-completing-read (cmd package)
;;   `(eval-after-load ,package
;;      '(defadvice ,cmd (around ido-ubiquitous-new activate)
;;         (let ((ido-ubiquitous-enable-compatibility nil))
;;           ad-do-it))))

;; (ido-ubiquitous-use-new-completing-read webjump 'webjump)
;; (ido-ubiquitous-use-new-completing-read yas/expand 'yasnippet)
;; (ido-ubiquitous-use-new-completing-read yas/visit-snippet-file 'yasnippet)

;  (mapc
;   (lambda (face)
;     (set-face-attribute face nil :weight 'normal :underline nil))
;   (face-list))

;; (set-scroll-bar-mode nil)
; ; ;; (load "~/.emacs.d/haskell.el")
; ; (add-to-list 'load-path "~/code3/haskell-mode")

; ; ;; Add the current dir for loading haskell-site-file.
; ; (add-to-list 'load-path "~/.emacs.d/elpa/haskell-mode-2.8.0")
; ; ;; Always load via this. If you contribute you should run `make all`
; ; ;; to regenerate this.
; ; (load "haskell-site-file")
; ; ;; (load "haskell-

; ; ;; Customization


; ; (add-hook 'haskell-mode-hook 'haskell-hook)
; ; (add-hook 'haskell-cabal-mode-hook 'haskell-cabal-hook)

; ; ;; Haskell main editing mode key bindings.
; ; (defun haskell-hook ()
; ;   ;; Use simple indentation.
; ;   (turn-on-haskell-simple-indent)
; ;   (define-key haskell-mode-map (kbd "<return>") 'haskell-simple-indent-newline-same-col)
; ;   (define-key haskell-mode-map (kbd "C-<return>") 'haskell-simple-indent-newline-indent)

; ;   ;; Load the current file (and make a session if not already made).

					; ;   (define-key haskell-mode-map [?\C-c ?\C-l] 'haskell-process-load-file)
; ;   (define-key haskell-mode-map [f5] 'haskell-process-load-file)

; ;   ;; Switch to the REPL.
; ;   (define-key haskell-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch)
; ;   ;; “Bring” the REPL, hiding all other windows apart from the source
; ;   ;; and the REPL.
; ;   (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)

; ;   ;; Build the Cabal project.
; ;   (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
; ;   ;; Interactively choose the Cabal command to run.
; ;   (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-cabal)

; ;   ;; Get the type and info of the symbol at point, print it in the
; ;   ;; message buffer.
; ;   (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
; ;   (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)

; ;   ;; Contextually do clever things on the space key, in particular:
; ;   ;;   1. Complete imports, letting you choose the module name.
; ;   ;;   2. Show the type of the symbol after the space.
; ;   (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)

; ;   ;; Jump to the imports. Keep tapping to jump between import
; ;   ;; groups. C-u f8 to jump back again.
; ;   (define-key haskell-mode-map [f8] 'haskell-navigate-imports)

; ;   ;; Jump to the definition of the current symbol.
; ;   (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-tag-find)

; ;   ;; Save the current buffer and generate etags (a TAGS file) for the
; ;   ;; whole project.
; ;   (define-key haskell-mode-map (kbd "C-x C-s") 'haskell-mode-save-buffer)

; ;   ;; Indent the below lines on columns after the current column.
; ;   (define-key haskell-mode-map (kbd "C-<right>")
; ;     (lambda ()
; ;       (interactive)
; ;       (haskell-move-nested 1)))
; ;   ;; Same as above but backwards.
; ;   (define-key haskell-mode-map (kbd "C-<left>")
; ;     (lambda ()
; ;       (interactive)
; ;       (haskell-move-nested -1))))

; ; ;; Useful to have these keybindings for .cabal files, too.
; ; (defun haskell-cabal-hook ()
; ;   (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
; ;   (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal)
; ;   (define-key haskell-cabal-mode-map (kbd "C-`") 'haskell-interactive-bring)
; ;   (define-key haskell-cabal-mode-map [?\C-c ?\C-z] 'haskell-interactive-switch))

; (setq-default indent-tabs-mode nil)
; (setq-default tab-width 2)
; (setq indent-line-function 'insert-tab)

; ;; sends newline delimited block of sql to sql repl
; ;; (fset 'jack-execute-sql-block
; ;;   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ([67108896 67108896 134217851 67108896 134217853 3 18 21 67108896 21 67108896] 0 "%d")) arg)))



; ;; (add-to-list 'load-path "~/.emacs.d")
; ;; (eval-after-load "sql"
; ;;       (load-library "sql-indent"))

; (setq inhibit-splash-screen t)

; (set-cursor-color "#EB4343") 

; ;; return cursor to edit location faster after closing paren
; (setq blink-matching-delay 0.1)

; ;; disable bold fonts
; ;; http://stackoverflow.com/questions/2064904/how-to-disable-bold-font-weight-globally-in-emacs
; ;; ubuntu mono bold renders taller than nonbold
; ;; http://www.infinality.net/forum/viewtopic.php?f=2&t=218
; (mapc
;  (lambda (face)
;    (set-face-attribute face nil :weight 'normal :underline nil))
;  (face-list))

; (setq x-select-enable-clipboard t)

; ; (add-to-list 'load-path "~/.emacs.d/js2-mode")
; ; (add-to-list 'load-path "~/.emacs.d/emacs-http-server")
; ; (require 'simple-httpd)

; ; ;; (autoload 'js2-mode "js2-mode" nil t)
; ; ;; (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

; ; ;; (add-to-list 'load-path "~/.emacs.d/emacs-http-server")
; ; (load "~/.emacs.d/skewer-mode/skewer-mode.el")

(set-cursor-color "chartreuse3")

(load "~/.emacs.d/window-numbering.el")
(require 'window-numbering)
(window-numbering-mode 1)

; (load "~/.emacs.d/browse-kill-ring/browse-kill-ring.el")
; (require 'browse-kill-ring)
; (browse-kill-ring-default-keybindings)

; (defun jack-execute-sql-block ()
;   (interactive)
;   (save-excursion
;     (let (pt)
;      (backward-sentence)
;      (setq pt (point))
;      ;; (push-mark)
;      (forward-sentence)
;      (sql-send-region pt (point))
;      ;; (set-mark pt)
;      )))

; (defun jack-edit-init ()
;   (interactive)
;   (find-file "~/.emacs.d/init.el"))

; (global-set-key (kbd "C-c j") 'jack-execute-sql-block)

; (put 'narrow-to-region 'disabled nil)

; http://ergoemacs.org/emacs/effective_emacs.html
(defalias 'list-buffers 'ibuffer)

;; http://whattheemacsd.com/
;; Write backup files to own directory
(setq backup-directory-alist
  `(("." . ,(expand-file-name
              (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

;; Save point position between sessions
(require 'saveplace)
(setq-default save-place t)
(setq save-place-file (expand-file-name ".places" user-emacs-directory))

(defun jack-lisp-mode ()
  (load "~/.emacs.d/lisp.el"))

;; Comment function
(defun comment-or-uncomment-this (&optional lines)
     (interactive "P")
     (if mark-active
             (if (< (mark) (point))
	                (comment-or-uncomment-region (mark) (point))
	                (comment-or-uncomment-region (point) (mark)))
             (comment-or-uncomment-region
	                (line-beginning-position)
	                (line-end-position lines))))


(load "~/.emacs.d/clojure-mode/clojure-mode.el")
(require 'clojure-mode)

(defun jack-cider-refresh ()
  (interactive)
  (cider-interactive-eval
    "(user/reset)"))

(defun jack-clojure-mode ()
  ; (add-to-list 'load-path "~/.emacs.d/dash.el")
  ; (require 'dash)

  ; (add-to-list 'load-path "~/.emacs.d/pkg-info.el")
  ; (require 'pkg-info)

  ; (add-to-list 'load-path "~/.emacs.d/cider")
  ; ; (load "~/.emacs.d/cider/cider.el")
  ; (require 'cider)
  (jack-lisp-mode)
  ;; Comment function
  (global-set-key (kbd "C-;") 'comment-or-uncomment-this)
  (setq cider-hide-special-buffers t)
  (add-hook 'cider-interaction-mode-hook
    'cider-turn-on-eldoc-mode)
  (setq cider-popup-stacktraces nil)
  (setq cider-popup-stacktraces-in-repl t)
  (add-to-list 'same-window-buffer-names "*cider*")
  (add-hook 'cider-mode-hook 'subword-mode)
  (add-hook 'cider-mode-hook 'paredit-mode)
  (add-hook 'cider-mode-hook 'rainbow-delimiters-mode)

  (global-set-key (kbd "C-c j") 'jack-cider-refresh)
  )

; (defun jack-cider-refresh ()
;   (interactive)
;   (cider-interactive-eval
;     "(use '[clojure.tools.namespace.repl :only [refresh]])
;      (require 'http-server.core)
;      (if (resolve 'stop-my-app) (stop-my-app))
;      (refresh)
;      (def stop-my-app (http-server.core/create-application))"))



(add-hook 'ielm-mode-hook 'jack-lisp-mode)
(add-hook 'emacs-lisp-mode-hook 'jack-lisp-mode)
(add-hook 'clojure-mode-hook 'jack-clojure-mode)

;; ;; http://www.emacswiki.org/emacs-en/InteractivelyDoThings
;; ;; Display ido results vertically, rather than horizontally
;; (setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
;; (defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
;; (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
;; (load "~/.emacs.d/elpa/auto-complete-1.4/auto-complete.el")


; (add-to-list "~/.emacs.d/auto-complete/")
; ;; (load "~/.emacs.d/auto-complete/auto-complete-config.el")
; (require 'auto-complete-config)
; (ac-config-default)

; (add-to-list 'load-path "~/.emacs.d/auto-complete")    ; This may not be appeared if you have already added.
; (require 'auto-complete-config)
; (add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")

; (ac-config-default)
; (global-set-key (kbd "C-c /") 'ac-complete-filename)
;; (setq tab-always-indent 'complete)
;; (add-to-list 'completion-styles 'initials t)
;; ;; (auto-complete-mode)
;; (load "/home/jack/.emacs.d/")

; (window-numbering-mode 1)

(load "~/.emacs.d/st.el")

; http://offbytwo.com/2012/01/15/emacs-plus-paredit-under-terminal.html
(define-key input-decode-map "\e[1;5C" [C-right])
(define-key input-decode-map "\e[1;5D" [C-left])

; http://www.emacswiki.org/emacs-en/BackspaceKey
; (global-set-key [(control h)] 'delete-backward-char)
; (global-set-key (kbd "C-h") 'delete-backward-char)
; (define-key key-translation-map [?\C-h] [?\C-?])
; (define-key key-translation-map [?\C-?] [?\C-h])

; https://www.gnu.org/software/emacs/manual/html_node/emacs/DEL-Does-Not-Delete.html
(normal-erase-is-backspace-mode 0)
