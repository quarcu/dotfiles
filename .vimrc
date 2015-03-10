" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

let s:OS = 'linux'

let os = substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  let s:OS = 'osx'
endif

" Use backups
" Source:
" http://stackoverflow.com/a/15317146
set backup
set writebackup
set backupdir=~/.vim/backup//

" Use a specified swap folder
" Source:
" http://stackoverflow.com/a/15317146
set directory=~/.vim/swap//

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup  " do not keep a backup file, use versions instead
else
  set backup    " keep a backup file
endif

set ruler          " show the cursor position all the time
set laststatus=2   " last window always has a statusline

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

execute pathogen#infect()
filetype plugin indent on
set number

" In case of issues
" ImportError: No module named site
" Reinstall Vim / MacVim
nnoremap <F5> :GundoToggle<CR>
nmap <C-n> :NERDTreeToggle<CR>


set shiftwidth=2 tabstop=2 expandtab


set background=dark
let g:solarized_termcolors=256
colorscheme solarized

