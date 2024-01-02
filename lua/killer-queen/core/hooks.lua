local M = {}

function M.before(colors, config, utils)
    if "function" == type(config.hooks.before) then
        config.hooks.before(colors, config, utils)
    end
end

function M.after(colors, config, utils)
    if "function" == type(config.hooks.after) then
        config.hooks.after(colors, config, utils)
    end
end

return M
