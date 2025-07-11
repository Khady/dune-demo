  $ cd $TESTDIR

Working commands

  $ dune build bin/build_exec.exe
  $ dune build $TESTDIR/bin/build_exec.exe
  Error: File unavailable:
  /home/me/Code/github/dune-demo/build-exec/bin/build_exec.exe
  [1]
  $ dune exec build_exec
  Hello, World!
  $ dune exec bin/build_exec.exe
  Hello, World!
  $ dune exec $TESTDIR/bin/build_exec.exe
  Error: Program '/home/me/Code/github/dune-demo/build-exec/bin/build_exec.exe'
  not found!
  [1]

Failing commands

  $ dune build build_exec.exe
  Error: Don't know how to build build_exec.exe
  [1]
  $ dune build build_exec
  Error: Don't know how to build build_exec
  [1]
  $ dune exec build_exec.exe
  Error: Program 'build_exec.exe' not found!
  [1]
