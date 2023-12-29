local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        GitSignsAdd = { fg = colors.base02 },
        GitSignsChange = { fg = colors.base03 },
        GitSignsDelete = { fg = colors.base01 },
        GitSignsCurrentLineBlame = { fg = colors.base08 },
        GitSignsAddLn = { link = "GitSignsAdd" },
        GitSignsChangeLn = { link = "GitSignsChange" },
        GitSignsDeleteLn = { link = "GitSignsDelete" },
        GitSignsAddInline = { link = "GitSignsAdd" },
        GitSignsDeleteInline = { link = "GitSignsDelete" },
        GitSignsChangeInline = { link = "GitSignsChange" },
    }
end

return M
