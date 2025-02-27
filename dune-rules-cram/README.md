```
~/Code/github/dune-demo/dune-rules-cram$ cat dune
(cram (deps sub/file.json))
~/Code/github/dune-demo/dune-rules-cram$ cat run.t
  $ pwd

  $ tree -a
~/Code/github/dune-demo/dune-rules-cram$ dune rules @runtest
~/Code/github/dune-demo/dune-rules-cram$ dune build @runtest
File "run.t", line 1, characters 0-0:
------ run.t
++++++ run.t.corrected
File "run.t", line 2, characters 0-1:
 |  $ pwd
+|  $TESTCASE_ROOT
 |
 |  $ tree -a
+|  .
+|  `-- sub
+|      `-- file.json -> ../../../../default/sub/file.json
+|  
+|  2 directories, 1 file
```
