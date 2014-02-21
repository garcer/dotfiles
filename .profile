export PATH="$PATH:$HOME/bin"
export VISUAL=vi
export EDITOR=vi
export PS1='\W \$ '
export HISTFILE=$HOME/.history
export HISTSIZE=200
export CVSROOT=anoncvs@anoncvs.obsd.si:/cvs

set -o vi

if test -e $HOME/.aliases; then
	. $HOME/.aliases;
fi

if test -e $HOME/perl5; then
	export PATH="$HOME/perl5/bin${PATH+:}$PATH";
	export PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB+:}$PERL5LIB";
	export PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT+:}$PERL_LOCAL_LIB_ROOT";
	export PERL_MB_OPT="--install_base \"$HOME/perl5\"";
	export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5";

	if test -e $HOME/perl5/perlbrew/etc/bashrc; then
		. $HOME/perl5/perlbrew/etc/bashrc
	fi
fi
