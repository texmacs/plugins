(define (python-serialize lan t)
  (with u (pre-serialize lan t)
    (with s (texmacs->code (stree->tree u))
      (string-append  s  "\n<EOF>\n"))))

(define (graph-launcher)
  (if (os-mingw?)
      "tm_graphs.bat"
      "tm_graphs"))

(plugin-configure graphs
  (:launch ,(graph-launcher))
  (:serializer ,python-serialize)
  (:session "Graph"))
