(add-hook 'clojure-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'subword-mode)

(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)

(setq cider-show-error-buffer t)
;;(setq cider-auto-select-error-buffer t)

(setq cider-repl-history-file "~/.emacs.d/cider-history")
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)

(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.boot$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljs.*$" . clojure-mode))
(add-to-list 'auto-mode-alist '("lein-env" . enh-ruby-mode))


(require 'clj-refactor)

(add-hook 'clojure-mode-hook (lambda ()
                                (clj-refactor-mode 1)
                                (cljr-add-keybindings-with-prefix "C-c RET")))



;; key bindings
;; these help me out with the way I usually develop web apps
;; (defun cider-start-http-server ()
  ;; (interactive)
  ;; (cider-load-current-buffer)
  ;; (let ((ns (cider-current-ns)))
    ;; (cider-repl-set-ns ns)
    ;; (cider-interactive-eval (format "(println '(def server (%s/start))) (println 'server)" ns))
    ;; (cider-interactive-eval (format "(def server (%s/start)) (println server)" ns))))


;; (defun cider-refresh ()
  ;; (interactive)
  ;; (cider-interactive-eval (format "(user/reset)")))

;; (defun cider-user-ns ()
  ;; (interactive)
  ;; (cider-repl-set-ns "user"))


;; (eval-after-load 'cider
  ;; '(progn
     ;; (define-key clojure-mode-map (kbd "C-c C-v") 'cider-start-http-server)
     ;; (define-key clojure-mode-map (kbd "C-M-r") 'cider-refresh)
     ;; (define-key clojure-mode-map (kbd "C-c u") 'cider-user-ns)
     ;; (define-key cider-mode-map (kbd "C-c u") 'cider-user-ns)))
