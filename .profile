export PATH="$PATH:$HOME/bin"
export VISUAL=vi
export EDITOR=vi

set -o vi

if test -e $HOME/.aliases; then
	. $HOME/.aliases;
fi

if test -e $HOME/perl5/perlbrew/etc/bashrc; then
	. $HOME/perl5/perlbrew/etc/bashrc
fi
