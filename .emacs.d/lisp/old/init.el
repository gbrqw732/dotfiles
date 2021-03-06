(setq home-dir "D:/home/86933/")
;; (setq load-path (append
;; 		 (list (concat home-dir "/.emacs.d")
;; 		       (concat home-dir "/.elisp"))
;; 		 load-path))
(setq load-path (append
		 (list (expand-file-name "~/.emacs.d")
		       (expand-file-name "~/.elisp"))
		 load-path))
(cond
 ((equal emacs-version "24.4.1")
 (load "init_24.3.1"))
 ((equal emacs-version "24.3.1")
 (load "init_24.3.1"))
 ((equal emacs-version "24.2.1")
 (load "init_24.2.1")))

;; ;; SKK
;; (require 'skk-autoloads)
;; (global-set-key "\C-x\C-j" 'skk-mode)
;; (global-set-key "\C-xj" 'skk-auto-fill-mode)
;; (global-set-key "\C-xt" 'skk-tutorial)
;; (setq skk-large-jisyo "/app/emacs/emacs/etc/skk/SKK-JISYO.L")

;; holiday-general-horiday
(load "holiday-general-holiday")

;; info-file
(load "file-info")

