" airline HUD
let g:airline#extensions#tabline#enabled = 1

" tabs
set expandtab 
set shiftwidth=2
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI
set number              " show line numbers
set relativenumber
set showcmd             " show command in bottom bar
filetype indent on      " load filetype-specific indent files
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
colo ron

" remember history after closing files 
set clipboard=unnamedplus
set undofile

" tmux
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" leader timeout
set notimeout
set ttimeout

