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
        Directory = { fg = colors.base06, bold = true },
        NormalFloat = {
            fg = colors.base07,
            bg = config.is_border and "NONE" or colors.color01,
        },
        FloatBorder = {
            fg = colors.base08,
            bg = config.is_border and "NONE" or colors.color01,
        },
    }, hl_group)
end

return M
