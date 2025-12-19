function CMP(color)
    local colorMap = {}
    colorMap["cat"] = "catppuccin"
    colorMap["ef"] = "everforest"
    colorMap["paper"] = "papercolor"
    colorMap["gruv"] = "gruvbox"
    vim.cmd.colorscheme(colorMap[color] or colorMap["gruv"])
end

return {
    { "catppuccin/nvim",               name = "catppuccin", priority = 1000 },
    { "scottmckendry/cyberdream.nvim", lazy = false,        priority = 1000 },
    { "sainnhe/everforest",            lazy = false,        priority = 1000 },
    { "NLKNguyen/papercolor-theme",    lazy = false,        priority = 1000 },
    { "morhetz/gruvbox",    lazy = false,        priority = 1000 },
}
