local M = {}

function M.get_highlight(colors, config)
    return vim.tbl_deep_extend("force", {
        BufferLineFill = {
            bg = colors.color01,
        },
        BufferLineTruncMarker = {
            fg = colors.base08,
            bg = colors.base00,
        },
        BufferLineBufferSelected = {
            fg = colors.base07,
            bg = colors.base00,
        },
        BufferLineBackground = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineBufferVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineIndicatorSelected = {
            fg = colors.base08,
            bg = colors.base00,
        },
        BufferLineIndicator = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineIndicatorVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineSeparatorSelected = {
            fg = colors.base00,
            bg = colors.base00,
        },
        BufferLineSeparator = {
            fg = colors.base00,
            bg = colors.color02,
        },
        BufferLineSeparatorVisible = {
            fg = colors.base00,
            bg = colors.color02,
        },
        BufferLineCloseButtonSelected = {
            fg = colors.base07,
            bg = colors.base00,
        },
        BufferLineCloseButton = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineCloseButtonVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineModifiedSelected = {
            fg = colors.base07,
            bg = colors.base00,
        },
        BufferLineModified = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineModifiedVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineNumbersSelected = {
            fg = colors.base07,
            bg = colors.base00,
        },
        BufferLineNumbers = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineNumbersVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLinePickSelected = {
            fg = colors.base01,
            bg = colors.base00,
            bold = true,
        },
        BufferLinePick = {
            fg = colors.base01,
            bg = colors.color02,
            bold = true,
        },
        BufferLinePickVisible = {
            fg = colors.base01,
            bg = colors.color02,
            bold = true,
        },
        BufferLineTabSelected = {
            fg = colors.base07,
            bg = colors.color02,
        },

        BufferLineTab = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineTabSeparatorSelected = {
            fg = colors.color01,
            bg = colors.color02,
        },

        BufferLineTabSeparator = {
            fg = colors.color01,
            bg = colors.color02,
        },

        BufferLineTabClose = {
            fg = colors.base01,
            bg = colors.color01,
            bold = true,
        },

        BufferlineDuplicateSelected = {
            fg = colors.base07,
            bg = colors.base00,
        },
        BufferlineDuplicate = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferlineDuplicateVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineHintSelected = {
            fg = colors.base04,
            bg = colors.base00,
        },
        BufferLineHint = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineHintVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineInfoSelected = {
            fg = colors.base06,
            bg = colors.base00,
        },
        BufferLineInfo = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineInfoVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineWarningSelected = {
            fg = colors.base03,
            bg = colors.base00,
        },
        BufferLineWarning = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineWarningVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineErrorSelected = {
            fg = colors.base01,
            bg = colors.base00,
        },
        BufferLineError = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineErrorVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineHintDiagnosticSelected = {
            fg = colors.base04,
            bg = colors.base00,
        },
        BufferLineHintDiagnostic = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineHintDiagnosticVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineInfoDiagnosticSelected = {
            fg = colors.base06,
            bg = colors.base00,
        },
        BufferLineInfoDiagnostic = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineInfoDiagnosticVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineWarningDiagnosticSelected = {
            fg = colors.base03,
            bg = colors.base00,
        },
        BufferLineWarningDiagnostic = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineWarningDiagnosticVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },

        BufferLineErrorDiagnosticSelected = {
            fg = colors.base01,
            bg = colors.base00,
        },
        BufferLineErrorDiagnostic = {
            fg = colors.base08,
            bg = colors.color02,
        },
        BufferLineErrorDiagnosticVisible = {
            fg = colors.base08,
            bg = colors.color02,
        },
    }, M.get_file_icons_highlights(colors, config))
end

function M.get_file_icons_highlights(colors, config)
    local ok, module = pcall(require, "nvim-web-devicons")
    local hl_groups = {}

    if ok then
        table.insert(M.filetype_icons, "Default")

        for _, name in ipairs(M.filetype_icons) do
            local icon_name = name:lower()

            local _, fg = module.get_icon_color(icon_name)
            fg = fg or colors.base07

            hl_groups[string.format("BufferlineDevIcon%s", name)] = {
                fg = colors.base08,
                bg = colors.color02,
            }
            hl_groups[string.format("BufferlineDevIcon%sInactive", name)] = {
                fg = colors.base08,
                bg = colors.color02,
            }

            hl_groups[string.format("BufferlineDevIcon%sSelected", name)] =
                { fg = fg, bg = colors.base00 }
        end
    end

    return hl_groups
end

M.filetype_icons = {
    "Pyd",
    "Yaml",
    "GitConfig",
    "Doc",
    "Crystal",
    "Verilog",
    "CMake",
    "Sql",
    "ClojureJS",
    "ClojureC",
    "Json5",
    "Cson",
    "Suo",
    "Zshprofile",
    "Db",
    "Haml",
    "Csv",
    "Scheme",
    "Jsx",
    "Erl",
    "Bash",
    "Prisma",
    "Tsx",
    "Drools",
    "Ml",
    "GitLogo",
    "Cobol",
    "Rmd",
    "Sig",
    "Less",
    "Epp",
    "Zsh",
    "Bat",
    "DesktopEntry",
    "Py",
    "Pyi",
    "Default",
    "Clojure",
    "Fsharp",
    "Rss",
    "Sln",
    "Favicon",
    "Js",
    "Tcl",
    "Styl",
    "Ejs",
    "Edn",
    "Jpeg",
    "SystemVerilog",
    "Fsi",
    "Hxx",
    "Fsscript",
    "Slim",
    "Terraform",
    "Html",
    "Ksh",
    "Svg",
    "Gif",
    "TFVars",
    "Pdf",
    "GDScript",
    "Cpp",
    "BinaryGLTF",
    "Tor",
    "Gemspec",
    "Mustache",
    "Fs",
    "Csh",
    "Ex",
    "GodotProject",
    "Cxx",
    "Sml",
    "Dockerfile",
    "Elm",
    "PackedResource",
    "Gruntfile",
    "Dropbox",
    "R",
    "Webp",
    "Twig",
    "Webpack",
    "GitIgnore",
    "Mli",
    "XcPlayground",
    "Awk",
    "Xls",
    "Bashrc",
    "sbt",
    "NodeModules",
    "D",
    "Png",
    "Erb",
    "Exs",
    "Cp",
    "Pl",
    "Scss",
    "Makefile",
    "GraphQL",
    "BashProfile",
    "Md",
    "Rs",
    "Htm",
    "Ini",
    "Vimrc",
    "Ico",
    "Mdx",
    "ImportConfiguration",
    "Lock",
    "Fish",
    "Hpp",
    "Sass",
    "Php",
    "Diff",
    "CPlusPlus",
    "Java",
    "DsStore",
    "Zig",
    "MixLock",
    "GitAttributes",
    "Xul",
    "Mjs",
    "Markdown",
    "Mint",
    "GitlabCI",
    "Css",
    "VHDL",
    "Coffee",
    "ClojureDart",
    "Json",
    "Jsonc",
    "Vim",
    "Fennel",
    "Zshrc",
    "Rb",
    "Pp",
    "Gvimrc",
    "NPMrc",
    "Vue",
    "SettingsJson",
    "C",
    "Nim",
    "TextResource",
    "TextScene",
    "Solidity",
    "Lua",
    "Babelrc",
    "Brewfile",
    "Cs",
    "Yml",
    "Jpg",
    "CMakeLists",
    "GitModules",
    "OpenTypeFont",
    "Query",
    "GitCommit",
    "Motoko",
    "License",
    "Zshenv",
    "Dump",
    "OPUS",
    "Material",
    "Gemfile",
    "Rake",
    "Webmanifest",
    "Hh",
    "Pm",
    "Prolog",
    "Nix",
    "Dart",
    "Vagrantfile",
    "Eex",
    "ConfigRu",
    "Heex",
    "Txt",
    "Rakefile",
    "Fsx",
    "Log",
    "Jl",
    "Leex",
    "Xml",
    "Hbs",
    "PackageLockJson",
    "Ai",
    "Env",
    "Swift",
    "Terminal",
    "Hrl",
    "Configuration",
    "Kotlin",
    "KotlinScript",
    "Bmp",
    "NPMIgnore",
    "Scala",
    "Pyo",
    "Ppt",
    "Gulpfile",
    "Toml",
    "Conf",
    "Tex",
    "Rlib",
    "Procfile",
    "Ts",
    "PromptPs1",
    "Rproj",
    "Psb",
    "Svelte",
    "Luau",
    "Psd",
    "Go",
    "Lhs",
    "PackageJson",
    "Hs",
    "H",
    "Pyc",
    "Sh",
}

return M
