filetype plugin indent on
syntax on

nmap <F1> <C-w><C-w><C-w>_
nmap <F3> :snext 
vmap <F4> :s%%%g<Left><Left><Left>
nmap <F5> ggVG:s%%%g<Left><Left><Left>
nmap <C-Up>    <C-w><Up><C-w>_
nmap <C-Down>  <C-w><Down><C-w>_
nmap <C-Left>  <C-w><Left><C-w>_
nmap <C-Right> <C-w><Right><C-w>_

set splitright
set background=dark
set noruler

set modeline
set ts=4
set sw=4
set tw=100
set expandtab

source ~/.vim/util.vim

aug global_autocmds
au!
au BufReadPost * :source ~/.vim/git_detect.vim
au BufEnter    * :source ~/.vim/setup_style.vim
aug end

" VIM plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/vim-plug-plugins')

" Dart syntax highlighting
Plug 'https://github.com/dart-lang/dart-vim-plugin'

" Javascript and React
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

" Remember to call :PlugUpdate for a new install
