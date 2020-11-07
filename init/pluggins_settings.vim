" Multi-cursor exit all cursos by default
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

" Prettier
" let g:prettier#autoformat = 0
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#print_width = 80
let g:prettier#config#semi = 'false'

" UtilSnips
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-x>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" Startify
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1
" to save sessions :SSave
" to delete sessions :SDelete
" to load sessions :SLoad

" background stable
let &t_ut=''

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25
let NERDTreeShowHidden = 1
let NERDTreeHighlightCursorline = 0
let g:NERDDefaultAlign = 'left'

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Elixir formatter
let g:mix_format_on_save = 1

