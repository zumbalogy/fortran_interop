(ns fortran-interop.core
  (require [net.n01se.clojure-jna :as jna]))

(def cell (int-array [1]))


(defn -main [& args]
  ; (println (jna/invoke Integer test/main 2 (int-array [1])))
  (println (jna/invoke Integer test/foo cell))
  (println (aget cell 0))
  (println "End of test."))
