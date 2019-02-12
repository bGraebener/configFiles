set ruler
set wildmenu
set number
set cmdheight=2
set ignorecase
set smartcase
set vb
syntax enable
set encoding=utf8
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
colo desert

nmap <M-j> mz:m+<cr>`z 
nmap <M-k> mz:m-2<cr>`z 
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z 
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

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
