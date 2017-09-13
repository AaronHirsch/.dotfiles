execute = vim.api.nvim_command
api = vim.api
cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
fn = vim.fn -- to call Vim functions e.g. fn.bufnr()
g = vim.g -- a table to access global variables

scopes = {o = vim.o, b = vim.bo, w = vim.wo}

function opt(scope, key, value)
    scopes[scope][key] = value
    if scope ~= "o" then
        scopes["o"][key] = value
    end
end

function map(mode, key, result, opts)
    opts =
        vim.tbl_extend(
        "keep",
        opts or {},
        {
            noremap = true,
            silent = false,
            expr = false
        }
    )

    api.nvim_set_keymap(mode, key, result, opts)
end

-- Stolen from https://github.com/kyazdani42/nvim-palenight.lua/blob/master/lua/palenight.lua#L10
-- Usage:
-- highlight(Cursor, { fg = bg_dark, bg = yellow })
function highlight(group, styles)
    local s = vim.tbl_extend("keep", styles, {gui = "NONE", sp = "NONE", fg = "NONE", bg = "NONE"})
    cmd("highlight! " .. group .. " gui=" .. s.gui .. " guisp=" .. s.sp .. " guifg=" .. s.fg .. " guibg=" .. s.bg)
end

-- Usage:
-- highlights({
--      CursorLine   = { bg = bg },
--      Cursor       = { fg = bg_dark, bg = yellow }
-- })
function highlights(hi_table)
    for group, styles in pairs(hi_table) do
        highlight(group, styles)
    end
end

function hiLink(src, dest)
    cmd("highlight link " .. src .. " " .. dest)
end

function hiLinks(hi_table)
    for src, dest in pairs(hi_table) do
        hiLink(src, dest)
    end
end
