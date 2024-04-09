:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a



call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'easymotion/vim-easymotion'
Plug 'aereal/vim-colors-japanesque'
Plug 'rebelot/kanagawa.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'github/copilot.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
set encoding=UTF-8


call plug#end()
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <C-z> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews


let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
 " :PlugClean :PlugInstall :UpdateRemotePlugins

 " :CocInstall coc-python
 " :CocInstall coc-clangd
 " :CocInstall coc-snippets
 " :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let mapleader = " "


" Map 'J' to 'Easymotion-w' for moving to words after the cursor
map J <Plug>(easymotion-w)
" Map 'K' to 'Easymotion-b' for moving to words before the cursor
map K <Plug>(easymotion-b)
nmap <leader>c <Plug>(easymotion-s)
" Use Tab for accepting copilot suggestion
imap <silent><script><expr> <Tab> copilot#Accept("\<Tab>")
let g:copilot_no_tab_map = v:true

inoremap <expr> <Enter> pumvisible() ? coc#_select_confirm() : "<Enter>"
colorscheme deus



" hi Normal guibg=#010101
hi Normal ctermbg=none
:highlight LineNr ctermfg=lightgrey
" hi LineNr  guifg=#505050   guibg=Black
" Set leader key to space (optional)

" Map `leader key + E` to open Netrw in the current window
nmap <leader>e :Ex<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>



" Map `leader key + F` to open Telescope find_files
nnoremap <leader>ls <cmd>Telescope find_files<cr>
" Open a new tab and then call Telescope live_grep
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" Open a new tab and then call Telescope find_files
noremap <leader>nt :tabnew<CR>
nnoremap <leader>tn :tabnew<CR>:lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>ff :lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('~') })<CR>



" Tab Navigation
" Open a new tab and find a file
" Go to the next tab
nnoremap L :tabnext<CR>
" Go to the previous tab
nnoremap H :tabprev<CR>

