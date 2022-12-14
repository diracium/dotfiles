"
" General settings
"

" file type recognition
filetype on
filetype plugin on
filetype indent on
set splitright
set splitbelow


" Set settings
set scrolloff=8
set clipboard=unnamedplus
set encoding=UTF-8
syntax enable 
syntax on 
set colorcolumn=100
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set autochdir
"set nowrap
"set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set signcolumn=yes
set background=dark
set cursorline
set ignorecase
set hlsearch
set wildignorecase
set nohlsearch
set hidden
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" Change esc
inoremap ii <Esc>

"Window spliting and movement

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-a>h :call WinMove('h')<CR>
nnoremap <silent> <C-a>j :call WinMove('j')<CR>
nnoremap <silent> <C-a>k :call WinMove('k')<CR>
nnoremap <silent> <C-a>l :call WinMove('l')<CR>

" Tabs

nnoremap <silent> <C-s>n :tabnew<CR>
nnoremap <silent> <C-s>k :tabnext<CR>
nnoremap <silent> <C-s>j :tabprev<CR>
nnoremap <silent> <C-s>h :tabfirst<CR>
nnoremap <silent> <C-s>l :tablast<CR>


"
" Telescope
"

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
