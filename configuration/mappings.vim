" CTRL+C for esc
inoremap <C-c> <ESC>

" By default, this calls the fzf windows method. I just want to save my file...
command! W  write

" Delete front word in insert mode with CTRL+d
imap <C-D> X<Esc>ce

" After press * on a word or select more or more on visual mode, you can
" replace for another word the selected for another word o string
nnoremap <Leader>r :%s///g<Left><Left>

" Format one long line into multiple short lines
nnoremap Q gq<CR>

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

" Resize windows
nnoremap <M-k> :resize +5<CR>
nnoremap <M-j> :resize -5<CR>
nnoremap <M-h> :vertical resize -5<CR>
nnoremap <M-l> :vertical resize +5<CR>

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

" Todo lists mappings
nmap <leader>td <Plug>BujoAddnormal
nmap <leader>tc <Plug>BujoChecknormal

" Move between buffers
nmap > :bn<CR>
nmap < :bp<CR>

" Git management
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :G<CR>
nnoremap <leader>gb :Git blame<CR>

" Close all buffers except the current one
nnoremap <leader>bca :w<bar>%bd<bar>e#<bar>bd#<CR>

" Float terminal
"   - normal terminal
nnoremap <leader>ff :FloatermToggle<CR>
"   - terminal with lazygit opened
nnoremap <leader>fg :FloatermToggle<CR>lazygit<CR>

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

" set filetype to markdown
command! MD :set filetype=markdown

" Open next buffer on the right using vertical split
command! VS :vs | :wincmd l | :bn
" Open previous buffer on the right using vertical split
command! Vs :vs | :wincmd l | :bp
