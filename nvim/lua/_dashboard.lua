require("utils")

g.dashboard_executive = "telescope"
g.dashboard_default_executive = "telescope"
g.dashboard_default_header = "lambada"

g.dashboard_custom_section = {
    find_file = {
        description = {"  Find File                             <leader>f"},
        command = "DashboardFindFile"
    },
    find_word = {
        description = {"  Find word                             <leader>a"},
        command = "DashboardFindWord"
    }
}
