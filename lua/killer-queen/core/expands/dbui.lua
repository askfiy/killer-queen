local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        dbui_expanded_tables = { fg = colors.base06 },
        dbui_collapsed_tables = { fg = colors.base06 },
    }
end

return M
