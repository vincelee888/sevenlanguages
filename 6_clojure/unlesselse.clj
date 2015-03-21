(defmacro unless [test body otherwise]
	(list 'if (list 'not test) body otherwise)
)