local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        NvimTreeNormal = { bg = colors.color00 },
        NvimTreeWinSeparator = { fg = colors.base00, bg = colors.base00 },
        NvimTreeWindowPicker = { fg = colors.base07, bg = colors.base04 },
        NvimTreeFolderName = { fg = colors.base07 },
        NvimTreeFolderIcon = { fg = colors.base08 },
        NvimTreeEmptyFolderName = { link = "NvimTreeFolderName" },
        NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
        NvimTreeExecFile = { link = "NvimTreeFolderName" },
        NvimTreeOpenedFile = { link = "NvimTreeFolderName" },
        NvimTreeModifiedFile = { link = "NvimTreeFolderName" },
        NvimTreeSpecialFile = { link = "NvimTreeFolderName" },
        NvimTreeImageFile = { link = "NvimTreeFolderName" },
        NvimTreeIndentMarker = { link = "NvimTreeFolderName" },
        NvimTreeEndOfBuffer = { link = "NvimTreeNormal" },

        NvimTreeGitDirty = { fg = colors.base03 },
        NvimTreeGitNew = { fg = colors.base06 },
        NvimTreeGitStaged = { fg = colors.base03 },
        NvimTreeGitMerge = { fg = colors.base03 },
        NvimTreeGitRenamed = { fg = colors.base06 },
        NvimTreeGitDeleted = { fg = colors.base01 },
        NvimTreeGitIgnored = { fg = colors.base08 },
        NvimTreeBookmark = { fg = colors.base04 },
    }
end

return M
