" After press * on a word or on visual mode, u can replace for another word
" with the following command
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>ww :set wrap linebreak<CR>
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>O O<ESC>O
nnoremap <leader>o o<cr>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>pp :NERDTreeFind<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>* resize +5<CR>
nnoremap <Leader>] resize -5<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
"nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
" Git-gutter
"nmap <buffer> <Leader>]hp <Plug>(GitGutterPreviewHunk)
"nmap <buffer> <Leader>]hu <Plug>(GitGutterUndoHunk)
"nmap <buffer> <Leader>]hs <Plug>(GitGutterStageHunk)

vnoremap X "_d
inoremap <C-c> <esc>
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-space> coc#refresh()

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

" Sweet Sweet FuGITive
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <leader>gb :Git blame<CR>

