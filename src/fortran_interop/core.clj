(ns fortran-interop.core
  (require [net.n01se.clojure-jna :as jna]))


(defn -main [& args]
  (println
    (jna/invoke Integer foo/foomult 200 2))
  (println "Hello, World!"))
