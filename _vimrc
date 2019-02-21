set ruler                   " show row and col info
set wildmenu
set number                  " show line numbers
set cmdheight=2             " height of command line
set ignorecase              " case insensitive searches
set smartcase               " smart-case search
set vb                      " visual bell (no beeping)
syntax enable               " enable syntax highlighting
set encoding=utf8           
set expandtab               " use spaces instead of tab
set smarttab                " enable smart tabs
set shiftwidth=4            " number of auto indents
set tabstop=4               " number of spaces per tab
set ai                      " auto indent new lines
set si                      " enable smart indent
set wrap                    " wrap text
set textwidth=120
set linebreak               " break lines at word
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set backspace=indent,eol,start
colo delek 

nmap <M-j> mz:m+<cr>`z 
nmap <M-k> mz:m-2<cr>`z 
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z 
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" up and down arrows move line 
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

" Center text when moving to location
nmap G Gzz
nmap n nzz
nmap N Nzz

" pairs 'backslash follow by 'char' results in those" 
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>{ {<CR><CR>}<ESC>k4i
imap <leader>< <><ESC>i


fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg(".")
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif     
    return '' 
endfunction

map <leader>ss :setlocal spell!<cr>
