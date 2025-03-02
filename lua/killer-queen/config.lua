local default_config = {
    -- Do you have some UI with borders?
    -- Such as completion menu, floating terminal, etc.? If none of them have a border, try setting it to false
    is_border = true,
    -- Whether to enable background transparency
    transparent = false,
    -- Whether to apply the adapted plugin
    expands = {
        lazy = true,
        dbui = true,
        aerial = true,
        nvim_cmp = true,
        gitsigns = true,
        which_key = true,
        nvim_tree = true,
        lspconfig = true,
        telescope = true,
        bufferline = true,
        treesitter = true,
        vim_illuminate = true,
    },
    hooks = {
        before = function(conf, colors, utils) end,
        after = function(conf, colors, utils) end,
    },
}

return default_config
