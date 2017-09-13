require("utils")

require("compe").setup({
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = "enable",
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    source = {
        path = true,
        buffer = true,
        calc = true,
        vsnip = true,
        nvim_lsp = true,
        nvim_lua = true,
        spell = true,
        tags = true,
        snippets_nvim = true,
        treesitter = true
    }
})

map("i", "<Tab>", "pumvisible() ? '<C-n>' : '<TAB>'", { silent = true, expr = true })
map("i", "<S-Tab>", "pumvisible() ? '<C-p>' : '<C-h>'", { silent = true, expr = true })
