local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        WhichKey = { fg = colors.base14 },
        WhichKeyGroup = { fg = colors.base12, bold = true },
        WhichKeySeparator = { fg = colors.base11 },
        WhichKeyDesc = { fg = colors.base14 },
        WhichKeyFloat = { bg = colors.color01 },
    }
end

return M
