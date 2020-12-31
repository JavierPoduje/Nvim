" After press * on a word or select more or more on visual mode, you can
" replace for another word the selected for another word o string
nnoremap <Leader>r :%s///g<Left><Left>

" Better window navigation
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>

" Toggle wrap
nnoremap <leader>ww :set wrap! linebreak<CR>

" Create new tab
nnoremap <leader>tt :tabnew<CR>

" More options for transit from normal to insert mode
nnoremap <leader>O O<ESC>O
nnoremap <leader>o o<CR>

" More options for paste
nnoremap <leader>po o<ESC>p
nnoremap <leader>PO O<ESC>P

" Show undo tree
nnoremap <leader>u :UndotreeShow<CR>

" Files management
nnoremap <leader>pv :NERDTreeToggle<CR>
nnoremap <leader>pp :NERDTreeFind<CR>

" Files search
nnoremap <Leader>ps :Rg --fixed-strings --ignore-case ''<Left>
nnoremap <Leader>pf :Files<CR>

" Source configuration
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
inoremap <C-c> <ESC>

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent><leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent><leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart<CR>
inoremap <silent><expr> <C-space> coc#refresh()

" Move between buffers
nmap <Tab> :bn<CR>
nmap <S-Tab> :bp<CR>

" Git management
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <leader>gb :Git blame<CR>

" Close all buffers except the current one
nnoremap <leader>bca :w<bar>%bd<bar>e#<bar>bd#<CR>

" Float terminal
nnoremap <leader>ff :FloatermToggle<CR>
nnoremap <leader>fg :FloatermToggle<CR>lazygit<CR>
