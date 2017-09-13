require("utils")

g.ale_lint_delay = 50
g.ale_lint_on_text_changed = "always"
g.ale_lint_on_enter = 1
g.ale_lint_on_save = 1
g.ale_fix_on_save = 1
g.ale_sign_error = "❯"
g.ale_sign_warning = "⚠"
g.ale_echo_msg_error_str = "E"
g.ale_echo_msg_warning_str = "W"
g.ale_echo_msg_format = "[%linter%] %s"
g.ale_statusline_format = {"⨉ %d", "⚠ %d", ""}

g.ale_python_pylint_use_global = 1
g.ale_javascript_eslint_use_global = 1
g.ale_json_jq_options = "--sort-keys"

g.ale_linters = {
    javascript = {"standard"},
    sql = {"sqlint"},
    typescript = {"tslint"},
    vim = {"vint"},
    vue = {"vls", "eslint"},
    yaml = {"yamllint"},
    lua = {"luac"}
}

g.ale_fixers = {
    html = {"eslint"},
    javascript = {"prettier-standard", "eslint"},
    json = {"jq"},
    markkdown = {"prettier"},
    sql = {"sqlfmt"},
    stylus = {"stylelint"},
    typescript = {"prettiier", "tslint"},
    vue = {"prettier", "eslint"},
    yaml = {"prettier"},
    py = {"black"},
    lua = {"luafmt"}
}

map("", "<leader>fo", ":ALEFix<CR>", {noremap = false})
map("", "<leader>ne", "<Plug>(ale_next_wrap)", {noremap = false, silent = true})
map("", "<leader>pe", "<Plug>(ale_previous_wrap)", {noremap = false, silent = true})
