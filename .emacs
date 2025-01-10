;; -*- Emacs-Lisp -*-
;; import the master.emacs file
(defconst master-dir (getenv "LOCAL_ADMIN_SCRIPTS"))
;;(defconst engshare-master (getenv "ADMIN_SCRIPTS"))
;;(if (file-exists-p (expand-file-name "master.emacs" master-dir))
;;    (load-library (expand-file-name "master.emacs" master-dir))
;;  (load-library (expand-file-name "master.emacs" engshare-master)))

; scroll one line at a time
(setq scroll-step 5)

; don't add new lines with down arrow
(setq next-line-add-newlines nil)

; don't show splash screen
(setq inhibit-startup-message t)

; disable close window
(global-unset-key "\C-x\C-z")


(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(global-set-key "" 'electric-buffer-list)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(global-set-key "\C-h" 'delete-backward-char)
