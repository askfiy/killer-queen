local M = {}

function M.get_highlight(colors, config)
    return {
        TelescopeTitle = { link = "Title" },
        TelescopeSelectionCaret = { fg = colors.base06 },
        TelescopeSelection = { bg = colors.cursor_line },
        TelescopeMatching = { fg = colors.base06, bold = true },
        TelescopeBorder = {},
    }
end

return M
