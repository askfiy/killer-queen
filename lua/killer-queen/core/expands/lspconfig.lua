local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        DiagnosticError = { fg = colors.base01 },
        DiagnosticWarn = { fg = colors.base03 },
        DiagnosticInfo = { fg = colors.base06 },
        DiagnosticHint = { fg = colors.base04 },

        DiagnosticUnderlineError = { undercurl = true, sp = colors.base01 },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.base03 },
        DiagnosticUnderlineInformation = {
            undercurl = true,
            sp = colors.base06,
        },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.base04 },
        DiagnosticUnnecessary = { link = "Comment" },
        LspInlayHint = { fg = colors.base08 },
        LspInfoBorder = { bold = true },
        LspSignatureActiveParameter = { bold = true },

        DiagnosticSignError = { link = "DiagnosticError" },
        DiagnosticSignWarn = { link = "DiagnosticWarn" },
        DiagnosticSignInformation = { link = "DiagnosticInfo" },
        DiagnosticSignHint = { link = "DiagnosticHint" },
        DiagnosticFloatingError = { link = "DiagnosticError" },
        DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
        DiagnosticFloatingInformation = { link = "DiagnosticInfo" },
        DiagnosticFloatingHint = { link = "DiagnosticHint" },
        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInformation = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint = { link = "DiagnosticHint" },
    }
end

return M
