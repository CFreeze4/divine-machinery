local p = require("divine-machinery.palette")

vim.cmd("highlight clear")
vim.o.background = "light"
vim.g.colors_name = "divine-machinery"

for i, c in ipairs(p.ansi) do
	vim.g["terminal_color_" .. (i - 1)] = c
end

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
local transparent = vim.g.divine_machinery_transparent ~= false
local bg = transparent and "NONE" or p.bg
local alt = transparent and "NONE" or p.bg_alt

hl("Normal", { fg = p.fg, bg = bg })
hl("NormalNC", { fg = p.fg, bg = bg })
hl("SignColumn", { bg = "NONE" })
hl("EndOfBuffer", { fg = p.bg, bg = "NONE" })
hl("NormalFloat", { fg = p.fg, bg = alt })
hl("FloatBorder", { fg = p.gray, bg = alt })
hl("CursorLine", { bg = alt })
hl("Visual", { bg = p.selection })
hl("LineNr", { fg = p.gray })
hl("CursorLineNr", { fg = p.fg, bold = true })
hl("Pmenu", { fg = p.fg, bg = alt })
hl("PmenuSel", { fg = p.bg, bg = p.blue })
hl("StatusLine", { fg = p.fg, bg = alt })
hl("StatusLineNC", { fg = p.gray, bg = alt })
hl("Search", { bg = p.selection, bold = true })
hl("IncSearch", { fg = p.bg, bg = p.red })
hl("WinSeparator", { fg = p.gray })

-- Syntax: black code, RGB accents
hl("Comment", { fg = p.gray, italic = true })
hl("String", { fg = p.green })
hl("Function", { fg = p.blue })
hl("Keyword", { fg = p.red })
hl("Statement", { fg = p.red })
hl("Type", { fg = p.blue })
hl("Constant", { fg = p.green })
hl("Number", { fg = p.green })
hl("Special", { fg = p.magenta })
hl("Identifier", { fg = p.fg })
hl("Operator", { fg = p.fg })

-- Diagnostics and diffs
hl("DiagnosticError", { fg = p.red })
hl("DiagnosticWarn", { fg = p.yellow })
hl("DiagnosticInfo", { fg = p.blue })
hl("DiagnosticHint", { fg = p.cyan })
hl("DiffAdd", { bg = "#cfd9bf" })
hl("DiffDelete", { bg = "#e3c6bb" })
hl("DiffChange", { bg = "#c9d1cc" })
