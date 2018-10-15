

(require 'package)

(add-to-list 'exec-path "")

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar packages
  '(ido-ubiquitous
    smex
    projectile
    magit
    undo-tree
    windmove
    pbcopy

    paredit
    rainbow-delimiters

    clojure-mode
    cider
    clj-refactor
    company

    js2-mode
    js2-refactor
    nodejs-repl

    inf-ruby
    robe

    tagedit

    haml-mode
    sass-mode
    jade-mode

    sql-indent

    nxml-mode

    exec-path-from-shell))

(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)))


(when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "hash-fix.el")
(load "navigation.el")
(load "ui.el")
(load "xml.el")
(load "editing.el")
(load "elisp-editing.el")
(load "misc.el")
(load "setup-clojure.el")
(load "setup-js.el")
(load "database.el")
(load "screen.el")
(load "xclip.el")

(turn-on-xclip)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (xml+ mingus csv-mode smex ido-ubiquitous undo-tree tagedit sql-indent sass-mode robe rainbow-delimiters projectile pbcopy nxml-mode nodejs-repl magit js2-refactor jade-mode company clj-refactor))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
