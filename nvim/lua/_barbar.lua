require("utils")

g.bufferline = {
    shadow = true,
    animation = true,
    icons = true,
    closable = false,
    clickable = false,
    semantic_letters = true,
    letters = "asdfjkl;ghnmxcbziowerutyqpASDFJKLGHNMXCBZIOWERUTYQP",
    maximum_padding = 4,
    unsafe = true
}

map("n", "<Tab>", ":BufferNext<CR>", {silent = true})
map("n", "<S-Tab>", ":BufferPrevious<CR>", {silent = true})
map("n", "<S-s>", ":BufferPick<CR>", {silent = true})
map("n", "<leader>b", ":<C-u>Buffers<CR>", {silent = true})
map("", "<leader>d", ":bd<CR>", {silent = true, noremap = false})
