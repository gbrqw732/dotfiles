(setq default-directory "~")
(setq home-dir "D:/home/86933/")


;; ;; Set PATH and exec-path
(let ((my-emacs-path (list
                       "/bin/"
                       "/usr/bin/"
                       "/usr/local/bin/"
		       "/cygdrive/d/home/86933/local/bin/"
		       "/cygdrive/d/home/86933/local/winapp/bin/"
		       "/cygdrive/d/programs/gmt5/bin/"
		       "/cygdrive/c/Program Files/Ghostgum/gsview/"
		       "/cygdrive/c/Program Files/Adobe/Acrobat 9.0/Acrobat/"
		       "/cygdrive/c/Program Files/Xming/"
		       "/cygdrive/c/Program Files/TeraPad/")))
   (setq exec-path my-emacs-path)
   (setenv "PATH" (mapconcat 'identity my-emacs-path ";")))

;; (setq load-path (append
;; 		 (list (concat home-dir "/.emacs.d")
;; 		       (concat home-dir "/.elisp"))
;; 		 load-path))
;; (add-to-list 'load-path (expand-file-name "~/.emacs.d") t)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp") t)
(add-to-list 'load-path (expand-file-name "~/.elisp") t)
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d") t)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/color-theme-6.6.0") t)
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/magit") t)
;; (setq load-path (append
;; 		 (list (expand-file-name "~/.emacs.d")
;; 		       (expand-file-name "~/.emacs.d/lisp")
;; 		       (expand-file-name "~/.elisp"))
;; 		 load-path))

;; package.el
(when (require 'package nil t)
  (add-to-list 'package-archives
	       '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/"))
  (package-initialize))

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
