"CTRL+C for esc
inoremap <C-c> <ESC>

" After press * on a word or select more or more on visual mode, you can
" replace for another word the selected for another word o string
nnoremap <leader>r :%s///g<Left><Left>

" Format one long line into multiple short lines
nnoremap Q gq<CR>

" Better window navigation
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>h :wincmd h<CR>

" Toggle wrap
nnoremap <silent><leader>ww :set wrap! linebreak<CR>

" Create new tab
nnoremap <silent><leader>tt :tabnew<CR>

" More options for transit from normal to insert mode
nnoremap <silent><leader>O O<ESC>O
nnoremap <silent><leader>o o<CR>

" More options for paste
nnoremap <silent><leader>po o<ESC>p
nnoremap <silent><leader>PO O<ESC>P

" Show undo tree
nnoremap <silent><leader>u :UndotreeShow<CR>

" Files management
nnoremap <silent><leader>pv :NERDTreeToggle<CR>
nnoremap <silent><leader>pp :NERDTreeFind<CR>

" Files search
nnoremap <Leader>pS :Rg --fixed-strings --ignore-case '' **/*.<Left><Left><Left><Left><Left><Left><Left>
nnoremap <silent><leader>ps :RG<CR>
nnoremap <silent><leader>pf :Files<CR>

" Source configuration
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" Resize windows
nnoremap <silent><M-k> :resize +5<CR>
nnoremap <silent><M-j> :resize -5<CR>
nnoremap <silent><M-h> :vertical resize -5<CR>
nnoremap <silent><M-l> :vertical resize +5<CR>

" GoTo code navigation.
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gy <Plug>(coc-type-definition)
nmap <silent><leader>gi <Plug>(coc-implementation)
nmap <silent><leader>gr <Plug>(coc-references)
nmap <silent><leader>rr <Plug>(coc-rename)
nmap <silent><leader>g[ <Plug>(coc-diagnostic-prev)
nmap <silent><leader>g] <Plug>(coc-diagnostic-next)
nmap <silent><leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent><leader>gn <Plug>(coc-diagnostic-next)
nnoremap <silent><leader>cr :CocRestart<CR>
inoremap <silent><expr> <C-space> coc#refresh()

" Todo lists mappings
nmap <silent><leader>td <Plug>BujoAddnormal
nmap <silent><leader>tc <Plug>BujoChecknormal

" Move between buffers
nnoremap > :bn<CR>
nnoremap < :bp<CR>
nnoremap <silent><leader># :e#<CR>

" Git management
nmap <silent><leader>gl :diffget //3<CR>
nmap <silent><leader>gh :diffget //2<CR>
nmap <silent><leader>gs :G<CR>
nnoremap <silent><leader>gb :Git blame<CR>

" Close all buffers except the current one
nnoremap <silent><leader>bca :w<bar>%bd<bar>e#<bar>bd#<CR>

" Open LazyGit preview
nnoremap <silent><leader>fg :LazyGit<CR>

" --- * --- * --- * --- * --- * ---
" ---- * --- VISUAL MODE --- * ----
" --- * --- * --- * --- * --- * ---

" Better tabbing
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv

" Move visual block up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" --- * --- * --- * --- * --- * ---
" --- * --- * COMMANDS  * --- * ---
" --- * --- * --- * --- * --- * ---

" set filetype
command! MD :set filetype=markdown
command! SQL :set filetype=sql

" Open next buffer on the right using vertical split
command! VS :vs | :wincmd l | :bn

" Open previous buffer on the right using vertical split
command! Vs :vs | :wincmd l | :bp

" Display window with my open buffers
command! B :Buffers

" By default, this calls the fzf windows method. I just want to save my file...
command! W  write
