source $HOME/.config/nvim/configuration/settings.vim

call plug#begin('~/.config/nvim/plugged')

" Git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'

" Syntax and stuff
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mhinz/vim-mix-format'

" Files manager
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Search texts and files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" Themes
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-solarized8'
Plug 'bignimbus/pop-punk.vim'
Plug 'tomasr/molokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'senran101604/neotrix.vim'
Plug 'joshdick/onedark.vim'
Plug 'cj/vim-webdevicons'

" Styles
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
      \ 'javascript',
      \ 'typescript',
      \ 'css',
      \ 'less',
      \ 'scss',
      \ 'json',
      \ 'graphql',
      \ 'markdown',
      \ 'vue',
      \ 'yaml',
      \ 'html'] }
Plug 'sbdchd/neoformat'

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Styntax highlight
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'

" Utils: Editing, float terminal and things like that...
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'

" Rust file detection, syntax highlighting, formatting, Syntastic integration, etc
Plug 'rust-lang/rust.vim'
Plug 'alx741/vim-rustfmt'

" I don't know what this things are...
Plug 'nelstrom/vim-visual-star-search'

call plug#end()

source $HOME/.config/nvim/configuration/pluggins_settings.vim
source $HOME/.config/nvim/configuration/mappings.vim
source $HOME/.config/nvim/configuration/utils.vim
source $HOME/.config/nvim/configuration/rnvimr.vim
source $HOME/.config/nvim/configuration/rust.vim

" THEMES
" DON'T COMMENT THIS. Themes shared definitions
source $HOME/.config/nvim/configuration/themes/index.vim

source $HOME/.config/nvim/configuration/themes/ayu.vim
"source $HOME/.config/nvim/configuration/themes/gruvbox.vim
"source $HOME/.config/nvim/configuration/themes/neotrix.vim
"source $HOME/.config/nvim/configuration/themes/molokai.vim
"source $HOME/.config/nvim/configuration/themes/onedark.vim
"source $HOME/.config/nvim/configuration/themes/pop-punk.vim
"source $HOME/.config/nvim/configuration/themes/solarized8.vim
"source $HOME/.config/nvim/configuration/themes/tokyo.vim
