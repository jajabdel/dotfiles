" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"
set relativenumber
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

nmap <leader>j o<esc>


inoremap jk <esc>
inoremap kj <esc>

packloadall

autocmd BufWritePre *.html *.js,*.jsx,*.mjs,*.ts,*.tsx,*.json :Prettier

call plug#begin()

Plug 'christoomey/vim-tmux-runner'

" post install (yarn install | npm install) then load plugin only for editing
" supported files
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" pulgin fro react dev
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'

call plug#end()
