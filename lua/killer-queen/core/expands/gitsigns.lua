local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        GitSignsAdd = { fg = colors.base02 },
        GitSignsAddLn = { link = "GitSignsAdd" },
        GitSignsAddNr = { link = "GitSignsAdd" },
        GitSignsChange = { fg = colors.base03 },
        GitSignsChangeLn = { link = "GitSignsChange" },
        GitSignsChangeNr = { link = "GitSignsChange" },
        GitSignsChangeDelete = { fg = colors.base03 },
        GitSignsChangeDeleteLn = { link = "GitSignsChange" },
        GitSignsChangeDeleteNr = { link = "GitSignsChange" },
        GitSignsDelete = { fg = colors.base01 },
        GitSignsDeleteLn = { link = "GitSignsDelete" },
        GitSignsDeleteNr = { link = "GitSignsDelete" },
        GitSignsTopdelete = { fg = colors.base01 },
        GitSignsTopdeleteLn = { link = "GitSignsDelete" },
        GitSignsTopdeleteNr = { link = "GitSignsDelete" },
        GitSignsCurrentLineBlame = { fg = colors.base08 },
        GitSignsAddInline = { link = "GitSignsAdd" },
        GitSignsDeleteInline = { link = "GitSignsDelete" },
        GitSignsChangeInline = { link = "GitSignsChange" },
    }
end

return M
