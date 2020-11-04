source $HOME/.config/nvim/init/settings.vim

call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'neoclide/jsonc.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'jremmen/vim-ripgrep'
Plug 'nelstrom/vim-visual-star-search'
Plug 'mhinz/vim-mix-format'
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-startify'

" Utils
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Styles
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug '/home/mpaulson/personal/vim-be-good'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Jsx pretty
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Utilsnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

source $HOME/.config/nvim/init/pluggins_settings.vim
source $HOME/.config/nvim/init/styles.vim
source $HOME/.config/nvim/init/mappings.vim
source $HOME/.config/nvim/init/utils.vim
source $HOME/.config/nvim/init/pluggins_definitions.vim
