" autocomplete 
let g:deoplete#enable_at_startup = 1
" Let <Tab> also do completion
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" snippets
let g:UltiSnipsExpandTrigger="<S-Tab>"
let g:UltiSnipsJumpForwardTrigger="<S-Tab>"

" super tab?
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1

" error linting settings
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

