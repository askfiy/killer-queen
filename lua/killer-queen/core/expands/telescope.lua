local M = {}

function M.get_highlight(colors, config)
    return {
        TelescopeTitle = { link = "Title" },
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeSelectionCaret = { fg = colors.base06 },
        TelescopeSelection = { bg = colors.color02 },
        TelescopeMatching = { fg = colors.base06, bold = true },
    }
end

return M
