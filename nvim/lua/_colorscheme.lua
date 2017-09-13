require("colorbuddy").colorscheme("onebuddy")
require("utils")

local primary = "#212733"
local secondary = "#384354"

highlights(
    {
        ExtraWhitespace = {fg = secondary, bg = primary},
        LineNr = {fg = "#212733", bg = primary},
        SignColumn = {fg = "#212733", bg = primary},
        GitGutterAdd = {fg = "#BBE67E", bg = primary},
        GitGutterChange = {fg = "#5CCFE6", bg = primary},
        GitGutterDelete = {fg = "#F07178", bg = primary},
        GitGutterChangeDelete = {fg = "#FFD57F", bg = primary},
        BufferCurrent = {fg = primary, bg = primary},
        BufferCurrent = {fg = "#d9d7ce", bg = primary},
        BufferCurrentMod = {fg = "#ff3333", bg = primary},
        BufferCurrentSign = {fg = "#ffc44c", bg = primary},
        BufferCurrentTarget = {fg = "red", bg = primary},
        BufferVisible = {fg = "#efefef", bg = primary},
        BufferVisibleMod = {fg = "#ff3333", bg = primary},
        BufferVisibleSign = {fg = "#efefef", bg = primary},
        BufferVisibleTarget = {fg = "red", bg = primary},
        BufferInactive = {fg = "#888888", bg = secondary},
        BufferInactiveMod = {fg = "#ff3333", bg = secondary},
        BufferInactiveSign = {fg = "#3d4751", bg = secondary},
        BufferInactiveTarget = {fg = "#e06c75", bg = secondary},
        BufferShadow = {fg = prmiary, bg = primary},
        Normal = {fg = secondary, bg = primary},
        DiffAdd = {fg = "#98c379", bg = primary},
        DiffChange = {fg = "#d19a66", bg = primary},
        DiffDelete = {fg = "#e06c75", bg = primary},
        DiffText = {fg = "#61afef", bg = primary}
    }
)

cmd("highlight! Comment cterm=italic")
