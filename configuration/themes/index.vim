highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:airline_section_c = '🎸'
let g:airline_section_y = ''

call DefineAirlineSeparations("rounded") " Options: rounded, diagonal, gradient

" Theme for preview window
" For check possible themes run `bat --list-themes`
let $BAT_THEME='ansi'

set background=dark

" Options: ayu, edge, gruvbox, material, night-owl, onedark, solarized8, tokyo
call SetTheme("edge")
