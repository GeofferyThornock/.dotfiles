return {
    { 
        "obsidian-nvim/obsidian.nvim", version = "*",
        dependencies = {
            "nvim-lua/plenary.nvim",
        }, 
        config = function()
            require("obsidian").setup {

                legacy_commands = false,

                workspaces = { 
                    { name = "personal", path = "~/BRAIN", },
                },
                notes_subdir = "rough",

                daily_notes = {
                    -- Optional, if you keep daily notes in a separate directory.
                    folder = "rough",
                    -- Optional, if you want to change the date format for the ID of daily notes.
                    date_format = "%Y%m%d%I%M",

                    default_tags = { "daily-notes" },
                },

                new_notes_location = "notes_subdir",

                callbacks = {
                    enter_note = function(_, note)
                      vim.keymap.set("n", "<C-n>", "<cmd>Obsidian new<cr>", {
                        buffer = note.bufnr,
                      })
                    end,
                },

                note_id_func = function(title)
                    return tostring(os.date("%Y%m%d%I%M", os.time())) .. "_" .. title
                end,
            }
        end,
    },
    { 
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 
            'nvim-treesitter/nvim-treesitter',
            'nvim-tree/nvim-web-devicons' 
        },
        --@module 'render-markdown'
        --@type render.md.UserConfig
        opts = {},
    }
}
