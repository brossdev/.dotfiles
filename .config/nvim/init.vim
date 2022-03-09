" Specify a directory for plugins For Neovim: stdpath('data') . '/plugged' Avoid using standard Vim directory names like 'plugin'
 call plug#begin('~/.config/nvim/plugged') 
" Plug 'fatih/vim-go', {'do': 'GoInstallBinaries'}
" Plug 'neoclide/coc.nvim', { 'branch': 'release'}
 Plug 'styled-components/vim-styled-components', { 'branch': 'main'}
 Plug 'nvim-lua/popup.nvim' 
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'
 Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
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
 call plug#end() 

 
" lua require'nvim_lsp'.tsserver.setup() 
" Config Section 
 syntax enable
 if (has("termguicolors")) 
	 set termguicolors
 endif 
 colorscheme dracula 
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
 " Coc Configuration let g:coc_global_extensions = [ \ 'coc-tsserver' \] " Config s

" Nvim Setup
"
" let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
" let g:nvim_tree_disable_window_picker = 1 "0 by default, will disable the window picker.
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 0 "1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_refresh_wait = 500 "1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
" let g:nvim_tree_window_picker_exclude = {
"     \   'filetype': [
"     \     'notify',
"     \     'packer',
"     \     'qf'
"     \   ],
"     \   'buftype': [
"     \     'terminal'
"     \   ]
"     \ }
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ 'folder_arrows': 0,
    \ }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }


" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue


lua require('brossdev')
" require('nvim-autopairs').setup()
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
" NvimTreeOpen and NvimTreeClose are also available if you need them


