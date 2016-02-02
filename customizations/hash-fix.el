;; Allow hash to be entered  
(defun insert-hash ()
  "Inserts a pound into the buffer"
  (insert "#"))
(global-set-key (kbd "M-3") '(lambda()(interactive)(insert-hash)))
