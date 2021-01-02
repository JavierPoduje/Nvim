" pop-punk ANSI colors for vim terminal
let g:terminal_ansi_colors = pop_punk#AnsiColors()

" for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'pop_punk'

" for lightline theme - this needs underscore too
let g:lightline = {
      \ 'colorscheme': 'pop_punk',
      \ }

colorscheme pop-punk

highlight ColorColumn ctermbg=0 guibg=#484848
