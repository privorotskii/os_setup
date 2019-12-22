# Terminal triggering

It may be useful to have a shortcut for launching/minimizing/restoring a terminal.
Personally I use terminator, it is pretty handy.
There are two scripts:
1. `launch_focus_min.sh` - this script accepts an app name as an argument and do the following:
  - If the given application isn't launched yet - it will be launched
  - If the given application is launched, but not visible - it will be focused
  - If the given application is focused - it will be minimized

2. `launch_focus_min_terminator.sh` - this script just launched the previous one with an argument `terminator`

You can just bind the second script to some shortcut (for example, ```<C-`> ```) for easy terminator window managing.
