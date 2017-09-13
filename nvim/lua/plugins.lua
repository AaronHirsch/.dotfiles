local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd

local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

cmd([[packadd packer.nvim]])
execute([[autocmd BufWritePost plugins.lua PackerCompile]])

require("packer").startup(
    function()
        use {"wbthomason/packer.nvim", opt = true}

        use {
            "norcalli/nvim-colorizer.lua",
            config = function()
                require "colorizer".setup()
            end
        }

        use {
            "easymotion/vim-easymotion",
            config = function()
                require("_easymotion")
            end
        }

        use {
            "w0rp/ale",
            config = function()
                require("_ale")
            end
        }

        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            config = function()
                require "_treesitter"
            end
        }

        use {
            "glepnir/galaxyline.nvim",
            branch = "main",
            config = function()
                require "_spaceline"
            end,
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        use {
            "lewis6991/gitsigns.nvim",
            requires = {"nvim-lua/plenary.nvim"},
            config = function()
                require "gitsigns".setup()
            end
        }
        use {"christoomey/vim-tmux-navigator"}
        use {"ironhouzi/vim-stim"}
        use {
            "ntpeters/vim-better-whitespace",
            config = function()
                require("_better-whitespace")
            end
        }
        use {
            "takac/vim-hardtime",
            config = function()
                require("_hardtime")
            end
        }
        use {"tomtom/tcomment_vim"}

        use {
            "tpope/vim-fugitive",
            requires = {"airblade/vim-gitgutter"},
            config = function()
                require("_fugitive")
            end
        }

        use {
            "Th3Whit3Wolf/onebuddy",
            requires = {"tjdevries/colorbuddy.vim"},
            after = {"vim-fugitive"},
            config = function()
                require("_colorscheme")
            end
        }

        use {
            "haya14busa/incsearch.vim",
            requires = {"haya14busa/incsearch-fuzzy.vim", "haya14busa/incsearch-easymotion.vim"}
        }
        use {
            "romgrk/barbar.nvim",
            requires = {"kyazdani42/nvim-web-devicons"},
            config = function()
                require("_barbar")
            end
        }
        use {
            "nvim-telescope/telescope.nvim",
            requires = {"nvim-lua/popup.nvim", "nvim-lua/plenary.nvim"},
            config = function()
                require("_telescope")
            end
        }
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {"kyazdani42/nvim-tree.lua"},
            config = function()
                require("_tree")
            end
        }

        use {
            "glepnir/lspsaga.nvim",
            requires = {"neovim/nvim-lspconfig", "alexaandru/nvim-lspupdate", "onsails/lspkind-nvim"},
            config = function()
                require("lspconfig").tsserver.setup({})
                require("lspsaga").init_lsp_saga()
                require("lspkind").init({})
            end
        }

        use {
            "hrsh7th/nvim-compe",
            config = function()
                require("_completion")
            end
        }

        use {
            "glepnir/dashboard-nvim",
            after = { "telescope.nvim" },
            config = function()
                require("_dashboard")
            end
        }
    end
)
