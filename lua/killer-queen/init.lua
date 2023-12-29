--[[
-- author: askfiy
-- date: 2023-12-28
-- repo: https://github.com/askfiy/killer-queen

The killer-queen theme is inspired by killer-queen, Kira Yoshikage's stand-in in "JoJo's Bizarre Adventure"

killer-queen is mainly based on pink, and paired with Kira Yoshikage's dark green tie and purple suit, it is full of lively atmosphere

I hope that every user who uses this theme can get a cute pink big cat and live the peaceful life they dream of!
]]

local core = require("killer-queen.core")
local utils = require("killer-queen.utils")
local hooks = require("killer-queen.core.hooks")

local default_colors = require("killer-queen.colors")
local default_config = require("killer-queen.config")

-- NOTE: Develop debug mode !!
-- require("killer-queen.debug")

local M = {}

local function apply_basic_highlight(colors, config)
    utils.bulk_set_hl(core.get_basic_highlight(colors, config))
end

local function apply_expands_highlight(colors, config)
    utils.bulk_set_hl(core.get_expands_highlight(colors, config))
end

local function apply_transparent_highlight(colors, config)
    utils.bulk_set_hl(core.get_transparent_highlight(colors, config))
end

function M.setup(opts)
    default_config = vim.tbl_deep_extend("force", default_config, opts or {})
end

function M.enter()
    vim.cmd([[highlight clear]])

    if vim.fn.exists("syntax_on") == 1 then
        vim.cmd("syntax reset")
    end

    hooks.before(default_colors, default_config, utils)

    apply_basic_highlight(default_colors, default_config)
    apply_expands_highlight(default_colors, default_config)
    apply_transparent_highlight(default_colors, default_config)

    hooks.after(default_colors, default_config, utils)
end

return M
