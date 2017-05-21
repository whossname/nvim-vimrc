" REMAPS
" leader
let mapleader =" "

" change buffer previous/next
nnoremap <leader>j :bprevious <CR>
nnoremap <leader>k :bnext <CR>

function! SwitchToNextBuffer(incr)
  let help_buffer = (&filetype == 'help')
  let current = bufnr("%")
  let last = bufnr("$")
  let new = current + a:incr
  while 1
    if new != 0 && bufexists(new) && ((getbufvar(new, "&filetype") == 'help') == help_buffer)
      execute ":buffer ".new
      break
    else
      let new = new + a:incr
      if new < 1
        let new = last
      elseif new > last
        let new = 1
      endif
      if new == current
        break
      endif
    endif
  endwhile
  execute ":redraw"
endfunction

" ctrl-p
let g:ctrlp_map = '<leader>p'

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
" Find the alternate file for the current path and open it
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>
" Run a given vim command on the results of alt from a given path.
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction

