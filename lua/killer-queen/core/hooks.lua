local M = {}

function M.before(colors, config, utils)
    if "function" == type(config.hooks.before) then
        config.hooks.before(colors, config, utils)
    end
end

function M.after(colors, config, utils)
    -- Reset some highlight groups
    if not config.transparent and not config.is_border then
        utils.bulk_set({
            NormalFloat = { link = "Pmenu" },
        })
        if config.expands.telescope then
            utils.bulk_set({
                TelescopeBorder = {},
            })
        end
    end
    if "function" == type(config.hooks.after) then
        config.hooks.after(colors, config, utils)
    end
end

return M
