local packer = require("packer")

packer.startup({
  function(use)
    -- Packer can update itself
    use "wbthomason/packer.nvim"
    -------------------------- plugins -------------------------------------------
    -- nvim-tree
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
    })

    -- bufferline
    use({
      "akinsho/bufferline.nvim",
      requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })

    -- lualine
    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
    })
    use("arkav/lualine-lsp-progress")

    -- telescope
    use({
      "nvim-telescope/telescope.nvim",
      requires = { "nvim-lua/plenary.nvim" },
    })

    -- telescope extensions
    use("LinArcX/telescope-env.nvim")
    use("nvim-telescope/telescope-ui-select.nvim")

    -- dashboard-nvim
    use("glepnir/dashboard-nvim")
    -- project
    use("ahmedkhalf/project.nvim")

    -- treesitter
    use({
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate",
    })
    -- use("p00f/nvim-ts-rainbow")
    -- indent-blankline
    use("lukas-reineke/indent-blankline.nvim")

    --------------------- LSP --------------------
    use({ "williamboman/mason.nvim" })
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- Snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- UI 增强
    use("onsails/lspkind-nvim")
    use("tami5/lspsaga.nvim")
    -- 代码格式化
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- Lua 增强
    use("folke/lua-dev.nvim")
    -- TypeScript 增强
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
    -- JSON 增强
    use("b0o/schemastore.nvim")

    -- git
    use({ "lewis6991/gitsigns.nvim" })

    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
    -- OceanicNext
    use("mhartington/oceanic-next")
    -- gruvbox
    use({
      "ellisonleao/gruvbox.nvim",
      requires = { "rktjmp/lush.nvim" },
    })
    -- nord
    use("shaunsingh/nord.nvim")
    -- onedark
    use("ful1e5/onedark.nvim")
    -- nightfox
    use("EdenEast/nightfox.nvim")
  end,
  config = {
    -- 最大并发数
    max_jobs = 16,
    display = {
      -- 使用浮动窗口显示
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  }
})
