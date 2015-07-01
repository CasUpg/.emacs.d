(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-battery-mode t)
 '(highlight-current-line-globally t nil (highlight-current-line))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-blue2)


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ido-mode 1)
(ido-everywhere 1)

;(setq org-completion-use-ido t)
(setq magit-completing-read-function 'magit-ido-completing-read)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)

(add-to-list 'load-path "path-to-julia-mode")
(require 'julia-mode)

(add-to-list 'auto-mode-alist '("\\.abc\\'"  . abc-mode))
(add-to-list 'auto-mode-alist '("\\.abp\\'"  . abc-mode))
(autoload 'abc-mode "abc-mode" "abc music files" t)
(add-to-list 'auto-insert-alist '(abc-mode . abc-skeleton))

(require 'iso-transl)

(require 'discover)
(global-discover-mode 1)

(global-set-key (kbd "C-h C-m") 'discover-my-major)

(global-set-key (kbd "s-SPC") 'hippie-expand)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-current-line-face ((t (:background "blue violet")))))
