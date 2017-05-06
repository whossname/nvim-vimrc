" :PlugUpgrade
" :PlugUpdate
" :PlugInstall

" plugins
call plug#begin('~/.vim/plugged')
    " FILES
    " file navigation
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
    Plug 'ctrlpvim/ctrlp.vim'
    " close buffer
    Plug 'qpkorr/vim-bufkill'
    
    " CODING HELP
    " auto complete
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'ervandew/supertab'
    " syntax checking
	Plug 'neomake/neomake'
    Plug 'dojoteef/neomake-autolint'
    " testing
    Plug 'janko-m/vim-test' 
    
    " EDITING
    " auto pairs 
    Plug 'jiangmiao/auto-pairs'
    " fix line endings
    Plug 'lfilho/cosco.vim'
    " repeatable remaps
    Plug 'tpope/vim-repeat'
    
    " LANGUAGES
    " Polyglot loads language support on demand!
    Plug 'sheerun/vim-polyglot'
    " Rails
    Plug 'tpope/vim-rails'
    " JavaScript
    Plug 'carlitux/deoplete-ternjs'
    Plug 'ternjs/tern_for_vim'
    " elixir
    Plug 'slashmili/alchemist.vim'
call plug#end()

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

" startup
set clipboard=unnamedplus

" persist undos
set undofile

" tmux
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" autocomplete 
let g:deoplete#enable_at_startup = 1
" Let <Tab> also do completion
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-s>"
let g:UltiSnipsJumpForwardTrigger="<C-s>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1

" syntax settings
let g:neomake_list_height = 3
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_cpp_enabled_makers = ['gcc']
let g:neomake_cpp_gcc_maker = {
    \ "exe": "g++",
    \ "args": [ "\--std=c++11"]
    \ }
let g:neomake_elixir_enabled_makers = ['mix', 'credo']
command Errors lopen

autocmd! BufWritePost,BufEnter * Neomake
autocmd BufEnter * syntax on
set autoread
let g:neomake_autolint_events = { 'InsertLeave': {'delay': 0} }

" JSX
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" leader timeout
set notimeout
set ttimeout

" REMAPS
" leader
let mapleader =" "
" change buffer previous/next
nnoremap <leader>j :bp<CR>
nnoremap <leader>k :bn<CR>
" goto definition 
map <leader>g <c-]>

" list buffers
nnoremap <leader>l :ls<CR>
" save/close file
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>d :BD<CR>
" nerd tree 
nnoremap <leader><leader> :NERDTreeToggle<CR>
" dispatch
nnoremap <leader>m :Make<CR>
" splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" rails
nnoremap <leader>rm :Rmodel<Space>  
nnoremap <leader>rc :Rcontroller<Space>  
nnoremap <leader>rh :Rhelper<Space>   
nnoremap <leader>rv :Rview<Space>   
nnoremap <leader>rf :Rfunctionaltest<Space>   
nnoremap <leader>ru :Runittest<Space>   
" neomake
nnoremap <leader>e :ll<CR>
nnoremap [e :lprev<CR>
nnoremap ]e :lnext<CR>
" compile & run
nnoremap <leader>m :make %<<cr>
autocmd Filetype c,cpp nnoremap <leader>x :!./%<<cr>
autocmd Filetype elixir nnoremap <leader>x :!elixir %<cr>
" line endings
nnoremap <leader>; :CommaOrSemiColon<CR>
" test
let test#strategy = "neovim"
nmap <silent> <leader>tt :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tg :TestVisit<CR>

" ALT
" Run a given vim command on the results of alt from a given path.
" See usage below.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>
