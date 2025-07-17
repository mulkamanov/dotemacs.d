;;; -*- lexical-binding: t -*-
;;; Package --- Summary

;;; Commentary:
;; Emacs init file responsible for either loading a pre-compiled configuration file
;; or tangling and loading a literate org configuration file.

;;; Code:

;; Don't attempt to find/apply special file handlers to files loaded during startup.
(let ((file-name-handler-alist nil))
  ;; If config is pre-compiled, then load that
  (if (file-exists-p (expand-file-name "emacs.elc" user-emacs-directory))
      (load-file (expand-file-name "emacs.elc" user-emacs-directory))
    ;; Otherwise use org-babel to tangle and load the configuration
    (require 'org)
    (org-babel-load-file (expand-file-name "emacs.org" user-emacs-directory))))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-babel-load-languages '((emacs-lisp . t) (shell . t)))
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(package-selected-packages
   '(yaml-mode which-key try treemacs-projectile treemacs-persp treemacs-magit toc-org smartparens rainbow-delimiters pyvenv py-isort py-autopep8 persp-mode-projectile-bridge org-contrib ob-restclient monokai-pro-theme magit-popup lsp-ui lsp-treemacs lsp-ivy link-hint json-mode ivy-avy highlight-indent-guides git-timemachine git-modes gcmh forge flycheck-clj-kondo dumb-jump diff-hl counsel-projectile company-quickhelp column-enforce-mode cider browse-at-remote avy-flycheck anakondo anaconda-mode amx ace-link))
 '(projectile-project-root-functions
   '(projectile-root-local projectile-root-top-down projectile-root-bottom-up projectile-root-top-down-recurring) nil nil "Customized with use-package projectile"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
