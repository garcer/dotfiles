xsetroot -bg "#0a0a0a" -fg "#101010" -mod 4 4
xset +dpms
xset dpms 0 0 610
xset b off
xset r rate 130 200
xset s blank
xidle -timeout 600 &
xbacklight -set 50

for d in /usr/local/lib/X11/fonts/* /usr/local/share/ghostscript/fonts; do
	if [ -d $d ]; then
		 xset fp+ $d
	fi
done

xset fp rehash

#xcompmgr &

syndaemon -K -d -t -i 0.4
synclient PalmDetect=1 PalmMinWidth=4 PalmMinZ=100
synclient TapButton1=1 TapButton2=2 TapButton3=3 TapAndDragGesture=1

if [ -r $HOME/.Xmodmap ]; then
	xmodmap $HOME/.Xmodmap
fi

if [ -r $HOME/.Xdefaults ]; then
	xrdb -merge $HOME/.Xdefaults
fi

if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
	eval `dbus-launch --sh-syntax --exit-with-session`
fi

cwm
