return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
      config = function()
        require('nvim-treesitter').setup {
            install_dir = vim.fn.stdpath('data') .. '/site',
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
        }
        require('nvim-treesitter').install({ 
            "lua",
            "tsx",
            "typescript",
            "php",
            "nix",
        })
      end
}
