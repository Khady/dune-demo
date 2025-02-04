```
$ dune describe workspace --verbose
Shared cache: enabled
Shared cache location: /home/me/.cache/dune/db
Workspace root: /tmp/demo-dune-describe-crash
Auto-detected concurrency: 256
Dune context:
 { name = "default"
 ; kind = "default"
 ; profile = Dev
 ; merlin = true
 ; fdo_target_exe = None
 ; build_dir = In_build_dir "default"
 ; instrument_with = []
 }
Internal error, please report upstream including the contents of _build/log.
Description:
  ("modules_and_obj_dir: failed lookup",
  { keys = []; for_ = Exe { first_exe = "an_exe" } })
Raised at Stdune__Code_error.raise in file
  "otherlibs/stdune/src/code_error.ml", line 10, characters 30-62
Called from Fiber__Core.O.(>>|).(fun) in file "vendor/fiber/src/core.ml",
  line 253, characters 36-41
Called from Fiber__Scheduler.exec in file "vendor/fiber/src/scheduler.ml",
  line 76, characters 8-11

I must not crash.  Uncertainty is the mind-killer. Exceptions are the
little-death that brings total obliteration.  I will fully express my cases. 
Execution will pass over me and through me.  And when it has gone past, I
will unwind the stack along its path.  Where the cases are handled there will
be nothing.  Only I will remain.
```
