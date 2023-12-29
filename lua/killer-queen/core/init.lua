local M = {}

function M.get_basic_highlight(colors, config)
    return require("killer-queen.core.basic").get_highlight(colors, config)
end

function M.get_expands_highlight(colors, config)
    local expands = {}
    local expands_directory = "killer-queen.core.expands"

    local enable_expands_table = vim.tbl_filter(function(key)
        return config.expands[key]
    end, vim.tbl_keys(config.expands))

    -- Load all plugin color schemes
    for _, expand_name in ipairs(enable_expands_table) do
        local ok, expand_module =
            pcall(require, ("%s.%s"):format(expands_directory, expand_name))

        if ok then
            expands = vim.tbl_extend(
                "force",
                expands,
                expand_module.get_highlight(colors, config)
            )
        else
            vim.api.nvim_echo({
                {
                    ("%s : is not exists"):format(expand_name),
                    "ErrorMsg",
                },
            }, true, {})
        end
    end

    return expands
end

function M.get_transparent_highlight(colors, config)
    if not  config.transparent then
        return {}
    end
    return require("killer-queen.core.transparent").get_highlight(colors, config)
end

return M
