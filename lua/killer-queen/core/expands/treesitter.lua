-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

local M = {}

-- :h treesitter-highlight-groups
function M.get_highlight(colors, config)
    return {
        ["@text.reference"] = { underline = true },
        ["@text.title"] = { fg = colors.base06 },
        ["@text.uri"] = { fg = colors.base11 },
        ["@text.underline"] = { link = "Underlined" },
        ["@text.todo"] = { link = "Todo" },

        ["@comment"] = { link = "Comment" },
        ["@punctuation"] = { link = "Macro" },
        ["@punctuation.bracket"] = { fg = colors.base15 },
        ["@punctuation.delimiter"] = { fg = colors.base15 },

        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant.macro"] = { link = "Define" },
        ["@define"] = { link = "Define" },
        ["@macro"] = { link = "Macro" },
        ["@string"] = { link = "String" },
        ["@string.escape"] = { link = "SpecialChar" },
        ["@string.special"] = { link = "SpecialChar" },
        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@number"] = { link = "Number" },
        ["@boolean"] = { link = "Boolean" },
        ["@float"] = { link = "Float" },

        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { fg = colors.base12 },
        ["@function.macro"] = { link = "Macro" },
        ["@function.call"] = { fg = colors.base12 },
        ["@attribute"] = { fg = colors.base13 },
        ["@parameter"] = { fg = colors.base15 },
        ["@method"] = { link = "Function" },
        ["@field"] = { fg = colors.base15 },
        ["@property"] = { link = "Identifier" },
        ["@constructor"] = { link = "Special" },

        ["@conditional"] = { link = "Conditional" },
        ["@repeat"] = { link = "Repeat" },
        ["@label"] = { link = "Label" },
        ["@operator"] = { link = "Operator" },
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@exception"] = { link = "Exception" },

        ["@variable"] = { fg = colors.base15 },
        ["@variable.builtin"] = { fg = colors.base12 }, -- self
        ["@type"] = { link = "Type" },
        ["@type.definition"] = { link = "Typedef" },
        ["@storageclass"] = { link = "Storageclass" },
        ["@structure"] = { link = "Structure" },
        ["@namespace"] = { link = "PreProc" },
        ["@include"] = { link = "Include" },
        ["@preproc"] = { link = "PreProc" },
        ["@debug"] = { link = "Debug" },
        ["@tag"] = { link = "Tag" },

        -- python
        ["@include.python"] = { fg = colors.base13 },

        -- go
        ["@namespace.go"] = { fg = colors.base13 },

        -- css
        ["@type.css"] = { fg = colors.base09 },

        -- lua
        ["@keyword.luadoc"] = { link = "Comment" },
    }
end

return M
