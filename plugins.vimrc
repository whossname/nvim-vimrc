" :PlugUpgrade
" :PlugUpdate
" :PlugInstall
" Close and reopen vim before installing

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
    " testing
    Plug 'janko-m/vim-test' 
    
    " EDITING
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
    Plug 'bendavis78/vim-polymer'
    Plug 'posva/vim-vue'
    " elm
    Plug 'elmcast/elm-vim'
    " elixir
    Plug 'slashmili/alchemist.vim'
    " Java
    Plug 'artur-shaik/vim-javacomplete2'
    " Gradle (recognise as Groovy)
    Plug 'tfnico/vim-gradle'
    " Elm
    Plug 'elmcast/elm-vim'
call plug#end()


