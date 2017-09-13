require("utils")

map("n", "<leader>a", "<cmd>Telescope live_grep<CR>", {silent = true})
map("n", "+", "<cmd>Telescope grep_string<CR>", {silent = true})
map("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<CR>", {silent = true})
map("n", "<leader>f", "<cmd>Telescope git_files<CR>", {silent = true})
map("n", "<leader>q", "<cmd>Telescope quickfix<CR>", {silent = true})
map("n", "<leader>t", "<cmd>Telescope tags<CR>", {silent = true})
