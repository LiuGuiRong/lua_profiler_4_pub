#  lua profiler

## what is it

    A simple lua module for profiler.

## how to use? 

* first register lua function which you want to profiler, and set threshold time(ms)

`

    require "sys.profiler"

    sys.profiler.threshold(10)

    sys.profiler.register("game.t")

    sys.profiler.register{"game.t", "game.op", "game.cmd"}

`

* second, as requested, after running register function, you can report it by you own way

`

    sys.profiler.report(print)
    sys.profiler.report(log)

`

## about the author

```
    author: liuguirong
    email:hroomkeeper@gmail.com
    web: oxrush.com
```
