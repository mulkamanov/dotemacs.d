;;; early-init.el -*- lexical-binding: t; -*-

;; Emacs HEAD (27+) introduces early-init.el, which is run before init.el,
;; before most of its package and UI initialization happens. We can use this
;; opportunity to cull parts of the startup process early.

(setq package-enable-at-startup nil)

;; Faster to disable these here (before they've been initialized)
(setq tool-bar-mode nil
      menu-bar-mode nil
      scroll-bar-mode nil
      use-dialog-box nil
      ring-bell-function 'ignore)
(modify-all-frames-parameters '((vertical-scroll-bars)))