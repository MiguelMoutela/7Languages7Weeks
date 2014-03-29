(defn collection-type [col]
  ( if (list? col) :list (if (map? col) :map (if (vector? col) :vector nil )) )
)

(assert (= (collection-type [:a :b :c]) :vector))
(assert (= (collection-type '(:a :b :c)) :list))
(assert (= (collection-type {:a :b , :c :d }) :map))
(println "here\n")
