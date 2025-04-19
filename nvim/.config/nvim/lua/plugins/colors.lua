function set_cs(color)
  color = color or "cyberdream"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return  {
  {
    "navarasu/onedark.nvim", 
    priority = 1000, 
    config = function()
      require('onedark').setup({
	style = 'darker'
      })
    end
  },
  {
      "scottmckendry/cyberdream.nvim",
      lazy = false,
      priority = 1000,
      config = function()
	swap_cs()
      end
    }
  }

