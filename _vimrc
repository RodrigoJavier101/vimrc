
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  syntax on
  syntax enable
  set number
  set numberwidth=1
  set mouse=r
  set clipboard=unnamed
  set showcmd
  set ruler
 set showmatch
 set relativenumber
 set cursorline
 set cursorcolumn
 set nocompatible
 set nowrap
 set incsearch
 set ignorecase
 set hlsearch
 set wildmenu
 set wildmode=list:longest
 set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
 set laststatus=2
 set bg=dark
 " Use a specific pipe ch
 set fillchars+=vert:\┊
" Enable filetype
 filetype indent plugin on
 " Persist undo history between file editing sessions.
 set undofile
 set undodir=~/.vim/undodir
 " Modify indenting settings
 set autoindent              " autoindent always ON.
        
 " Modify some other settings about files
 set encoding=utf-8          " always use unicode (god damnit, windows)
 set backspace=indent,eol,start " backspace always works on insert mode
 set hidden
        
  " Mark trailing spaces depending on whether we have a fancy terminal or not
  if &t_Co > 2
          highlight ExtraWhitespace ctermbg=1
          match ExtraWhitespace /\s\+$/
  else   
          set listchars=trail:~
          set list
  endif
   
if has("gui_running")    
if has("gui_gtk2")
                  set guifont=Inconsolata\ 18
        elseif has("gui_macvim")                                                                            
                  set guifont=Menlo\ Regular:h18
          elseif has("gui_win32")
                  set guifont=Consolas:h18:cANSI
          endif
  endif   
          
          
          
  let mapleader=" "
 nmap <Leader>q :q!<CR>
 nmap <Leader>w :w!<CR>
 nmap <Leader>x :wq!<CR>
 nmap <Leader>tt :terminal<CR>
 nmap <Leader>so :source ~/.vimrc<CR>
 nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>pp :PlugInstall<CR>
 " Shortcuts for switching the buffers
 map <C-N> :bnext<CR>
 map <C-P> :bprev<CR>
 imap <C-N> <Esc>:bnext<CR>i
 imap <C-P> <Esc>:bprev<CR>i
  
 " prefer to have a way for switching relative numbers with a single map.
 nmap <F5> :set invrelativenumber<CR>
 imap <F5> <ESC>:set invrelativenumber<CR>a
  
  " Double ESC the terminal to exit terminal-job mode.
  tnorema <Esc><Esc> <C-\><C-n>
   
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
   
   
call plug#begin('~/.vim/plugged')
 
  Plug 'morhetz/gruvbox'            
  Plug 'maximbaz/lightline-ale'     
  Plug 'itchyny/lightline.vim'      
                                   
  Plug 'scrooloose/nerdtree'        
  Plug 'easymotion/vim-easymotion'  
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'valloric/youcompleteme'     
  Plug 'shougo/neocomplete.vim'     
  Plug 'bitc/vim-hdevtools'         
  Plug 'twinside/vim-haskellfold'   
  Plug 'enomsg/vim-haskellconcealplus'
   
call plug#end()
 
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard" 
let NERDTreeQuitOnOpen=4     
