
#!/bin/bash -x

exec >/tmp/startx$$.log 2>&1

setxkbmap pl

exec dbus-run-session bspwm
