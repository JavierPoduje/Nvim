source $HOME/.config/nvim/init/settings.vim

call plug#begin('~/.config/nvim/plugged')

" Git
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jremmen/vim-ripgrep'
Plug 'mhinz/vim-startify'

" File manager: Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Editing or something
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'

" Styles
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
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

" Jsx pretty
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Utilsnips
Plug 'honza/vim-snippets'

" Styntax highlight
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'sheerun/vim-polyglot'

" I don't know what this things are...
Plug 'nelstrom/vim-visual-star-search'
Plug 'mhinz/vim-mix-format'
Plug 'tpope/vim-surround'

call plug#end()

source $HOME/.config/nvim/init/pluggins_settings.vim
source $HOME/.config/nvim/init/styles.vim
source $HOME/.config/nvim/init/mappings.vim
source $HOME/.config/nvim/init/utils.vim
source $HOME/.config/nvim/init/rnvimr.vim
