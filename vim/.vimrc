" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"
set relativenumber
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>


call plug#begin()

Plug 'christoomey/vim-tmux-runner'

call plug#end()
