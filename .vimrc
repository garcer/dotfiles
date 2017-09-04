set background=light
set backspace=indent,eol,start
set history=5000
set hlsearch
set ignorecase
set incsearch
set pastetoggle=<C-p>
set ruler
set showcmd
set showmatch
set smartcase
set t_Co=256
set textwidth=78

syntax on

if has("autocmd")
  filetype plugin indent on

  augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78

  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  augroup END

  au BufRead,BufNewFile *.conf    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=python
  au BufRead,BufNewFile *.bb      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=python
  au BufRead,BufNewFile *.bbclass setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=python
  au BufRead,BufNewFile *.bb*     setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=python
  au BufRead,BufNewFile *.inc     setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=python

  au BufRead,BufNewFile *.py      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 list
  au BufRead,BufNewFile *.html    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 list
  au BufRead,BufNewFile *.tt      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 list ft=html
  au BufRead,BufNewFile *.ep      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 list ft=html
  au BufRead,BufNewFile *.css     setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 list
  au BufRead,BufNewFile *.js      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 list

  au BufRead,BufNewFile *.jade    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=sh

  au BufRead,BufNewFile *.proto   setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=proto

  au BufRead,BufNewFile *.pl      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=perl shiftround matchpairs+=<:>
  au BufRead,BufNewFile *.t       setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=perl shiftround matchpairs+=<:>
  au BufRead,BufNewFile *.pm      setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=perl shiftround matchpairs+=<:>
  au BufRead,BufNewFile *.psgi    setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=perl shiftround matchpairs+=<:>

  if getline(1) =~ '^#!.*perl'
    set expandtab tabstop=4 shiftwidth=4 softtabstop=4 ft=perl shiftround matchpairs+=<:>
  endif

  " au BufRead,BufNewFile *.c       highlight rightMargin term=bold ctermbg=red ctermfg=yellow
  au BufRead,BufNewFile *         highlight rightMargin term=bold ctermbg=red ctermfg=yellow
else
  set autoindent
endif " has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

map <F10> :set paste<CR>
map <F11> :set nopaste<CR>
imap <F10> <C-O>:set paste<CR>
imap <F11> <nop>
set pastetoggle=<F11>

nmap <silent> ,/ :nohlsearch<CR>
nmap <leader>L :set list!<CR>
nmap <leader>N :set number!<CR>
nmap <leader>M :match rightMargin /.\%>79v/<CR>
nmap <leader>m :match<CR>

set lcs=tab:>-,eol:<,nbsp:%,trail:-

iab ph #!/usr/bin/env perl<CR><Left><Del>use strict;<CR>use warnings;
