filetype plugin indent on
syntax enable

let maplocalleader = ','
let g:ale_disable_lsp = 1

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'enricobacis/vim-airline-clock'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'tpope/vim-commentary'
Plug 'junegunn/seoul256.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
call plug#end()

:lua require("nvim-tree").setup()
:lua require("nvim-web-devicons").setup()

set relativenumber
set shiftwidth=2
set autoindent
set smartindent

inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"
nmap <C-n> :NvimTreeToggle <kEnter>
nmap <C-g> :Goyo <kEnter> :Limelight!! <kEnter>
nnoremap <space> za
colo seoul256
command Make :!gcc %:t

" commands for seoul and transparent colors, respectively
command Seoul :colo seoul256
command Wow :hi Normal guibg=none ctermbg=none | hi LineNr guibg=none ctermbg=none | " hi EndOfBuffer guibg=none ctermbg=none
" autocmd VimEnter * Copilot disable
autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell
set foldmethod=syntax
let g:markdown_folding=1
set foldnestmax=1

" Below is for a transparent nvim ^_^
" hi Normal guibg=none ctermbg=none
" hi LineNr guibg=none ctermbg=none
" hi Folded guibg=none ctermbg=none
" hi NonText guibg=none ctermbg=none
" hi SpecialKey guibg=none ctermbg=none
" hi VertSplit guibg=none ctermbg=none
" hi SignColumn guibg=none ctermbg=none
" hi EndOfBuffer guibg=none ctermbg=none
