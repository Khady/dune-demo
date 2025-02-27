```
~/Code/github/dune-demo/dune-empty-stdout-error$ cat dune
(rule (target f.json) (action (with-stdout-to %{target} (copy sub/file.json f.json))))
~/Code/github/dune-demo/dune-empty-stdout-error$ dune build
Error: open(_build/default/f.json): Permission denied
-> required by _build/default/f.json
-> required by alias all
-> required by alias default
```
