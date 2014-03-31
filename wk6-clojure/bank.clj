; Heavily influenced by: http://sermoa.wordpress.com/2011/07/24/week-6-day-2-clojure-macros-and-protocols/

(defprotocol Account
  (balance [a])
  (credit [a amount])
  (debit [a amount]))

(defrecord PersonalAccount [balance]
  Account
  (balance [_] balance)
  (credit [_ monies] (PersonalAccount. (+ balance monies)))
  (debit [_ monies] (PersonalAccount. (- balance monies)))
)

(def savings (PersonalAccount. 10.00))

(assert (= (balance savings) 10.00))

(assert (= (balance (debit savings 2.00)) 8.00))

(assert (= (balance (credit savings 2.00)) 12.00))
