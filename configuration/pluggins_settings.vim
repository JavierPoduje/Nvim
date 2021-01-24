" Multi-cursor exit all cursors by default
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
if executable('rg')
    let g:rg_derive_root='true'
endif
let $FZF_DEFAULT_OPTS='--reverse'

" Prettier
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#print_width = 80
let g:prettier#config#semi = 'false'
let g:prettier#config#arrow_parens = get(g:,'prettier#config#arrow_parens', 'avoid')

" UtilSnips
let g:UltiSnipsExpandTrigger="<C-k>"
let g:UltiSnipsJumpForwardTrigger="<C-x>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"
"let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

let g:user_emmet_leader_key=','
"let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx,js,tsx,ctp EmmetInstall

" Startify
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_session_persistence = 1
let g:startify_change_to_vcs_root = 1

" background stable
let &t_ut=''

" I don't know what this things are...
let loaded_matchparen = 1
let mapleader = " "
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Elixir formatter
let g:mix_format_on_save = 1

" NERD tree
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers=1 " display relative numbers on the folders tree
let NERDTreeHighlightCursorline = 0
let g:NERDDefaultAlign = 'left'
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']
let g:DevIconsEnableFoldersOpenClose = 1

" NERD commenter
let g:NERDCustomDelimiters={
      \ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
      \ 'typescript': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
      \ 'typescriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
      \ 'php': { 'left': '//', 'leftAlt': '<!-- ', 'rightAlt': ' -->' },
      \}

let g:user_emmet_settings = {
      \ 'javascript' : {
      \      'extends' : 'jsx, js',
      \  },
      \}

" Coc extensions
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-pairs',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-json',
      \ 'coc-emmet',
      \ 'coc-elixir',
      \ 'coc-phpls',
      \ 'coc-python',
      \ 'coc-sql'
      \]

" Startify
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions:'] },
      \ { 'type': 'files',     'header': ['   Files: '] },
      \ { 'type': 'dir',       'header': ['   Current Directory: '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks:'] },
      \ ]

" Ignore files in .gitignore when searching
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

lua require'colorizer'.setup()

" I don't use this. This remap is just for use '<C-c>' as an 'ESC' in
" sql files without the delay
let g:ftplugin_sql_omni_key = '<C-j>'
