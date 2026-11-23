local M = {
	bg = "#e6e5d2", -- faded paper (from palette cream D7D6B8, lightened)
	fg = "#1f1b1a", -- near-black, warm
	--bg_alt = "#d7d6b8", -- palette cream: panels, cursorline, floats
	selection = "#bac2b0", -- palette sage

	black = "#1f1b1a",
	red = "#92372c", -- palette rust
	green = "#3f6b5e", -- dim sage-teal
	yellow = "#6f5a22", -- dusty ochre
	blue = "#3d4f7a", -- dead-channel CRT blue
	magenta = "#7a3f62",
	cyan = "#2f6b73",
	white = "#6a5a55", -- palette brown, darkened for legibility

	gray = "#827c78", -- palette gray: comments, autosuggest ghost text

	bred = "#b8321f",
	bgreen = "#2a7055",
	byellow = "#84651a",
	bblue = "#3454a8",
	bmagenta = "#94457a",
	bcyan = "#26747e",
	bwhite = "#2b2523",
}

M.ansi = {
	M.black,
	M.red,
	M.green,
	M.yellow,
	M.blue,
	M.magenta,
	M.cyan,
	M.white,
	M.gray,
	M.bred,
	M.bgreen,
	M.byellow,
	M.bblue,
	M.bmagenta,
	M.bcyan,
	M.bwhite,
}

return M
