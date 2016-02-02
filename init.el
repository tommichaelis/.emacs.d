

(require 'package)


(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

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

    nxml-mode))

(dolist (p packages)
  (when (not (package-installed-p p))
    (package-install p)))


(add-to-list 'load-path "~/.emacs.d/customizations")

(load "hash-fix.el")
(load "navigation.el")
(load "ui.el")
(load "editing.el")
(load "elisp-editing.el")
(load "misc.el")
(load "setup-clojure.el")
(load "setup-js.el")
(load "database.el")
(load "screen.el")
