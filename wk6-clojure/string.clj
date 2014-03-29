(defn big [st n]
  (> (count st) n )
)

(assert (big "xx", 1))
(assert (big "xxx", 2))
(assert (= (big "xxx", 3) false))
(println "here\n")
