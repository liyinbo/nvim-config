"Line number
set nu

"Column number
set ruler

"Display tab and space
:set listchars=tab:>-,trail:-
:set list

"Syntax highlight
syntax on

"Turn on filetype
filetype on
filetype plugin on
filetype indent on

"Encodings
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"File format
set fileformat=unix

"Indentation
set sw=2
set expandtab
set tabstop=2
set softtabstop=2

"Make backspace available at insert mode
set backspace=indent,eol,start

"Status bar
set statusline=%F\ [BUFN=%n]\ [FENC=%{&fenc}]\ [FT=%{&ft}]\ [FF=%{&ff}]\ [LINE=%l]\ [COL=%c]\ [LPERC=%p]
set laststatus=2

"No swapfile
set noswapfile

"Highlight current line
set cursorline
