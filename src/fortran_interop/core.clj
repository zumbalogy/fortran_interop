(ns fortran-interop.core
  (require [net.n01se.clojure-jna :as jna]))

(defn -main [& args]
  (println
    (jna/invoke Integer test/main 2 (int-array [1])))
  (println "2 plus 2 is 4, minus 1 thats 3; quick maths."))
