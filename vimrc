call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'

Plug 'MarcWeber/vim-addon-mw-utils' "snipmate dep
Plug 'tomtom/tlib_vim' "snipmate dep
Plug 'garbas/vim-snipmate'
Plug 'mileszs/ack.vim'
Plug 'surround.vim'

Plug 'tpope/vim-eunuch'

Plug 'scrooloose/nerdtree'

Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'honza/vim-snippets'


" vim-javascript is a dependency of vim-jsx, so load first
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': 'javascript.jsx' }
Plug 'heavenshell/vim-jsdoc', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'davb5/wombat256dave'

call plug#end()

colorscheme wombat256dave
set tabstop=2
set shiftwidth=2
set softtabstop=2 expandtab
"" vim version too old for this? or need VimEnter function or something?
" autocmd VimEnter * set breakindent | set breakindentopt=shift:2

"-------------------------------------------------------------------------------
"  Mappings
"-------------------------------------------------------------------------------
set winaltkeys=no
"normal mode keys
nmap   <silent> <F1>        :wq<cr>
nmap   <silent> <F2>        :write<cr>
nmap   <silent> <F3>        :quit<cr>
nmap   <silent> <f4>        :xa<cr>
nmap   <silent> <f5>        :set wrap!<CR>
nmap   <silent> <F6>        :NERDTreeToggle<CR>
nmap   <silent> <F7>        :set nu!<CR>
nmap   <silent> <F8>        :cp<CR>
nmap   <silent> <F9>        :set nospell!<CR>

"insert mode keys
imap   <silent> <F1>        <Esc>:wq<CR>
imap   <silent> <F2>        <Esc>:write<CR>
imap   <silent> <F3>        <Esc>:quit<CR>
imap   <silent> <f4>        <Esc>:xa<CR>
imap   <silent> <f5>        <Esc>:set wrap!<CR>i
imap   <silent> <F6>        <Esc>:NERDTreeToggle<CR>i
imap   <silent> <F7>        <Esc>:set nu!<CR>i
imap   <silent> <F8>        <Esc>:cp<CR>i
imap   <silent> <F9>        <Esc>:set nospell!<CR>i
imap   <silent> <c-e>       <Esc><C-e>li
"-------------------------------------------------------------------------------
" Leader key mappings
"-------------------------------------------------------------------------------
"------------------ Vim Command Shortcuts  ------------------
"Show all leader key mappings
nnoremap <leader>lm <esc>:map <leader><CR>
nnoremap <leader>? <esc>:map <leader><CR>
"Copies the contents of the entire file to clipboard
nnoremap <leader>ya <esc>:%y+<CR>
"Setfile type so that syntax highlighting turns on
nnoremap <leader>ft <esc>:set filetype=
" Open help in a new tab
nnoremap <leader>h <esc>:tab help
"------------------------ Move to a different file ------------------------
nnoremap <leader>mv <esc>:e $MYVIMRC<CR>
"------------------------ Insert Text ------------------------
nnoremap <leader>da "=strftime(" %m-%d-%Y")<CR>p
nnoremap <leader>ti "=strftime(" %H:%M:%S")<CR>p
nnoremap <leader>fn "=expand('%:t:r')<CR>p
"-------------------- Layout control ------------------------
" Call functions based on patterns in the code
" Split Vertical
nnoremap <leader>sv <esc><C-W>H<CR>
" Split Horizontal
nnoremap <leader>sh <esc><C-W>K<CR>
" Split Swap
nnoremap <leader>ss <esc><C-W><C-X><CR>
" Split Tab
 nnoremap <leader>st <esc><C-W>T<CR>

"-------------------------------------------------------------------------------
" Pinky Saving map for esc key
"-------------------------------------------------------------------------------
inoremap ;; <esc>
nnoremap ;; <esc>
vnoremap ;; <esc>

"-------------------------------------------------------------------------------
" My maps to normal editor shortcuts
" ------------------------------------------------------------------------------
" This allows for pasting in paste mode
set pastetoggle=<f10>
inoremap <C-v> <f10><C-r>+<f10>
inoremap <A-v> <f10><C-r>+<f10>
" select all
vnoremap a <esc> gg V G>

" Fix weird arrows in some terminals
let g:NERDTreeDirArrows=0
nmap <C-D> :NERDTreeToggle<CR>


" Disable swap files, they suck
set nobackup      
set nowritebackup 
set noswapfile   

" use ack
set grepprg=ack


" Play nice in tmux
if &term =~ '^screen'
    " tmux will send xterm-style keys when xterm-keys is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Navigate window splits easily
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j


set number
