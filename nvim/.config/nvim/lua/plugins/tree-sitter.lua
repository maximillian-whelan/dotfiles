return  
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config= function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({ 
	ensure_installed = { "lua", "javascript", "typescript" },
	sync_install = false, 
	highlight = { enable = true },
	indent = { enable = true }	
      })


      vim.keymap.set('n', '<leader>fsl', ':Neotree filesystem reveal left<CR>, {}')
      vim.keymap.set('n', '<leader>fsr', ':Neotree filesystem reveal right<CR>, {}')
    end
  }
