" Specify a directory for plugins For Neovim: stdpath('data') . '/plugged' Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.config/nvim/plugged') 
 Plug 'styled-components/vim-styled-components', { 'branch': 'main'}
 Plug 'nvim-lua/popup.nvim' 
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
 Plug 'NTBBloodbath/galaxyline.nvim' , {'branch': 'main'}
 Plug 'kyazdani42/nvim-web-devicons' " for file icons 
 Plug 'kyazdani42/nvim-tree.lua'
 Plug 'jiangmiao/auto-pairs'
 Plug 'sheerun/vim-polyglot'
 Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
 Plug 'neovim/nvim-lspconfig'
 Plug 'hrsh7th/nvim-compe'
 Plug 'nvim-lua/lsp-status.nvim'
 Plug 'tpope/vim-fugitive'
 Plug 'dracula/vim', { 'as': 'dracula' }
 Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
 Plug 'jose-elias-alvarez/null-ls.nvim'
 Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

 " debugging
 Plug 'Pocco81/DAPInstall.nvim'
 Plug 'mfussenegger/nvim-dap'
 Plug 'leoluz/nvim-dap-go'
 Plug 'rcarriga/nvim-dap-ui'
 Plug 'theHamsta/nvim-dap-virtual-text'
 Plug 'nvim-telescope/telescope-dap.nvim'

 call plug#end() 

 let g:tokyonight_style = 'night'
 
" Config Section 
 syntax enable
 if (has("termguicolors")) 
	 set termguicolors
 endif 
 colorscheme tokyonight 
 set ruler 
 set number 
 set ruler
 set number
 set hidden 
 set tabstop=4 softtabstop=4
 set shiftwidth=4 
 set expandtab 
 set scrolloff=8
 set signcolumn=yes
 set relativenumber
 set cursorline

" Nvim Setup
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.

lua require('brossdev')

" Key Maps
"
let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>y "=y
nnoremap <leader>Y gg"+yG
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <Leader>s :update<CR>
tnoremap  <Esc> <C-\><C-n>


