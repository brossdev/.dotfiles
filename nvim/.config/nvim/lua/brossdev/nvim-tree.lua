-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false, 
  respect_buf_cwd = true,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {"node_modules"}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    side = 'left',
    number = false,
    relativenumber = false
  },
  renderer = {
      add_trailing = true,
      highlight_opened_files = 'all',
      highlight_git = true, 
      group_empty = true,
      root_folder_modifier = ":~",
      special_files = { 'README.md', 'Makefile', 'MAKEFILE' } ,
      icons = { 
          padding = ' ',
          symlink_arrow = ' >> ',
          show = {
              file = true,
              folder = true,
              folder_arrow = false,
              folder = true
          },
glyphs = {
   default= '',
   symlink= '',
   git = {
     unstaged = "✗",
     staged = "✓",
     unmerged = "",
     renamed = "➜",
     untracked = "★",
     deleted = "",
     ignored = "◌"
     },
   folder = {
     arrow_open = "",
     arrow_closed = "",
     default = "",
     open = "",
     empty = "",
     empty_open = "",
     symlink = "",
     symlink_open = "",
     },
   },
      },
      indent_markers = {
          enable = true
      },

  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    open_file = {
      quit_on_open = true,
      resize_window = true,
       window_picker = {
           enable = false
   },
    },
 }
}

