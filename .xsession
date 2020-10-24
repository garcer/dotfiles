export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc

xsetroot -bg "#0a0a0a" -fg "#101010" -mod 4 4
xset +dpms
xset dpms 0 0 610
xset b off
xset r rate 130 250
xset s blank
xset m
xidle &
xbacklight -set 50 &

for d in /usr/local/share/fonts/*;  do
	if [ -d $d ]; then
		 xset fp+ $d &
	fi
done

xset fp rehash

xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5 
xinput set-prop "/dev/wsmouse" "Device Accel Constant Deceleration" 0.30

if [ -r $HOME/.Xmodmap ]; then
	xmodmap $HOME/.Xmodmap
fi

if [ -r $HOME/.Xdefaults ]; then
	xrdb -merge $HOME/.Xdefaults
fi

exec cwm
