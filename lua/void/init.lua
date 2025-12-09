--                               V O I D . N V I M
--
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-----------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@@@@@@@----------------------------@@@@@@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@@--------------------------------------@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@-------------------------------------------@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@@@-------------------------------------------@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@@@@@@--------@@@@@@@@@@@@@@---------------------@@@@@@@@
-- @@@@@@@*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@----------------=@@@@@@
-- @@@@@*****@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@---------------@@@@@
-- @@@@*********@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--------------@@@@
-- @@@************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--------------@@
-- @@************@@@@@@@@@@@@@@@@@----------@@@@@@@@@@@@@@@@@------------@@
-- @************@@@@@@@@@@@@@@ ----------------@@@@@@@@@@@@@@@------------@
-- @***********+@@@@@@@@@@@@@--------------------@@@@@@@@@@@@@------------ 
-- ************@@@@@@@@@@@@@----------------------@@@@@@@@@@@@@------------
-- ************@@@@@@@@@@@@------------------------@@@@@@@@@@@@------------
-- ************@@@@@@@@@@@@@----------------------@@@@@@@@@@@@@------------
-- ************@@@@@@@@@@@@@----------------------@@@@@@@@@@@@@------------
-- @************@@@@@@@@@@@@@@------------------@@@@@@@@@@@@@@------------@
-- @*************@@@@@@@@@@@@@@@--------------@@@@@@@@@@@@@@@-------------@
-- @@*************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-------------@@
-- @@@**************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-----------@@@
-- @@@@***************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-------@@@@
-- @@@@@@****************@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@---@@@@@@
-- @@@@@@@@******************@@@@@@@@@@@@@@@@@@@@****@@@@@@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@*******************************************@@@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@*******************************************@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@+****************************************@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@@@@@********************************@@@@@@@@@@@@@@@@@@@@
-- @@@@@@@@@@@@@@@@@@@@@@@@@@********************@@@@@@@@@@@@@@@@@@@@@@@@@@
--
--
--   Pagina de Ascii: https://bjzr.github.io/imagen_ascii/
--   Colorscheme:    void.nvim - Void Linux inspired theme
--   Description:    Professional Neovim colorscheme with Void Linux colors
--   Author:         https://github.com/BJZR/void.nvim

local blend_hex = require("void.colorutils")["blend-hex"]

-- Reset previous colors
if vim.g.colors_name then
  vim.cmd.hi("clear")
end

vim.g.colors_name = "void"
vim.o.termguicolors = true

-- Base colors inspired by Void Linux
local base00 = "#0d1117"      -- Deep dark background
local base06 = "#c9d1d9"      -- Light foreground
local void_green = "#478061"  -- Void Linux signature green

-- Generate complete palette using hsluv color blending
local void = {
  -- Base colors
  base00 = base00,
  base01 = blend_hex(base00, base06, 0.085),
  base02 = blend_hex(base00, base06, 0.18),
  base03 = blend_hex(base00, base06, 0.3),
  base04 = blend_hex(base00, base06, 0.82),
  base05 = blend_hex(base00, base06, 0.95),
  base06 = base06,
  
  -- Void Linux colors (greens)
  base07 = void_green,        -- Primary Void green
  base08 = "#5a9d7a",        -- Lighter Void green
  
  -- Semantic colors
  base09 = "#78a9ff",        -- Blue (for info)
  base10 = "#ff6b6b",        -- Red (for errors)
  base11 = "#ffa94d",        -- Orange (for warnings)
  base12 = "#ff7eb6",        -- Pink/Magenta
  base13 = "#42be65",        -- Bright green
  base14 = "#be95ff",        -- Purple
  base15 = "#82cfff",        -- Cyan
  
  -- Special
  blend = "#161b22",
  none = "NONE",
}

-- Terminal colors
vim.g.terminal_color_0 = void.base01
vim.g.terminal_color_1 = void.base10
vim.g.terminal_color_2 = void.base13
vim.g.terminal_color_3 = void.base11
vim.g.terminal_color_4 = void.base09
vim.g.terminal_color_5 = void.base14
vim.g.terminal_color_6 = void.base15
vim.g.terminal_color_7 = void.base05
vim.g.terminal_color_8 = void.base03
vim.g.terminal_color_9 = void.base10
vim.g.terminal_color_10 = void.base13
vim.g.terminal_color_11 = void.base11
vim.g.terminal_color_12 = void.base09
vim.g.terminal_color_13 = void.base14
vim.g.terminal_color_14 = void.base15
vim.g.terminal_color_15 = void.base06

-- Helper function to set highlights
local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ============================================================================
-- EDITOR UI
-- ============================================================================
set_hl("ColorColumn", { bg = void.base01 })
set_hl("Cursor", { fg = void.base00, bg = void.base04 })
set_hl("CursorLine", { bg = void.base01 })
set_hl("CursorColumn", { bg = void.base01 })
set_hl("CursorLineNr", { fg = void.base07, bg = void.none, bold = true })
set_hl("LineNr", { fg = void.base03, bg = void.base00 })
set_hl("QuickFixLine", { bg = void.base01 })
set_hl("Error", { fg = void.base10, bg = void.base01 })
set_hl("NonText", { fg = void.base02 })
set_hl("Normal", { fg = void.base04, bg = void.base00 })
set_hl("NormalFloat", { fg = void.base05, bg = void.blend })
set_hl("FloatBorder", { fg = void.blend, bg = void.blend })
set_hl("NormalNC", { fg = void.base05, bg = void.base00 })

-- Popup menu
set_hl("Pmenu", { fg = void.base04, bg = void.base01 })
set_hl("PmenuSbar", { fg = void.base04, bg = void.base01 })
set_hl("PmenuSel", { fg = void.base08, bg = void.base02 })
set_hl("PmenuThumb", { fg = void.base08, bg = void.base02 })

-- Visual mode
set_hl("Visual", { bg = void.base02 })
set_hl("VisualNOS", { bg = void.base02 })

-- Signs and columns
set_hl("SignColumn", { fg = void.base01, bg = void.base00 })
set_hl("FoldColumn", { fg = void.base01, bg = void.base00 })
set_hl("Folded", { fg = void.base02, bg = void.base01 })

-- Window separators
set_hl("VertSplit", { fg = void.base01, bg = void.base00 })
set_hl("WinSeparator", { fg = void.base01, bg = void.base00 })

-- ============================================================================
-- SYNTAX HIGHLIGHTING
-- ============================================================================
set_hl("Comment", { fg = void.base03, italic = true })
set_hl("Constant", { fg = void.base04 })
set_hl("String", { fg = void.base14 })
set_hl("Character", { fg = void.base14 })
set_hl("Number", { fg = void.base15 })
set_hl("Boolean", { fg = void.base09 })
set_hl("Float", { link = "Number" })

set_hl("Identifier", { fg = void.base04 })
set_hl("Function", { fg = void.base08, bold = true })

set_hl("Statement", { fg = void.base09 })
set_hl("Conditional", { fg = void.base09 })
set_hl("Repeat", { fg = void.base09 })
set_hl("Label", { fg = void.base09 })
set_hl("Operator", { fg = void.base09 })
set_hl("Keyword", { fg = void.base09 })
set_hl("Exception", { fg = void.base09 })

set_hl("PreProc", { fg = void.base09 })
set_hl("Include", { fg = void.base09 })
set_hl("Define", { fg = void.base09 })
set_hl("Macro", { fg = void.base07 })
set_hl("PreCondit", { fg = void.base09 })

set_hl("Type", { fg = void.base09 })
set_hl("StorageClass", { fg = void.base09 })
set_hl("Structure", { fg = void.base09 })
set_hl("Typedef", { fg = void.base09 })

set_hl("Special", { fg = void.base04 })
set_hl("SpecialChar", { fg = void.base04 })
set_hl("Tag", { fg = void.base04 })
set_hl("Delimiter", { fg = void.base06 })
set_hl("SpecialComment", { fg = void.base08 })
set_hl("Debug", { fg = void.base13 })

set_hl("Underlined", { underline = true })
set_hl("Bold", { bold = true })
set_hl("Italic", { italic = true })

set_hl("Todo", { fg = void.base13 })
set_hl("MatchParen", { bg = void.base02, underline = true })

-- ============================================================================
-- DIAGNOSTICS
-- ============================================================================
set_hl("DiagnosticError", { fg = void.base10 })
set_hl("DiagnosticWarn", { fg = void.base14 })
set_hl("DiagnosticInfo", { fg = void.base09 })
set_hl("DiagnosticHint", { fg = void.base04 })

set_hl("DiagnosticUnderlineError", { fg = void.base10, undercurl = true })
set_hl("DiagnosticUnderlineWarn", { fg = void.base14, undercurl = true })
set_hl("DiagnosticUnderlineInfo", { fg = void.base04, undercurl = true })
set_hl("DiagnosticUnderlineHint", { fg = void.base04, undercurl = true })

-- ============================================================================
-- LSP
-- ============================================================================
set_hl("LspReferenceText", { bg = void.base03 })
set_hl("LspReferenceRead", { bg = void.base03 })
set_hl("LspReferenceWrite", { bg = void.base03 })
set_hl("LspCodeLens", { bg = void.base03 })
set_hl("LspSignatureActiveParameter", { fg = void.base08 })

-- LSP Semantic Tokens
set_hl("@lsp.type.class", { link = "Structure" })
set_hl("@lsp.type.decorator", { fg = void.base12 })
set_hl("@lsp.type.function", { link = "@function" })
set_hl("@lsp.type.macro", { link = "Macro" })
set_hl("@lsp.type.method", { link = "@function" })
set_hl("@lsp.type.struct", { link = "Structure" })
set_hl("@lsp.type.type", { link = "Type" })
set_hl("@lsp.type.variable", { link = "@variable" })

-- ============================================================================
-- TREESITTER
-- ============================================================================
set_hl("@comment", { link = "Comment" })
set_hl("@error", { fg = void.base11 })

-- Literals
set_hl("@string", { link = "String" })
set_hl("@string.regex", { fg = void.base07 })
set_hl("@string.escape", { fg = void.base15 })
set_hl("@character", { link = "Character" })
set_hl("@boolean", { link = "Boolean" })
set_hl("@number", { link = "Number" })
set_hl("@float", { link = "Float" })

-- Functions
set_hl("@function", { fg = void.base12, bold = true })
set_hl("@function.builtin", { fg = void.base12 })
set_hl("@function.macro", { fg = void.base07 })
set_hl("@method", { fg = void.base07 })
set_hl("@constructor", { fg = void.base09 })
set_hl("@parameter", { fg = void.base04 })

-- Keywords
set_hl("@keyword", { fg = void.base09 })
set_hl("@keyword.function", { fg = void.base08 })
set_hl("@keyword.operator", { fg = void.base08 })
set_hl("@conditional", { fg = void.base09 })
set_hl("@repeat", { fg = void.base09 })
set_hl("@label", { fg = void.base15 })
set_hl("@include", { fg = void.base09 })
set_hl("@exception", { fg = void.base15 })

-- Types
set_hl("@type", { link = "Type" })
set_hl("@type.builtin", { link = "Type" })
set_hl("@attribute", { fg = void.base15 })
set_hl("@field", { fg = void.base04 })
set_hl("@property", { fg = void.base10 })

-- Identifiers
set_hl("@variable", { fg = void.base04 })
set_hl("@variable.builtin", { fg = void.base04 })
set_hl("@constant", { fg = void.base14 })
set_hl("@constant.builtin", { fg = void.base07 })
set_hl("@constant.macro", { fg = void.base07 })
set_hl("@namespace", { fg = void.base07 })

-- Punctuation
set_hl("@punctuation.delimiter", { fg = void.base08 })
set_hl("@punctuation.bracket", { fg = void.base08 })
set_hl("@punctuation.special", { fg = void.base08 })

-- Tags (HTML/XML)
set_hl("@tag", { fg = void.base09 })
set_hl("@tag.attribute", { fg = void.base15 })
set_hl("@tag.delimiter", { fg = void.base15 })

-- ============================================================================
-- DIFF
-- ============================================================================
set_hl("DiffAdd", { bg = "#122f2f" })
set_hl("DiffChange", { bg = "#222a39" })
set_hl("DiffDelete", { bg = "#361c28" })
set_hl("DiffText", { bg = "#2f3f5c" })

-- Git signs
set_hl("DiffAdded", { fg = void.base07 })
set_hl("DiffChanged", { fg = void.base09 })
set_hl("DiffRemoved", { fg = void.base10 })

-- ============================================================================
-- SEARCH
-- ============================================================================
set_hl("Search", { fg = void.base01, bg = void.base08 })
set_hl("IncSearch", { fg = void.base06, bg = void.base10 })
set_hl("Substitute", { fg = void.base01, bg = void.base08 })

-- ============================================================================
-- STATUSLINE
-- ============================================================================
set_hl("StatusLine", { fg = void.base04, bg = void.base00 })
set_hl("StatusLineNC", { fg = void.base04, bg = void.base01 })
set_hl("StatusReplace", { fg = void.base00, bg = void.base08 })
set_hl("StatusInsert", { fg = void.base00, bg = void.base12 })
set_hl("StatusVisual", { fg = void.base00, bg = void.base14 })
set_hl("StatusTerminal", { fg = void.base00, bg = void.base11 })
set_hl("StatusNormal", { fg = void.base00, bg = void.base15 })
set_hl("StatusCommand", { fg = void.base00, bg = void.base13 })

-- ============================================================================
-- TABLINE
-- ============================================================================
set_hl("TabLine", { link = "StatusLineNC" })
set_hl("TabLineFill", { link = "TabLine" })
set_hl("TabLineSel", { link = "StatusLine" })

-- ============================================================================
-- TELESCOPE
-- ============================================================================
set_hl("TelescopeBorder", { fg = void.blend, bg = void.blend })
set_hl("TelescopePromptBorder", { fg = void.base02, bg = void.base02 })
set_hl("TelescopePromptNormal", { fg = void.base05, bg = void.base02 })
set_hl("TelescopePromptPrefix", { fg = void.base08, bg = void.base02 })
set_hl("TelescopeNormal", { fg = void.none, bg = void.blend })
set_hl("TelescopePreviewTitle", { fg = void.base02, bg = void.base12 })
set_hl("TelescopePromptTitle", { fg = void.base02, bg = void.base11 })
set_hl("TelescopeResultsTitle", { fg = void.blend, bg = void.blend })
set_hl("TelescopeSelection", { bg = void.base02 })
set_hl("TelescopePreviewLine", { bg = void.base01 })
set_hl("TelescopeMatching", { fg = void.base08, bold = true, italic = true })

-- ============================================================================
-- NVIM-TREE / NEO-TREE
-- ============================================================================
set_hl("NvimTreeNormal", { fg = void.base04, bg = void.base00 })
set_hl("NvimTreeWinSeparator", { fg = void.base00, bg = void.base00 })
set_hl("NvimTreeFolderName", { fg = void.base09 })
set_hl("NvimTreeFolderIcon", { fg = void.base12 })
set_hl("NvimTreeOpenedFolderName", { fg = void.base15 })
set_hl("NvimTreeEmptyFolderName", { fg = void.base15 })
set_hl("NvimTreeIndentMarker", { fg = void.base02 })
set_hl("NvimTreeImageFile", { fg = void.base12 })

set_hl("NeoTreeNormal", { fg = void.base04, bg = void.base00 })
set_hl("NeoTreeNormalNC", { fg = void.base04, bg = void.base00 })
set_hl("NeoTreeRootName", { fg = void.base08, bold = true })
set_hl("NeoTreeDirectoryIcon", { fg = void.base09 })
set_hl("NeoTreeDirectoryName", { fg = void.base09 })
set_hl("NeoTreeGitAdded", { fg = void.base13 })
set_hl("NeoTreeGitModified", { fg = void.base11 })
set_hl("NeoTreeGitDeleted", { fg = void.base10 })

-- ============================================================================
-- GITSIGNS
-- ============================================================================
set_hl("GitSignsAdd", { fg = void.base13 })
set_hl("GitSignsChange", { fg = void.base11 })
set_hl("GitSignsDelete", { fg = void.base10 })
set_hl("GitSignsCurrentLineBlame", { link = "Comment" })

-- ============================================================================
-- CMP (COMPLETION)
-- ============================================================================
set_hl("CmpItemAbbr", { fg = "#adadad" })
set_hl("CmpItemAbbrMatch", { fg = void.base05, bold = true })
set_hl("CmpItemAbbrMatchFuzzy", { fg = void.base04, bold = true })
set_hl("CmpItemMenu", { fg = void.base04, italic = true })
set_hl("CmpItemKindFunction", { fg = void.base01, bg = void.base11 })
set_hl("CmpItemKindMethod", { fg = void.base01, bg = void.base15 })
set_hl("CmpItemKindVariable", { fg = void.base01, bg = void.base14 })
set_hl("CmpItemKindKeyword", { fg = void.base01, bg = void.base09 })
set_hl("CmpItemKindText", { fg = void.base01, bg = void.base09 })

-- ============================================================================
-- NOTIFY
-- ============================================================================
set_hl("NotifyERRORBorder", { fg = void.base08 })
set_hl("NotifyWARNBorder", { fg = void.base14 })
set_hl("NotifyINFOBorder", { fg = void.base05 })
set_hl("NotifyDEBUGBorder", { fg = void.base13 })
set_hl("NotifyTRACEBorder", { fg = void.base13 })
set_hl("NotifyERRORIcon", { fg = void.base08 })
set_hl("NotifyWARNIcon", { fg = void.base14 })
set_hl("NotifyINFOIcon", { fg = void.base05 })
set_hl("NotifyDEBUGIcon", { fg = void.base13 })
set_hl("NotifyTRACEIcon", { fg = void.base13 })
set_hl("NotifyERRORTitle", { fg = void.base08 })
set_hl("NotifyWARNTitle", { fg = void.base14 })
set_hl("NotifyINFOTitle", { fg = void.base05 })
set_hl("NotifyDEBUGTitle", { fg = void.base13 })
set_hl("NotifyTRACETitle", { fg = void.base13 })

-- ============================================================================
-- WHICH-KEY
-- ============================================================================
set_hl("WhichKey", { fg = void.base08 })
set_hl("WhichKeyGroup", { fg = void.base14 })
set_hl("WhichKeyDesc", { fg = void.base04 })
set_hl("WhichKeySeparator", { fg = void.base03 })
set_hl("WhichKeyFloat", { bg = void.blend })

-- ============================================================================
-- INDENT BLANKLINE
-- ============================================================================
set_hl("IblIndent", { fg = void.base02 })
set_hl("IblScope", { fg = void.base07 })

-- ============================================================================
-- BUFFERLINE
-- ============================================================================
set_hl("BufferLineFill", { bg = void.base00 })
set_hl("BufferLineBackground", { fg = void.base04, bg = void.base01 })
set_hl("BufferLineBufferSelected", { fg = void.base08, bg = void.base00, bold = true, italic = true })
set_hl("BufferLineIndicatorSelected", { fg = void.base07, bg = void.base00 })

-- ============================================================================
-- ALPHA / DASHBOARD
-- ============================================================================
set_hl("AlphaHeader", { fg = void.base08 })
set_hl("AlphaButtons", { fg = void.base14 })
set_hl("AlphaShortcut", { fg = void.base09 })
set_hl("AlphaFooter", { fg = void.base03, italic = true })

-- ============================================================================
-- MARKDOWN
-- ============================================================================
set_hl("markdownH1", { fg = void.base10 })
set_hl("markdownH2", { link = "markdownH1" })
set_hl("markdownH3", { link = "markdownH1" })
set_hl("markdownH4", { link = "markdownH1" })
set_hl("markdownH5", { link = "markdownH1" })
set_hl("markdownH6", { link = "markdownH1" })
set_hl("markdownHeadingDelimiter", { link = "markdownH1" })
set_hl("markdownUrl", { fg = void.base14, underline = true })
set_hl("markdownCode", { link = "String" })
set_hl("markdownCodeBlock", { link = "markdownCode" })
set_hl("markdownCodeDelimiter", { link = "markdownCode" })
set_hl("markdownListMarker", { fg = void.base08 })
set_hl("markdownOrderedListMarker", { fg = void.base08 })
set_hl("markdownBlockquote", { fg = void.base08 })

-- Markdown treesitter
set_hl("@markup.heading", { link = "markdownH1" })
set_hl("@markup.link", { link = "markdownUrl" })
set_hl("@markup.list", { link = "markdownListMarker" })
set_hl("@markup.emphasis", { italic = true })
set_hl("@markup.strong", { bold = true })

-- ============================================================================
-- MESSAGES
-- ============================================================================
set_hl("ErrorMsg", { fg = void.base10 })
set_hl("WarningMsg", { fg = void.base14 })
set_hl("MoreMsg", { fg = void.base08 })
set_hl("Question", { fg = void.base04 })
set_hl("ModeMsg", { fg = void.base04 })

-- ============================================================================
-- MISCELLANEOUS
-- ============================================================================
set_hl("Directory", { fg = void.base08 })
set_hl("Title", { fg = void.base04 })
set_hl("Conceal", {})
set_hl("SpecialKey", { fg = void.base03 })
set_hl("EndOfBuffer", { fg = void.base01 })
set_hl("WildMenu", { fg = void.base08, bg = void.base01 })

return { void = void }
