filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

  Plugin 'VundleVim/Vundle.vim'     " let Vundle manage Vundle
  Plugin 'airblade/vim-gitgutter'   " shows current git changes at the left of lines numbers
  Plugin 'joshdick/onedark.vim'     " dark theme
  Plugin 'vim-airline/vim-airline'  " airline
  Plugin 'tpope/vim-vinegar'        " netrw additioning plugin, use - to appear and <C-6> to disappear
  Plugin 'Valloric/YouCompleteMe'   " completion plugin, use <C-n>,<C-p> for popup options navigating
                                    " install fuzzy finder, use <C-P> for files searching
                                    " <C-F> for text searching
                                    " good guide https://jdhao.github.io/2018/11/05/fzf_install_use/#as-nvim-plugin
  Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plugin 'junegunn/fzf.vim'

call vundle#end()

filetype plugin indent on           " allows auto-indenting depending on file type

let g:deoplete#enable_at_startup = 1                 " enables deoplete completion
let g:airline#extensions#tabline#enabled = 1         " shows all opened buffers if there is only one tab opened
let mapleader = " "                                  " set space as leader

set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 120 column border for good coding style
set splitbelow              " open new splits to right and bottom
set splitright

syntax on
colorscheme onedark

nnoremap <leader>n :bn<cr>|        " magic keybindings for buffers handling
nnoremap <leader>p :bp<cr>|
nnoremap <leader>d :bd<cr>|  

nnoremap <C-J> <C-W><C-J>|         " more natural moving through splits 
nnoremap <C-K> <C-W><C-K>|
nnoremap <C-L> <C-W><C-L>|
nnoremap <C-H> <C-W><C-H>|

nnoremap <C-P> :FZF<cr>|          " call files fuzzy finder
nnoremap <C-F> :Ag<cr>|           " call Ag to find through all files
