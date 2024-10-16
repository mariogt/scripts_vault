(require 'cl-lib)
(require 'cl-extra)
(let ((str "The quick brown fox jumps over the lazy dog ´`''\"\"1lI|¦!Ø0Oo{[()]}.,:; ")
      (font-families (cl-remove-duplicates
		      (sort (font-family-list)
			    (lambda(x y) (string< (upcase x) (upcase y))))
		      :test 'cl-equalp)))
  (dolist (ff font-families)
    (insert
     (propertize str 'font-lock-face `(:family ,ff))               ff "\n"
     (propertize str 'font-lock-face `(:family ,ff :slant italic)) ff "\n")))
