# added by Anaconda2 5.1.0 installer
export PATH="/anaconda2/bin:/Applications/Julia-1.0.app/Contents/Resources/julia/bin:/usr/local/sbin:$PATH"
PYTHONPATH="/Users/slu/Documents/psfsw/pydiag:/Users/slu/Documents/psfsw/diags/rftest:"; export PYTHONPATH
export PS1="\u@\h:\[\e[38;5;37m\]\w\[\e[0m\] \$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias la='ls -la'
alias ls='ls -GFh'
alias ll='pwd && ls -l'
alias p='pushd'
alias o='popd'
slu@slumbp:~ $ cat .vimrc
 set nocompatible              " required
 filetype off                  " required
 set t_Co=256
 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " add all your plugins here (note older versions of Vundle
 " used Bundle instead of Plugin)

 " ...

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

 set splitright
 set splitbelow

 "split navigations
 nnoremap <C-J> <C-W><C-J>
 nnoremap <C-K> <C-W><C-K>
 nnoremap <C-L> <C-W><C-L>
 nnoremap <C-H> <C-W><C-H>

 "Enable foldeing
 set foldmethod=indent
 set foldlevel=99

 "Enable folding with the spacebar
 nnoremap <space> za

 Plugin 'tmhedberg/SimpylFold'
 let g:SimpylFold_docstring_preview=1

 au BufNewFile,BufRead *.py
     \ set tabstop=4 |
     \ set softtabstop=4 |
     \ set shiftwidth=4 |
     \ set textwidth=79 |
     \ set expandtab |
     \ set autoindent |
     \ set fileformat=unix

 Plugin 'vim-scripts/indentpython.vim'
 "au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

 set encoding=utf-8

 Plugin 'vim-syntastic/syntastic'
 Plugin 'nvie/vim-flake8'


 let python_highlight_all=1
 syntax on

 Plugin 'jnurmine/Zenburn'
 set nu

 set clipboard=unnamed

