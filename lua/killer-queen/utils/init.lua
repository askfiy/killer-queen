local M = {}

function M.set_hl(name, opts)
    local ok, err = pcall(vim.api.nvim_set_hl, 0, name, opts)
    if not ok then
        vim.api.nvim_echo({
            {
                ("set highlight `%s` failed\n%s"):format(name, err),
                "ErrorMsg",
            },
        }, true, {})
    end
end

function M.bulk_set_hl(groups)
    for name, opts in pairs(groups) do
        M.set_hl(name, opts)
    end
end

return M
