" Pathogen load
call pathogen#infect()
call pathogen#helptags()
filetype plugin on
filetype plugin indent on

" python mode wants that
let g:pymode_folding = 1

" python folding
set foldmethod=indent
set foldlevel=99

" pep8 by default
set expandtab
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

" navigate in tabs
map H :tabNext<CR>
map L :tabprevious<CR>

" map escape to jj
:imap jj <Esc>

" toggle paste mode
set pastetoggle=<F2>

" don't show UI
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

" sensible font
set guifont=Terminus\ 9
