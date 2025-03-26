dune version: 3.17

`@ocaml-index` is empty when not built from the root of the project.

Checking from the root, all good
```bash
~/Code/github/dune-demo/ocamlindex-nested$ dune rules @ocaml-index
((deps
  ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))
   (File
    (In_build_dir _build/default/bin/.main.eobjs/byte/dune__exe__Main.cmt))
   (File
    (In_build_dir _build/default/bin/.main.eobjs/byte/dune__exe__Main.cmti))
   (File (In_build_dir _build/default/lib/.myproj.objs/cctx.ocaml-index))))
 (targets
  ((files (_build/default/bin/.main.eobjs/cctx.ocaml-index)) (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    bin/.main.eobjs/cctx.ocaml-index
    bin/.main.eobjs/byte/dune__exe__Main.cmt
    bin/.main.eobjs/byte/dune__exe__Main.cmti))))

((deps ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))))
 (targets
  ((files (_build/default/lib/.myproj.objs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    lib/.myproj.objs/cctx.ocaml-index))))

((deps
  ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))
   (File
    (In_build_dir
     _build/default/test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmt))
   (File
    (In_build_dir
     _build/default/test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmti))))
 (targets
  ((files (_build/default/test/.test_myproj.eobjs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    test/.test_myproj.eobjs/cctx.ocaml-index
    test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmt
    test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmti))))
```

Then from `bin`, and it's empty
```bash
~/Code/github/dune-demo/ocamlindex-nested$ cd bin
~/Code/github/dune-demo/ocamlindex-nested/bin$ dune rules @ocaml-index
Entering directory '/home/me/Code/github/dune-demo/ocamlindex-nested'
~/Code/github/dune-demo/ocamlindex-nested/bin$
```

From a nested project is seems to do the job
```bash
~/Code/github/dune-demo/ocamlindex-nested/nested-project$ dune rules @ocaml-index 
Entering directory '/home/me/Code/github/dune-demo/ocamlindex-nested'
((deps
  ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))
   (File
    (In_build_dir _build/default/bin/.main.eobjs/byte/dune__exe__Main.cmt))
   (File
    (In_build_dir _build/default/bin/.main.eobjs/byte/dune__exe__Main.cmti))
   (File (In_build_dir _build/default/lib/.myproj.objs/cctx.ocaml-index))))
 (targets
  ((files (_build/default/bin/.main.eobjs/cctx.ocaml-index)) (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    bin/.main.eobjs/cctx.ocaml-index
    bin/.main.eobjs/byte/dune__exe__Main.cmt
    bin/.main.eobjs/byte/dune__exe__Main.cmti))))

((deps ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))))
 (targets
  ((files (_build/default/lib/.myproj.objs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    lib/.myproj.objs/cctx.ocaml-index))))

((deps
  ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))
   (File
    (In_build_dir
     _build/default/nested-project/bin/.main.eobjs/byte/dune__exe__Main.cmt))
   (File
    (In_build_dir
     _build/default/nested-project/bin/.main.eobjs/byte/dune__exe__Main.cmti))
   (File
    (In_build_dir
     _build/default/nested-project/lib/.nested.objs/cctx.ocaml-index))))
 (targets
  ((files (_build/default/nested-project/bin/.main.eobjs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    nested-project/bin/.main.eobjs/cctx.ocaml-index
    nested-project/bin/.main.eobjs/byte/dune__exe__Main.cmt
    nested-project/bin/.main.eobjs/byte/dune__exe__Main.cmti))))

((deps ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))))
 (targets
  ((files (_build/default/nested-project/lib/.nested.objs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    nested-project/lib/.nested.objs/cctx.ocaml-index))))

((deps
  ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))
   (File
    (In_build_dir
     _build/default/nested-project/test/.test_nested.eobjs/byte/dune__exe__Test_nested.cmt))
   (File
    (In_build_dir
     _build/default/nested-project/test/.test_nested.eobjs/byte/dune__exe__Test_nested.cmti))))
 (targets
  ((files
    (_build/default/nested-project/test/.test_nested.eobjs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    nested-project/test/.test_nested.eobjs/cctx.ocaml-index
    nested-project/test/.test_nested.eobjs/byte/dune__exe__Test_nested.cmt
    nested-project/test/.test_nested.eobjs/byte/dune__exe__Test_nested.cmti))))

((deps
  ((File (External /home/me/.opam/5.2.0/bin/ocaml-index))
   (File
    (In_build_dir
     _build/default/test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmt))
   (File
    (In_build_dir
     _build/default/test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmti))))
 (targets
  ((files (_build/default/test/.test_myproj.eobjs/cctx.ocaml-index))
   (directories ())))
 (context default)
 (action
  (chdir
   _build/default
   (run
    /home/me/.opam/5.2.0/bin/ocaml-index
    aggregate
    -o
    test/.test_myproj.eobjs/cctx.ocaml-index
    test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmt
    test/.test_myproj.eobjs/byte/dune__exe__Test_myproj.cmti))))
```
