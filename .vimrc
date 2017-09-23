set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Dracula theme
Plugin 'dracula/vim'

" Nerd tree
"Plugin 'scrooloose/nerdtree'

" For seamless tmux vim navigation
Plugin 'christoomey/vim-tmux-navigator'

" Distraction free editing
Plugin 'junegunn/goyo.vim'

" Power line status bar
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()            " required
filetype plugin indent on    " required

set number " sets line numbers
set relativenumber

syntax on " turns the syntax on

" sets the color scheme to dracula
color dracula
hi Visual ctermbg=238

filetype plugin indent on
" make tab expand to spaces
set expandtab
" number of columns an existing <TAB> will occupy
set tabstop=2
" when indenting with '>', use 2 columns width
set shiftwidth=2
" make pressing tab insert 2 columns
set softtabstop=2

" powerline config
set guifont=monaco\ for\ Powerline
set encoding=utf-8
set laststatus=2

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Shows the search results as you type them
set incsearch

" Sets the cursor to remain in the middle of the page
set scrolloff=999

" Make vim remember a lot
set history=1000

" Remove showing mode as we are using powerline
set noshowmode

packadd! matchit
packadd! justify

" Setting up goyo callback
function! s:goyo_enter()
" To remove an ugly line at the end of Goyo
 highlight StatusLineNC ctermfg=white 
endfunction

" Registering to Goyo callback
autocmd! User GoyoEnter nested call <SID>goyo_enter()

" Remember history
set viminfo='1000,<1000,s10,h,/1000,@1000,:1000

" Show match bracket 
set showmatch
set matchtime=15
