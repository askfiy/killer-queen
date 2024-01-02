local M = {}

local function initial_terminal_colors(colors, config)
    for i = 0, 15 do
        if i >= 10 then
            vim.g[("terminal_color_%s"):format(i)] =
                colors[("base%s"):format(i)]
        else
            vim.g[("terminal_color_%s"):format(i)] =
                colors[("base0%s"):format(i)]
        end
    end
end

-- :h group-name
local function syntax_highlight(colors, config)
    return {
        -- Use LightColor
        Comment = {
            fg = colors.base08,
        },
        Constant = {
            fg = colors.base11,
        },
        String = {
            fg = colors.base10,
        },
        Character = {
            link = "Constant",
        },
        Number = {
            link = "Constant",
        },
        Boolean = {
            link = "Constant",
        },
        Float = {
            link = "Number",
        },
        Identifier = {
            fg = colors.base12,
        },
        Function = {
            fg = colors.base14,
        },
        Statement = {
            fg = colors.base09,
        },
        Conditional = {
            link = "Statement",
        },
        Repeat = {
            link = "Statement",
        },
        Label = {
            fg = colors.base11,
        },
        Operator = {
            fg = colors.base15,
        },
        Keyword = {
            link = "Statement",
        },
        Exception = {
            link = "Statement",
        },
        PreProc = {
            fg = colors.base09,
        },
        Include = {
            link = "PreProc",
        },
        Define = {
            link = "PreProc",
        },
        Macro = {
            link = "PreProc",
        },
        PreCondit = {
            link = "PreProc",
        },
        Type = {
            -- ?
            fg = colors.base12,
        },
        StorageClass = {
            link = "Type",
        },
        Structure = {
            link = "Type",
        },
        Typedef = {
            link = "Type",
        },
        Special = {
            fg = colors.base14,
        },
        SpecialChar = {
            link = "Special",
        },
        Tag = {
            link = "Special",
        },
        Delimiter = {
            fg = colors.base13,
        },
        SpecialComment = {
            link = "Special",
        },
        Debug = {
            link = "Special",
        },
        Underlined = {
            underline = true,
        },
        Ignore = {
            link = "Normal",
        },
        Error = {
            fg = colors.base09,
            bg = colors.color15,
        },
        Todo = {
            fg = colors.base12,
            bg = colors.color15,
        },
    }
end

-- :h highlight-default
function M.get_highlight(colors, config)
    initial_terminal_colors(colors, config)
    return vim.tbl_extend("force", {
        -- Use DarkColor
        Conceal = {
            fg = colors.base08,
        },
        CurSearch = {
            link = "Search",
        },
        Cursor = {
            reverse = true,
        },
        lCursor = {
            link = "Cursor",
        },
        CursorIM = {
            link = "Cursor",
        },
        CursorColumn = {
            link = "CursorLine",
        },
        CursorLine = {
            bg = colors.cursor_line,
        },
        Directory = {
            fg = colors.base06,
            bg = colors.color00,
        },
        DiffAdd = {
            fg = colors.base07,
            bg = colors.base02,
        },
        DiffChange = {
            fg = colors.base07,
            bg = colors.color03,
        },
        DiffDelete = {
            fg = colors.base01,
            bold = true,
        },
        DiffText = {
            fg = colors.base07,
            bg = colors.base06,
        },
        EndOfBuffer = {
            link = "NonText",
        },
        TermCursor = {
            link = "Cursor",
        },
        TermCursorNC = {},
        ErrorMsg = {
            fg = colors.base01,
        },
        WinSeparator = {
            fg = colors.base08,
        },
        Folded = {
            fg = colors.base08,
        },
        FoldColumn = {
            link = "Folded",
        },
        SignColumn = {
            link = "Folded",
        },
        IncSearch = {
            link = "Search",
        },
        Substitute = {
            link = "Title",
        },
        LineNr = {
            fg = colors.base08,
        },
        LineNrAbove = {
            link = "LineNr",
        },
        LineNrBelow = {
            link = "LineNr",
        },
        CursorLineNr = {
            fg = colors.base06,
        },
        CursorLineFold = {
            fg = colors.base07,
        },
        CursorLineSign = {
            link = "CursorLineNr",
        },
        MatchParen = {
            background = colors.base06,
            bold = true,
        },
        ModeMsg = {
            fg = colors.base06,
        },
        MsgArea = {
            fg = colors.base07,
        },
        MsgSeparator = {
            bg = colors.base06,
        },
        MoreMsg = {
            fg = colors.base06,
        },
        NonText = {
            fg = colors.base08,
        },
        Normal = {
            fg = colors.base07,
            bg = colors.base00,
        },
        NormalFloat = {
            fg = colors.base07,
            bg = config.is_border and colors.base00 or colors.color01,
        },
        FloatBorder = {
            fg = colors.base08,
            bg = config.is_border and colors.base00 or colors.color01,
        },
        FloatTitle = {
            link = "Title",
        },
        FloatFooter = {
            link = "Title",
        },
        NormalNC = {
            link = "Normal",
        },
        Pmenu = {
            bg = colors.color01,
        },
        PmenuSel = {
            fg = colors.base00,
            bg = colors.base06,
        },
        PmenuKind = {
            link = "Pmenu",
        },
        PmenuKindSel = {
            link = "PmenuSel",
        },
        PmenuExtra = {
            link = "Pmenu",
        },
        PmenuExtraSel = {
            link = "PmenuSel",
        },
        PmenuSbar = {
            bg = colors.color03,
        },
        PmenuThumb = {
            bg = colors.color02,
        },
        Question = {
            fg = colors.base06,
        },
        QuickFixLine = {
            bold = true,
        },
        Search = {
            fg = colors.base00,
            bg = colors.base06,
        },
        SpecialKey = {
            fg = colors.base06,
        },
        SpellBad = {
            undercurl = true,
            sp = colors.base01,
        },
        SpellCap = {
            undercurl = true,
            sp = colors.base04,
        },
        SpellLocal = {
            undercurl = true,
            sp = colors.base03,
        },
        SpellRare = {
            undercurl = true,
            sp = colors.base06,
        },
        StatusLine = {
            fg = colors.base00,
            bg = colors.base06,
            bold = true,
        },
        StatusLineNC = {
            fg = colors.base07,
            bg = colors.color00,
        },
        TabLine = {
            fg = colors.base08,
            bg = colors.color02,
        },
        TabLineFill = {
            bg = colors.color01,
        },
        TabLineSel = {
            fg = colors.base07,
            bg = colors.base00,
        },
        Title = {
            fg = colors.base06,
        },
        Visual = {
            bg = colors.visual_mode,
        },
        VisualNOS = {
            link = "Visual",
        },
        WarningMsg = {
            fg = colors.base03,
        },
        Whitespace = {
            link = "NonText",
        },
        WildMenu = {
            link = "PmenuSel",
        },
        WinBar = {
            fg = colors.base07,
        },
        WinBarNC = {
            fg = colors.base07,
        },
    }, syntax_highlight(colors, config))
end

return M
