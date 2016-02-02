(load "database-list.el")

(defun db-connect (database)
  (interactive
   (list (completing-read "Select Database: " (mapcar (lambda (c) (list (car c) (car c))) sql-connection-alist))))
  (sql-connect database))


(require 'sql-indent)
