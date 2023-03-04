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
 Plug 'David-Kunz/jester'

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
 set splitright

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
nnoremap <leader>p __dP
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <Leader>s :update<CR>
tnoremap  <Esc> <C-\><C-n>

" Debugging  and testing Key Maps
nnoremap <F5> :lua require('dap').continue()<CR>
nmap <F2> :lua require('dap').step_into()<CR>
nmap <F3> :lua require('dap').step_over()<CR>
nmap <F12> :lua require('dap').step_out()<CR>
nmap <leader>b :lua require('dap').toggle_breakpoint()<CR>
nmap <leader>B :lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nmap <leader>lp :lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nmap <leader>dr :lua require('dap').repl.open()<CR>
nmap <leader>gdt :lua require('dap-go').debug_test()<CR>
nmap <leader>jt :lua require('jester').run()<CR>
nmap <leader>jdt :lua require('jester').debug()<CR>
nmap <leader>jf :lua require('jester').run_file()<CR>
nmap <leader>jdf :lua require('jester').debug_file()<CR>

" Git
nnoremap <Leader>gfs :G<CR>
nnoremap <Leader>gfc :Gvdiffsplit!<CR>
