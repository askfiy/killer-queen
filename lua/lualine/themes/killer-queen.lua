local colors = require("killer-queen.colors")

local normal_component = {
    a = { fg = colors.base00, bg = colors.base06, gui = "bold" },
    b = { fg = colors.base12, bg = colors.color02 },
    c = { fg = colors.base07, bg = colors.color00 },

    x = { fg = colors.base12, bg = colors.color00 },
    y = { fg = colors.base14, bg = colors.color03 },
    z = { fg = colors.base00, bg = colors.base06 },
}

local insert_component = vim.deepcopy(normal_component)
insert_component["a"]["bg"] = colors.base10
insert_component["z"]["bg"] = colors.base10
insert_component["b"]["fg"] = colors.base13
insert_component["y"]["fg"] = colors.base13

local visual_component = vim.deepcopy(normal_component)
visual_component["a"]["bg"] = colors.base11
visual_component["z"]["bg"] = colors.base11
visual_component["b"]["fg"] = colors.base13
visual_component["y"]["fg"] = colors.base13

local replace_component = vim.deepcopy(normal_component)
replace_component["a"]["bg"] = colors.base09
replace_component["z"]["bg"] = colors.base09
replace_component["b"]["fg"] = colors.base11
replace_component["y"]["fg"] = colors.base11

local command_component = vim.deepcopy(normal_component)
command_component["a"]["bg"] = colors.base12
command_component["z"]["bg"] = colors.base12
command_component["b"]["fg"] = colors.base14
command_component["y"]["fg"] = colors.base14

return {
    normal = normal_component,
    insert = insert_component,
    visual = visual_component,

    replace = replace_component,
    command = command_component,
    inactive = normal_component,
}
