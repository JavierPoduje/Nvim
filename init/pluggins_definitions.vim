let g:NERDTreeGitStatusWithFlags = 1
let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
  \ 'typescript': { 'left': '//', 'leftAlt': '/*', 'rightAlt': '*/' },
  \ 'typescriptreact': { 'left': '//', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}
let g:NERDTreeIgnore = ['^node_modules$']
let g:DevIconsEnableFoldersOpenClose = 1
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx, js',
\  },
\}
let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

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
      \ 'coc-python'
      \]

" Startify
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Ignore files in .gitignore when searching
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

