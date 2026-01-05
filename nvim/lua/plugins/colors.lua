function Cmp(color)
    local colorMap = {}
    colorMap["cat"] = "catppuccin"
    colorMap["ef"] = "everforest"
    colorMap["paper"] = "papercolor"
    colorMap["cyber"] = "cyberdream"
    colorMap["gruv"] = "gruvbox"
    colorMap["kana-d"] = "kanagawa-dragon"
    colorMap["kana-w"] = "kanagawa-wave"
    colorMap["moonfly"] = "moonfly"
    vim.cmd.colorscheme(colorMap[color] or colorMap["moonfly"])
end

return {
    { "catppuccin/nvim",            name = "catppuccin", priority = 1000 },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            local cyber = require("cyberdream")
            cyber.setup({
                transparent = false,
                -- Override colors
                colors = {
                    -- For a list of colors see `lua/cyberdream/colours.lua`

                    -- Override colors for both light and dark variants
                    bg = "#000000",
                    green = "#00ff00",

                    -- If you want to override colors for light or dark variants only, use the following format:
                    dark = {
                        magenta = "#ff00ff",
                        fg = "#eeeeee",
                    },
                    light = {
                        red = "#ff5c57",
                        cyan = "#5ef1ff",
                    },
                },
            })
            vim.api.nvim_set_keymap("n", "<leader>cit", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })
        end,
    },
    { "sainnhe/everforest",         lazy = false,        priority = 1000 },
    { "NLKNguyen/papercolor-theme", lazy = false,        priority = 1000 },
    { "morhetz/gruvbox",            lazy = false,        priority = 1000 },
    { "rebelot/kanagawa.nvim",      lazy = false,        priority = 1000 },
    { "bluz71/vim-moonfly-colors",  name = "moonfly",    lazy = false,   priority = 1000 },
}
