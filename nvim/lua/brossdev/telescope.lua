local actions = require('telescope.actions')

require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-q>"] = actions.send_to_qflist,
                ["<C-s>"] = actions.select_horizontal,
                ["<C-x>"] = actions.select_vertical,
            },
            n = {
                ["<C-s>"] = actions.select_horizontal,
               ["<C-x>"] = actions.select_vertical,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    },
    pickers = {
        buffers = {
            theme = "dropdown",
            mappings = {
                i = {
                    ["<c-d>"] = "delete_buffer",
                },
                n = {
                    ["<c-d>"] = "delete_buffer",
                }
            }
        }
    }
}

require('telescope').load_extension('fzy_native')


function own_search_dotfiles()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "$HOME/dotfiles/",
    })
end

