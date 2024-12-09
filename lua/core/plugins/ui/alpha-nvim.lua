return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- nvim-web-devicons for file icons
        dashboard.file_icons = { provider = "devicons" }

        -- dashboard header
        dashboard.section.header.val = {
            [[                                                    ]],
            [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
            [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
            [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
            [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
            [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
            [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
            [[                                                    ]],
        }

        -- dashboard buttons
        dashboard.section.buttons.val = {
            dashboard.button("f", " > Find file", ":cd $HOME |Telescope find_files<CR>"),
            dashboard.button("e", " > Open Nvim Tree", ":NvimTreeToggle<CR>"),
            dashboard.button("r", " > Recent", ":Telescope oldfiles<CR>"),
            dashboard.button("g", " > Live grep", ":Telescope live_grep<CR>"),
            dashboard.button("q", " > Quit", ":qa<CR>"),
        }

        dashboard.section.buttons.opts = {
            spacing = 0,
            position = "center",
            hl = "Keyword",
        }

        -- set footer
        local function footer()
            return { 

        }
        
        end
        -- set highlight group
        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.hl = "@exception"
        dashboard.section.header.opts.hl = "@exception" 

 
        -- noautocmd
        dashboard.opts.opts.noautocmd = true

        -- set up alpha with the dashboard theme
        alpha.setup(dashboard.opts)
    end,
}
