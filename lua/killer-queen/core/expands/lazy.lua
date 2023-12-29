local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(colors, config)
    return {
        Bold = {
            fg = colors.base11,
        },
        LazyH1 = {
            fg = colors.base00,
            bg = colors.base06,
        },
        LazyButton = {
            fg = colors.base07,
            bg = colors.color02,
        },
        LazySpecial = { fg = colors.base07 },
        LazyLocal = { fg = colors.base05 },
        LazyButtonActive = {
            fg = colors.base07,
            bg = colors.color03,
        },
        LazyComment = { fg = colors.base02 },
        LazyReasonInit = { fg = colors.base10 },
        LazyH2 = { fg = colors.base12 },
        LazyProp = { link = "LazyH2" },
        LazyReasonCmd = { link = "LazyH2" },
        LazyReasonSource = { link = "LazyH2" },
        LazyReasonEvent = { fg = colors.base13 },
        LazyReasonFt = { fg = colors.base13 },
        LazyReasonKeys = { fg = colors.base14 },
        LazyReasonPlugin = { fg = colors.base13 },
        LazyReasonRuntime = { fg = colors.base11 },
        LazyReasonStart = { fg = colors.base11 },
    }
end

return M
