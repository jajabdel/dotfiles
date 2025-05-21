" -------------------- Setting Options ----------------------------
set relativenumber              " Show relative line numbers.
set nocompatible                " Don't maintain compatibilty with Vi.
set hidden                      " Allow buffer change w/o saving
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor

" --------------------- Setting Options ----------------------------


"  -------------------- Normal Mode Custom Mappings -----------------------------------------
" nnoremap <SPACE> <Nop>

" set mapleader key
let mapleader="\<Space>"
" let mapleader = " "


" Easy access to the start of the line
nmap 0 ^
" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<CR>

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>

" Map Ctrl-s to write the file
nmap <C-s> :w<cr>

" Open a new line below the current without entering insert mode. Type space then o to trigger
nmap <leader>o o<esc>

" append a new line above the current without entering insert mode. Type space then O to trigger
nmap <leader>O O<esc>


" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>


" Edit your vimrc in a new tab
nmap <leader>vi :tabedit ~/.vimrc<cr>

" Copy the entire buffer into the system register
nmap <leader>co ggVG*y

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

"  -------------------- Normal Mode Custom Mappings -----------------------------------------

"  -------------------- Insert Mode Custom Mappings -----------------------------------------
" Map Ctrl-s to exit the insert then write the file
imap <C-s> <esc>:w<cr>	

"  -------------------- Insert Mode Custom Mappings -----------------------------------------
  

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


" Map j then k (or k then j) to exit the inser mode 
inoremap jk <esc>
inoremap kj <esc>



nnoremap <C-q> <C-v>
packloadall

" ------------------------ Autocommands ----------------------------------
" Def. Autocammdns allow yout ot hook into Vim's event system.
"      This lets you run any cmd based on events that Vim triggers

" Bind `q` to close the buffer for help files
autocmd Filetype help nnoremap <buffer> q :q<CR>

autocmd BufWritePre *.html *.js,*.jsx,*.mjs,*.ts,*.tsx,*.json :Prettier

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =



" To see the full list of autocmds, go to :h autocmd-events. 
" ------------------------ Autocommands ----------------------------------


" ------------------------ Custom Commands ----------------------------------
" Command aliases for typoed commands (accidentally holding shift too long)
command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e

" ------------------------ Custom Commands ----------------------------------
"   
" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" call plug#begin()

" Plug 'christoomey/vim-tmux-runner'
" Plug 'christoomey/vim-system-copy'


" post install (yarn install | npm install) then load plugin only for editing
" supported files
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" Pulgin fro react dev
" Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jparise/vim-graphql'

" call plug#end()
"
call plug#begin('~/.vim/autoload')

Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

call plug#end()

" Open file search with Ctrl-P
nnoremap <C-p> :Files<CR>

" Search in current buffer
nnoremap <leader>/ :BLines<CR>

" Search all buffers
nnoremap <leader>? :Lines<CR>

" Switch buffers
nnoremap <leader>b :Buffers<CR>

