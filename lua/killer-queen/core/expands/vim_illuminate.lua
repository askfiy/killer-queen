local M = {}

function M.get_highlight(colors, config)
    return {
        IlluminatedWordText = { bg = colors.color03 },
        IlluminatedWordRead = { link = "IlluminatedWordText" },
        IlluminatedWordWrite = { link = "IlluminatedWordText" },
    }
end

return M
