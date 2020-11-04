" After press * on a word or select more or more on visual mode, you can
" replace for another word the selected for another word o string
nnoremap <Leader>r :%s///g<Left><Left>

" Window navigation
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>

" set wrap mode
nnoremap <leader>ww :set wrap linebreak<CR>

" create new tab
nnoremap <leader>tt :tabnew<CR>

" Just more options for pass from normal to insert mode
nnoremap <leader>O O<ESC>O
nnoremap <leader>o o<cr>

" Show undo tree
nnoremap <leader>u :UndotreeShow<CR>

" Files management
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>pp :NERDTreeFind<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>pf :Files<CR>

" source configuration
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

" Expand windows
nnoremap <M-k> :resize -5<CR>
nnoremap <M-j> :resize +5<CR>
nnoremap <M-h> :vertical resize -5<CR>
nnoremap <M-l> :vertical resize +5<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" CTRL+C for esc
inoremap <C-c> <esc>

" What are this three ones ?
"vnoremap X "_d
"function! s:check_back_space() abort
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart
inoremap <silent><expr> <C-space> coc#refresh()

" Git management
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <leader>gb :Git blame<CR>

