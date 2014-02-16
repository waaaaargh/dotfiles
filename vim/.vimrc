" Pathogen load
call pathogen#infect()
call pathogen#helptags()
filetype plugin on
filetype plugin indent on

" python folding
set foldmethod=indent
set foldlevel=99

" pep8 by default
set expandtab
set sw=4
set tabstop=4
set nu
syntax on

" nerd tree
nmap <F5> :TagbarToggle<CR>
nmap <F6> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" Solarized
syntax enable
colorscheme desert

" map escape to jj
:imap jj <Esc>

" toggle paste mode
set pastetoggle=<F2>

" don't show UI
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

" sensible font
set guifont=Terminus\ 9

" nosetests
nmap <F12> :!source env/bin/activate && nosetests<CR>

" JEDI
let g:jedi#auto_initialization = 1
