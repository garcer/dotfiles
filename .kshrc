export EDITOR=vi
export GOPATH=$HOME/.local/go
export HISTFILE=$HOME/.ksh_history
export HISTSIZE=100000
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export PATH="$PATH:$HOME/.local/bin:$GOPATH/bin"
export PS1='\W \$ '
export VISUAL=vi

if test -e $HOME/.aliases; then
	. $HOME/.aliases;
fi
