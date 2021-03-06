if has('gui_running')
  set columns=128
  set lines=48
else
  " I find it best to set defaults for colour/rendering 
  " to maintain consistent experience accross different
  " terminal emulators or when $TERM is incorrect 
  set t_Co=256
  set term=xterm-256color
endif

set nocompatible
set showmatch     
set showmode      
set report=1      
set noerrorbells  
set flash         
set ignorecase
"set incsearch
set directory=/tmp
set backupdir=/tmp
set backspace=indent,eol,start
set ruler
set laststatus=2
set mouse=v

syntax off
colorscheme swblue001
inoremap <C-U> <C-G>u<C-U>

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

map V 02i j0    
map v 02xj2h      
map K 0i# j0    
map  0i-- j0   
map W%!python -m json.tool
