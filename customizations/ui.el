(menu-bar-mode -1)
(tool-bar-mode -1)
(global-linum-mode)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")

(load-theme 'tomorrow-night-bright t) ;; Experiment with themes

(set-face-attribute 'default nil :height 140)

(setq x-select-enable-clipboard t)
;; What does this do?
(setq x-select-enable-primary t)
(setq save-interprogram-paste-before-kill t)
;;(apropos-do-all t)
;;(mouse-yank-at-point t)

(blink-cursor-mode 0)

(setq-default frame-title-format "%b (%f)")

(global-set-key (kbd "s-t") '(lambda () (interactive)))

(setq ring-bell-function 'ignore)

(windmove-default-keybindings)

(turn-on-pbcopy)

