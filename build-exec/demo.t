
Build

  $ cd $TESTDIR
  $ dune build bin/build_exec.exe
  $ dune build $TESTDIR/bin/build_exec.exe
  Error: File unavailable:
  /home/me/Code/github/dune-demo/build-exec/bin/build_exec.exe
  [1]
  $ dune build build_exec.exe
  Error: Don't know how to build build_exec.exe
  [1]
  $ dune build build_exec
  Error: Don't know how to build build_exec
  [1]
  $ cd bin
  $ dune build build_exec.exe
  Entering directory '/home/me/Code/github/dune-demo/build-exec'
  Leaving directory '/home/me/Code/github/dune-demo/build-exec'
  $ dune build ./build_exec.exe
  Entering directory '/home/me/Code/github/dune-demo/build-exec'
  Leaving directory '/home/me/Code/github/dune-demo/build-exec'
  $ dune build build_exec
  Entering directory '/home/me/Code/github/dune-demo/build-exec'
  Error: Don't know how to build build_exec
  Leaving directory '/home/me/Code/github/dune-demo/build-exec'
  [1]

Exec

  $ cd $TESTDIR
  $ dune exec build_exec
  Hello, World!
  $ dune exec bin/build_exec.exe
  Hello, World!
  $ dune exec build_exec.exe
  Error: Program 'build_exec.exe' not found!
  [1]
  $ dune exec $TESTDIR/bin/build_exec.exe
  Error: Program '/home/me/Code/github/dune-demo/build-exec/bin/build_exec.exe'
  not found!
  [1]
  $ cd bin
  $ dune exec build_exec
  Entering directory '/home/me/Code/github/dune-demo/build-exec'
  Hello, World!
  Leaving directory '/home/me/Code/github/dune-demo/build-exec'
  $ dune exec build_exec.exe
  Entering directory '/home/me/Code/github/dune-demo/build-exec'
  Error: Program 'build_exec.exe' not found!
  Hint: did you mean ./build_exec.exe?
  Leaving directory '/home/me/Code/github/dune-demo/build-exec'
  [1]
  $ dune exec ./build_exec.exe
  Entering directory '/home/me/Code/github/dune-demo/build-exec'
  Hello, World!
  Leaving directory '/home/me/Code/github/dune-demo/build-exec'
