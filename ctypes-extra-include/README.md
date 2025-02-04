```
$ dune exec --profile=release --cache=disabled -- ./foo.exe
hello world
$ head _build/default/ncurses__c_cout_generated_types.c
#include "ocaml_bindings.h"
   #include <ncurses.h>
#include <stdio.h>
#include <stddef.h>
#include "ctypes_cstubs_internals.h"

int main(void)
{

  puts("[@@@warning \"-9-27\"]");
```
