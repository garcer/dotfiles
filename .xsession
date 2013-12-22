xsetroot -bg "#0a0a0a" -fg "#101010" -mod 4 4
xset +dpms
xset b off
xset r rate 130 200
xmodmap $HOME/.Xmodmap
exec $HOME/bin/cwm
