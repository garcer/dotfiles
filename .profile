export PATH="$PATH:$HOME/bin"
export VISUAL=vi
export EDITOR=vi
export PS1='\W \$ '
export HISTFILE=$HOME/.history
export HISTSIZE=1000

set -o vi

if test -e $HOME/.aliases; then
	. $HOME/.aliases;
fi
