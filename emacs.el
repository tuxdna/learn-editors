(load-theme 'wombat t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(exec-path-from-shell magit rust-mode tuareg)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(when (memq window-system '(mac ns x))
  (require 'exec-path-from-shell)
  (exec-path-from-shell-initialize))


;; Moving Standard Backup Files
(setq backup-directory-alist '(("." . "~/.emacs.d/backups/")))

;; Moving Auto-Save Files
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/backups/" t)))



;; Define storage folder
(defvar my-emacs-backup-dir (expand-file-name "~/.emacs.d/backups/"))

;; Create folder if missing
(unless (file-exists-p my-emacs-backup-dir)
  (make-directory my-emacs-backup-dir t))

;; Route backups, auto-saves, and TRAMP remotes
(setq backup-directory-alist `(("." . ,my-emacs-backup-dir))
      tramp-backup-directory-alist `((".*" . ,my-emacs-backup-dir))
      auto-save-file-name-transforms `((".*" ,my-emacs-backup-dir t))
      tramp-auto-save-directory my-emacs-backup-dir
      backup-by-copying t    ; Prevents breaking file symlinks/hardlinks
      version-control t      ; Use numbered backups
      delete-old-versions t  ; Silently delete excess backups
      kept-new-versions 6    ; Number of newest versions to keep
      kept-old-versions 2)   ; Number of oldest versions to keep


