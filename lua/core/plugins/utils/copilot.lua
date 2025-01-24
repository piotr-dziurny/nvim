return {
    {
        'zbirenbaum/copilot.lua',
        cmd = 'Copilot',
        event = 'InsertEnter',
        opts = {
            panel = { enabled = false },
            suggestion = {
                auto_trigger = true,
                -- Use Alt to interact with Copilot.
                keymap = {
                    -- Disable the built-in mapping, we'll configure it in nvim-cmp.
                    accept = false,
                    accept_word = '<M-w>', -- Meta key = ALT
                    accept_line = '<M-l>',
                    next = '<M-]>',
                    prev = '<M-[>',
                    dismiss = '/',
                },
            },
            filetypes = { markdown = true },
        },
        config = function(_, opts)
            local cmp = require 'cmp'
            local copilot = require 'copilot.suggestion'

            -- Set up Copilot with the provided options.
            require('copilot').setup(opts)

            -- Function to control suggestion visibility.
            local function set_trigger(trigger)
                vim.b.copilot_suggestion_auto_trigger = trigger
                vim.b.copilot_suggestion_hidden = not trigger
            end

            -- Hide suggestions when the completion menu is open.
            cmp.event:on('menu_opened', function()
                if copilot.is_visible() then
                    copilot.dismiss()
                end
                set_trigger(false)
            end)

            -- Re-enable suggestions when the menu closes.
            cmp.event:on('menu_closed', function()
                set_trigger(true) -- Always re-enable suggestions after menu closes.
            end)
        end,
    },
}
