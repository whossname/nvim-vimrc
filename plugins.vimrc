" :PlugUpgrade
" :PlugUpdate
" :PlugInstall

" plugins
call plug#begin('~/.vim/plugged')
    " FILES
    " file navigation
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
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
    " Java
    Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

