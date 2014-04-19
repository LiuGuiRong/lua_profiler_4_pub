#  lua profiler

## what is it

    A simple lua module for profiler.

    (you aslo can download in here  (the [lua_profiler][1]). )

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
    qq: 16839242
    web: oxrush.com
```

[1]: http://git.oxrush.com/liuguirong/lua_profiler_4_pub/tree/master
