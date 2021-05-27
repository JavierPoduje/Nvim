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

" Beautification
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'

" Files manager
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

" Search texts and files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" Themes
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-solarized8'
Plug 'tomasr/molokai'
Plug 'ghifarit53/tokyonight-vim'
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'haishanh/night-owl.vim'
Plug 'cj/vim-webdevicons'
Plug 'sainnhe/edge'

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

" Utils
Plug 'tpope/vim-surround'
Plug 'michaeljsmith/vim-indent-object'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'
Plug 'vuciv/vim-bujo'
Plug 'nelstrom/vim-visual-star-search'

" Rust stuff
Plug 'rust-lang/rust.vim'
Plug 'alx741/vim-rustfmt'

call plug#end()

source $HOME/.config/nvim/configuration/pluggins_settings.vim
source $HOME/.config/nvim/configuration/mappings.vim
source $HOME/.config/nvim/configuration/utils.vim
source $HOME/.config/nvim/configuration/rust.vim

" THEMES
" DON'T COMMENT THIS. Themes shared definitions
source $HOME/.config/nvim/configuration/themes/index.vim

"source $HOME/.config/nvim/configuration/themes/ayu.vim
source $HOME/.config/nvim/configuration/themes/edge.vim
"source $HOME/.config/nvim/configuration/themes/gruvbox.vim
"source $HOME/.config/nvim/configuration/themes/material.vim
"source $HOME/.config/nvim/configuration/themes/night-owl.vim
"source $HOME/.config/nvim/configuration/themes/onedark.vim
"source $HOME/.config/nvim/configuration/themes/solarized8.vim
"source $HOME/.config/nvim/configuration/themes/tokyo.vim
