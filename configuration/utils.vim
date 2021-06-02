" Remove white spaces on save
fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
autocmd BufWritePre * :call TrimWhitespace()

" tsconfig.json is actually jsonc, help TypeScript set the correct filetype
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc

" Define airline separations.
" Used at initialization
fun! DefineAirlineSeparations(airline_separation_type)
  if a:airline_separation_type == 'rounded'
    let g:airline_left_sep = "\uE0B4"
    let g:airline_left_alt_sep = "\uE0B5"
    let g:airline_right_sep = "\uE0B6"
    let g:airline_right_alt_sep = "\uE0B7"
  elseif a:airline_separation_type == 'diagonal'
    let g:airline_left_sep = "\uE0B8"
    let g:airline_left_alt_sep = "\uE0B9"
    let g:airline_right_sep = "\uE0BA"
    let g:airline_right_alt_sep = "\uE0BB"
  elseif a:airline_separation_type == 'gradient'
    let g:airline_left_sep = "\uE0C4"
    let g:airline_left_alt_sep = "\uE0C5"
    let g:airline_right_sep = "\uE0C6"
    let g:airline_right_alt_sep = "\uE0C7"
  endif
endfunction

fun! SetTheme(theme)
  exec "source $HOME/.config/nvim/configuration/themes/" . a:theme . ".vim"
endfunction

" Prettier: file extensions to format on save
fun! PrettierFormatOnSave(prettier_format_on_save)
  if a:prettier_format_on_save == 1
    autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.jsonc,*.graphql,*.vue PrettierAsync
  endif
endfunction

" Show documentation of variable that we are hovering with the cursor
fun! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
