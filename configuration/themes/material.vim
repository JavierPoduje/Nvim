" Options:
"   'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
"   | 'default-community' | 'palenight-community' | 'ocean-community'
"   | 'lighter-community' | 'darker-community'
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker-community'
colorscheme material

let g:lightline = { 'colorscheme': 'material_vim' }
let g:airline_theme = 'material'

" Options: ocean=#1a1c25, palenight=#333747, darker=#2b2b2b
highlight ColorColumn ctermbg=0 guibg=#2b2b2b
