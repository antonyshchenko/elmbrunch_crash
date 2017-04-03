# ElmbrunchCrash

Steps to reproduce a [crash](https://github.com/madsflensted/elm-brunch/pull/33) of `Brunch` process during `Elm` compilation error:

Build container:

`docker build . -t elmbrunch_crash`

Run it:

`docker run -v /app/assets/node_modules -v ``pwd``:/app -p 127.0.0.1:4000:4000 elmbrunch_crash`

Change something in `app/assets/elm/Main.elm` to trigger compilation error.

You should see a crash similar to this (I've mistyped `Html`):

```
20:05:34 - error: Command failed: elm-make --yes --output ../../priv/static/js/elm/main.js Main.elm
-- NAMING ERROR ------------------------------------------------------- Main.elm

Cannot find type `Htm`

6| main : Htm a
          ^^^
Maybe you want one of the following?

    Html
    Html.Html


Stack trace was suppressed. Run with `LOGGY_STACKS=1` to see the trace.
events.js:160
      throw er; // Unhandled 'error' event
      ^

Error: spawn notify-send ENOENT
  at exports._errnoException (util.js:1022:11)
  at Process.ChildProcess._handle.onexit (internal/child_process.js:193:32)
  at onErrorNT (internal/child_process.js:359:16)
  at _combinedTickCallback (internal/process/next_tick.js:74:11)
  at process._tickCallback (internal/process/next_tick.js:98:9)
```
