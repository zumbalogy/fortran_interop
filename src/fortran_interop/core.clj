(ns fortran-interop.core
  (require [net.n01se.clojure-jna :as jna]))


(defn -main [& args]
  (jna/invoke Integer c/printf "My number: %d\n" 5)
  (println "Hello, World!"))
