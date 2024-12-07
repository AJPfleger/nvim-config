return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
                "bibtex",
		"c",
		"cmake",
		"cpp",
		"latex",
		"lua",
		"markdown",
		"python",
	  },
          sync_install = false,
          highlight = {
		  enable = true,
		  disable = { "latex", "bibtex" },
	  },
          indent = { enable = true },  
        })
    end
 }

