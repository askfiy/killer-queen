local M = {}

function M.get_highlight(colors, config)
    return {
        CmpItemAbbr = { fg = colors.base15 },
        CmpItemKind = { link = "CmpItemAbbr" },
        CmpItemMenu = { link = "CmpItemAbbr" },

        CmpItemAbbrMatch = { fg = colors.base14, bold = true },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemAbbrDeprecated = { fg = colors.base08 },

        CmpItemKindVariable = { fg = colors.base14 },
        CmpItemKindText = { link = "CmpItemKindVariable" },

        CmpItemKindKeyword = { fg = colors.base12 },
        CmpItemKindConstructor = { link = "CmpItemKindKeyword" },
        CmpItemKindUnit = { link = "CmpItemKindKeyword" },
        CmpItemKindFunction = { link = "CmpItemKindKeyword" },
        CmpItemKindMethod = { link = "CmpItemKindKeyword" },
        CmpItemKindConstant = { link = "CmpItemKindKeyword" },

        CmpItemKindStruct = { fg = colors.base11 },
        CmpItemKindInterface = { link = "CmpItemKindStruct" },
        CmpItemKindClass = { link = "CmpItemKindStruct" },
        CmpItemKindField = { link = "CmpItemKindStruct" },
        CmpItemKindProperty = { link = "CmpItemKindStruct" },
        CmpItemKindEnum = { link = "CmpItemKindStruct" },
        CmpItemKindEnumMember = { link = "CmpItemKindStruct" },

        CmpItemKindFile = { fg = colors.base13 },
        CmpItemKindSnippet = { link = "CmpItemKindFile" },
        CmpItemKindFolder = { link = "CmpItemKindFile" },
        CmpItemKindModule = { link = "CmpItemKindFile" },

        CmpItemKindColor = { fg = colors.base01 },
        CmpItemKindReference = { link = "CmpItemKindColor" },
        CmpItemKindValue = { link = "CmpItemKindColor" },
        CmpItemKindEvent = { link = "CmpItemKindColor" },
        CmpItemKindOperator = { link = "CmpItemKindColor" },
        CmpItemKindTypeParameter = { link = "CmpItemKindColor" },
    }
end

return M
