local M = {}

function M.get_nvim_tree_highlight(colors, config)
    return {
        NvimTreeNormal = {},
        NvimTreeWinSeparator = { fg = colors.base08 },
    }
end

function M.get_highlight(colors, config)
    local hl_group = {}

    if config.expands.nvim_tree then
        for k, v in pairs(M.get_nvim_tree_highlight(colors, config)) do
            hl_group[k] = v
        end
    end

    return vim.tbl_extend("force", {
        Normal = { fg = colors.base07 },
        NormalFloat = { fg = colors.base07 },
        Directory = { fg = colors.base06, bold = true },
    }, hl_group)
end

return M
