;;(setq home-dir "d:/home/kudo")
(setq home-dir "/cygdrive/d/home/kudo")
(setq load-path (append
		 (list (expand-file-name "~/.emacs.d")
		       (expand-file-name "~/.emacs.d/color-theme-6.6.0/"))
		 load-path))


(prefer-coding-system 'utf-8-unix)
(set-file-name-coding-system 'cp932)

;;; diffのオプション
(setq diff-switches '("-u" "-p" "-N"))

;; (add-to-list 'default-frame-alist '(font . "Migu 1M"))
;; (cond ((string-match "^24\." emacs-version)
;;        (cond (window-system
;;               (set-default-font "Migu 1M")
;;               (set-fontset-font (frame-parameter nil 'font)
;;                                 'japanese-jisx0208
;;                                 '("Migu 1M" . "unicode-bmp"))
;;               ))))
(add-to-list 'default-frame-alist '(font . "Consolas-10.5"))
(cond ((string-match "^24\." emacs-version)
       (cond (window-system
              (set-default-font "Consolas")
              (set-fontset-font (frame-parameter nil 'font)
                                'japanese-jisx0208
                                '("Consolas" . "unicode-bmp"))
              ))))

;; (set-face-attribute 'default nil :family "Consolas" :height 104)
;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "MeiryoKe_Console"))
;; (setq face-font-rescale-alist '(("MeiryoKe_Console" . 1.08)))


;
; Font
;
;(setq my-font "ＭＳ ゴシック")
;; (setq my-font "Migu 1M")
;; (add-to-list 'default-frame-alist '(font . my-font))
;; (cond ((string-match "^24\." emacs-version)
;;        (cond (window-system
;;               (set-default-font my-font)
;;               (set-fontset-font (frame-parameter nil 'font)
;;                                 'japanese-jisx0208
;;                                 '(my-font . "unicode-bmp"))
;;               ))))
;; customized by user
(show-paren-mode t)
(setq untabify)

;; バッファ中の行番号表示
(global-linum-mode t)

;; スクロールバー・モード
(scroll-bar-mode -1)

;; ;; 行番号の表示
;; (line-number-mode t)

;; 列番号の表示
(column-number-mode t)

;; 時刻の表示
(require 'time)
(setq display-time-24hr-format t)
(setq display-time-string-forms '(24-hours ":" minutes))
(display-time-mode t)

;; 同一バッファ名にディレクトリ付与
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;; color-theme
(when (require 'color-theme nil t)
  (color-theme-initialize)
  (color-theme-simple-1))

;;
;; using shell cygwin
;;
;; Set PATH and exec-path
(let ((my-emacs-path (list
                       "/bin"
                       "/usr/bin"
                       "/usr/local/bin"
		       "/cygdrive/d/home/kudo/local/winapp/bin"
		       "/cygdrive/d/programs/gmt5/bin/"
		       "/cygdrive/c/Program Files/Ghostgum/gsview/"
		       "/cygdrive/c/Program Files/Adobe/Acrobat 9.0/Acrobat/"
		       "/cygdrive/c/Program Files/Xming/"
		       "/cygdrive/c/Program Files/TeraPad/")))
   (setq exec-path my-emacs-path)
   (setenv "PATH" (mapconcat 'identity my-emacs-path ";")))

;; Add my lisp dir to load-path
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; Set SHELL Value
;; (setq shell-file-name "zsh")
(setq shell-file-name "d:/cygwin64/bin/bash")
(setenv "SHELL" shell-file-name)
(setq explicit-shell-file-name shell-file-name) 


(require 'tramp)
;;(setq tramp-default-method "sshx")
(setq tramp-default-method "plink")
;;(setq tramp-shell-prompt-pattern "^[ $]+")
(setq tramp-shell-prompt-pattern "^.*[#$%>] *")

;
; tool-bar-mode
;
(custom-set-variables
 '(tool-bar-mode nil nil (tool-bar)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 編集行を目立たせる（現在行をハイライト表示する）
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "ForestGreen"))
    (t
     ()))
  "*Face used by hl-line.")
;;(setq hl-line-face 'hlline-face) ; ハイライト
(setq hl-line-face 'underline) ; 下線
(global-hl-line-mode)

;; ;
;; ; auto-install
;; ;
;; (add-to-list 'load-path "~/.emacs.d/auto-install/")
;; ; 変数 auto-install-use-wget == t の時は
;; ; 環境変数 http_proxy （小文字）にproxy server urlとポートを設定
;; ; export http_proxy=server_url:port
;; ; 変数 auto-install-use-wget を nil に設定して, 明示的に wget の使用を避けている場合は, ↓を設定
;; ;(setq url-proxy-services '(("http" . "server_url:port")))  
;; (setq url-proxy-services '(("http" . "iproxy0.inet.tgn.or.jp:80")))  

;; (require 'auto-install)
;; (setq auto-install-directory "~/.emacs.d/auto-install/")
;; (auto-install-update-emacswiki-package-name t)
;; (auto-install-compatibility-setup)             ; 互換性確保


;; ;
;; ; emacs-w3m
;; ;
;; (add-to-list 'load-path "~/.emacs.d/emacs-w3m/emacs-w3m-1.4.4")
;; (require 'w3m-load)

;;
;; http://qiita.com/akisute3@github/items/f5ccc2b027a9aaa13fe4
;;
;; (set x-select-enable-clipboard t)
;; (global-set-key "\C-y" 'x-clipboard-yank)


;; auto-installによってインストールされるEmacs Lispをロードパスに加える
;; デフォルトは~/.emacs.d/auto-install/
(add-to-list 'load-path "~/.emacs.d/auto-install/")
(require 'auto-install)
;; 起動時にEmacsWikiのページ名を補完候補に加える
(auto-install-update-emacswiki-package-name t)
;; install-elisp.el互換モードにする
(auto-install-compatibility-setup)
;; ediff関連のバッファを１つのフレームにまとめる
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(require 'tempbuf)
;; ファイルを開いたら自動的にtempbufを有効にする
(add-hook 'find-file-hooks 'turn-on-tempbuf-mode)
;; diredバッファに対してtempbufを有効にする
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)

;; ;; diredでWindowsに関連付けられたｱﾌﾟﾘを起動する 
;; ;; http://www.bookshelf.jp/soft/meadow_25.html 
(defun uenox-dired-winstart () 
"Type '[uenox-dired-winstart]': win-start the current line's file." 
(interactive) 
(if (eq major-mode 'dired-mode) 
(let ((fname (dired-get-filename))) 
(w32-shell-execute "open" fname) 
(message "win-started %s" fname)))) 
;;; dired のｷｰ割り当て追加 
(add-hook 'dired-mode-hook 
(lambda () 
(define-key dired-mode-map "z" 'uenox-dired-winstart))) ;; ｷｰﾊﾞｲﾝﾄﾞ 
;;(define-key dired-mode-map "\C-x\C-e" 'uenox-dired-winstart))) ;; ｷｰﾊﾞｲﾝﾄﾞ 


;; ;;----------------------------------------
;; ;; Win32: dierd からエクスプローラを開く
;; ;;----------------------------------------
;; ;; http://www.bookshelf.jp/soft/meadow_25.html#SEC281
;; ;; dired で "E" で開く。
;; (add-hook 'dired-mode-hook
;;           (lambda ()
;;             (local-set-key "E" 'dired-exec-explorer)))
;; ;;
;; (defun dired-exec-explorer ()
;;   "In dired, execute Explorer"
;;   (interactive)
;;   (explorer (dired-current-directory)))
;; ;;
;; ;; M-x explorer で現在のカレントディレクトリをもとにエクスプローラ
;; ;; を立ち上げる設定。
;; ;;
;; (define-process-argument-editing "/explorer\\.exe$"
;;   (lambda (x)
;;     (general-process-argument-editing-function x nil nil nil)))
;; (defun explorer (&optional dir)
;;   (interactive)
;;   (setq dir (expand-file-name (or dir default-directory)))
;;   (if (or (not (file-exists-p dir))
;;           (and (file-exists-p dir)
;;                (not (file-directory-p dir))))
;;       (message "%s can't open." dir)
;;     (setq dir (unix-to-dos-filename dir))
;;     (let ((w32-start-process-show-window t))
;;       (apply (function start-process)
;;              "explorer" nil "explorer.exe" (list (concat "/e,/root," dir))))))

;
; multi-term.el
;
(require 'multi-term)
;;
;;
(setq term-unbind-key-list '("C-x" "C-c" "<ESC>"))
;
(setq term-bind-key-alist
      '(("C-c C-c" . term-interrupt-subjob)
	("C-m" . term-send-raw)
	("M-f" . term-send-forward-word)
	("M-b" . term-send-backward-word)
	("M-o" . term-send-backspace)
	("M-p" . term-send-up)
	("M-n" . term-send-down)
	("M-M" . term-send-forward-kill-word)
	("M-N" . term-send-backward-kill-word)
	("M-r" . term-send-reverse-search-history)
	("M-," . term-send-input)
	("M-." . comint-dynamic-complete)))
