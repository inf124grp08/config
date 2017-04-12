colorscheme desert

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
