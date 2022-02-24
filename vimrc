" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'voldikss/vim-floaterm'
Plug 'dbeniamine/cheat.sh-vim'
"Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'
call plug#end()

syntax on
filetype on
colorscheme gruvbox "cobalt2 codedark 
set encoding=utf-8
set nocompatible
set tabstop=4 softtabstop=4
set smartindent
set shiftwidth=4
set expandtab
set number relativenumber
set background=dark
set termguicolors
set nowrap
set scrolloff=4
set tabline=2
highlight clear SignColumn

"sytnastic spesific stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
:set t_Co=256

"syntastic stuff end



highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:airline_powerline_fonts=1
let g:airline_theme = 'gruvbox' "'codedark'
let g:airline#extensions#tabline#enabled = 1
nmap <C-n> :NERDTreeToggle<CR>
