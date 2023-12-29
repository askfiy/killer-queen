local M = {}

function M.get_highlight(colors, config)
    return {
        IlluminatedWordText = { bg = colors.color04 },
        IlluminatedWordRead = { link = "IlluminatedWordText" },
        IlluminatedWordWrite = { link = "IlluminatedWordText" },
    }
end

return M
