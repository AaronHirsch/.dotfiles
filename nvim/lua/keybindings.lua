require("utils")

g.mapleader = " "

map("n", "confe", ":e $MYVIMRC<CR>")
map("n", "confr", ":source $MYVIMRC<CR>")
map("n", "<leader>s", ":%s///gc<Left><Left><Left>")
map("n", "<CR>", ":set nohlsearch!<CR> :set nohlsearch?<CR>", {silent = true})
map("n", "J", "mzgJ`z")
map("n", "j", '(v:count == 0 ? "gj" : "j")', {expr = true, silent = true})
