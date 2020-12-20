source $HOME/.config/nvim/init/settings.vim

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

" Searching for texts and files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'

" Styles
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'lifepillar/vim-solarized8'
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

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Styntax highlight
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'sheerun/vim-polyglot'

" Utils: Editing, float terminat and things like that...
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'

" I don't know what this things are...
Plug 'nelstrom/vim-visual-star-search'


call plug#end()

source $HOME/.config/nvim/init/pluggins_settings.vim
source $HOME/.config/nvim/init/styles.vim
source $HOME/.config/nvim/init/mappings.vim
source $HOME/.config/nvim/init/utils.vim
source $HOME/.config/nvim/init/rnvimr.vim
