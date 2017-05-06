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

" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>
   
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
