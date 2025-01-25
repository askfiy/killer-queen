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
        ["@module.python"] = { fg = colors.base13 },

        -- go
        ["@namespace.go"] = { fg = colors.base13 },

        -- css
        ["@type.css"] = { fg = colors.base09 },

        -- lua
        ["@keyword.luadoc"] = { link = "Comment" },

        -- https://github.com/nvim-treesitter/nvim-treesitter/commit/1ae9b0e4558fe7868f8cda2db65239cfb14836d0

        -- " tree-sitter "standard capture names"
        ["@variable.parameter"] = { link = "@parameter" },
        ["@variable.member"] = { link = "@field" },
        ["@module"] = { link = "@namespace" },
        ["@number.float"] = { link = "@float" },
        ["@string.special.symbol"] = { link = "@symbol" },
        ["@string.regexp"] = { link = "@string.regex" },
        ["@markup.strong"] = { link = "@text.strong" },
        ["@markup.italic"] = { link = "@text.emphasis" },
        ["@markup.underline"] = { link = "@text.underline" },
        ["@markup.strikethrough"] = { link = "@text.strike" },
        ["@markup.heading"] = { link = "@text.title" },
        ["@markup.quote"] = { link = "@text.quote" },
        ["@markup.link.url"] = { link = "@text.uri" },
        ["@markup.math"] = { link = "@text.math" },
        ["@markup.environment"] = { link = "@text.environment" },
        ["@markup.environment.name"] = { link = "@text.environment.name" },
        ["@markup.link"] = { link = "@text.reference" },
        ["@markup.raw"] = { link = "@text.literal" },
        ["@markup.raw.block"] = { link = "@text.literal.block" },
        ["@markup.link.label"] = { link = "@string.special" },
        ["@markup.list"] = { link = "@punctuation.special" },

        -- " Helix captures
        ["@function.method"] = { link = "@method" },
        ["@function.method.call"] = { link = "@method.call" },
        ["@comment.todo"] = { link = "@text.todo" },
        ["@comment.error"] = { link = "@text.danger" },
        ["@comment.warning"] = { link = "@text.warning" },
        ["@comment.hint"] = { link = "@text.note" },
        ["@comment.info"] = { link = "@text.note" },
        ["@comment.note"] = { link = "@text.note" },
        ["@comment.ok"] = { link = "@text.note" },
        ["@diff.plus"] = { link = "@text.diff.add" },
        ["@diff.minus"] = { link = "@text.diff.delete" },
        ["@diff.delta"] = { link = "@text.diff.change" },
        ["@string.special.url"] = { link = "@text.uri" },
        ["@keyword.storage"] = { link = "@storageclass" },
        ["@keyword.directive"] = { link = "@define" },
        ["@keyword.conditional"] = { link = "@conditional" },
        ["@keyword.debug"] = { link = "@debug" },
        ["@keyword.exception"] = { link = "@exception" },
        ["@keyword.import"] = { link = "@include" },
        ["@keyword.repeat"] = { link = "@repeat" },
    }
end

return M
