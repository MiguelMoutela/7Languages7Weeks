(defmacro unless
  ([test body] `(if (not ~test) ~body))
  ([test body otherBody] `(if (not ~test) ~body ~otherBody)))


(assert (= (if true "success") "success") )
(assert (= (unless false "success") "success") )
(assert (= (unless true "success" "failure") "failure") )
