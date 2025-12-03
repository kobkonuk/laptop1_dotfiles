return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "lukas-reineke/indent-blankline.nvim"
	use {
    "echasnovski/mini.pairs",
    config = function()
      require("mini.pairs").setup({})
    end
  }
	use {
    "RedsXDD/neopywal.nvim",
    config = function()
      require("neopywal").setup()
      vim.cmd("colorscheme neopywal")
    end
  }
	use {
  	"nvim-tree/nvim-tree.lua",
  	requires = { "nvim-tree/nvim-web-devicons" },
  	config = function()
    	require("nvim-tree").setup()
  	end
	}
	use {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NormalFloat",     
          "NvimTreeNormal",   
          "NvimTreeNormalNC", 
        }
      })
    end
  }
	use({
    "kylechui/nvim-surround",
    tag = "*", 
    config = function()
        require("nvim-surround").setup({

        })
    end
	})
end)

