# Towers of Hanoi Game Solver

## Current implementation

Currently, the program solves the Towers of Hanoi problem by giving a list of moves to follow. The actual code begins by returning an empty list for the trivial solution of moving zero discs, and builds upon it recursively so as to eventually be able to move any number of discs from a to b.

Here is an example of how to run it, and the output. I added whitespace between each command/output pair for clarity:

```
Matts-MacBook-Pro:towers-of-hanoi matt$ ghci
GHCi, version 8.10.1: https://www.haskell.org/ghc/  :? for help
Prelude> :l hanoi
[1 of 1] Compiling Main             ( hanoi.hs, interpreted )
Ok, one module loaded.

*Main> hanoi 0 "start" "target" "extra"
[]

*Main> hanoi 1 "start" "target" "extra"
[("start","target")]

*Main> hanoi 2 "start" "target" "extra"
[("start","extra"),("start","target"),("extra","target")]

*Main> hanoi 2 1 2 3
[(1,3),(1,2),(3,2)]

*Main> hanoi 3 "start" "target" "extra"
[("start","target"),("start","extra"),("target","extra"),("start","target"),("extra","start"),("extra","target"),("start","target")]

*Main> hanoi 3 "a" "b" "c"
[("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b")]
