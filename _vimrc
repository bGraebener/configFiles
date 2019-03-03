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
set shiftwidth=2            " number of auto indents
set tabstop=2               " number of spaces per tab
set ai                      " auto indent new lines
set si                      " enable smart indent
set wrap                    " wrap text
set textwidth=120
set linebreak               " break lines at word
set laststatus=2
set backspace=indent,eol,start
colo delek 
set nocompatible

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD | tr -d [:cntrl:]")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=\ %#LineNr#
set statusline+=%f
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%      "percentage of file through
set statusline+=\ %l:%c     " line number; column number
set statusline+=\ 

filetype plugin on
syntax on

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

inoremap <Space><Space> <Esc>/<++><Cr>"_c4l
autocmd FileType c inoremap ;f for(int i = 0; i < ; i++){<Cr><++><Cr>}<Cr><++><Esc>6bi
autocmd FileType c inoremap ;i if(){<Cr><++><Cr>}<Cr><++><Esc>4ba
autocmd FileType c inoremap ;# #include<><Cr><++><Esc>2ba
autocmd FileType c inoremap ;m int main(int argc, char* argv[]){<Cr><Cr><Cr><Cr>return 0;<Cr>}<Cr><Esc>6bi<Tab>
