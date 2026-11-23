local p = dofile("lua/divine-machinery/palette.lua")
local lines = {
	"background = " .. p.bg:sub(2),
	"foreground = " .. p.fg:sub(2),
	"cursor-color = " .. p.fg:sub(2),
	"cursor-text = " .. p.bg:sub(2),
	"selection-background = " .. p.selection:sub(2),
	"selection-foreground = 000000",
}
for i, c in ipairs(p.ansi) do
	lines[#lines + 1] = ("palette = %d=%s"):format(i - 1, c)
end

local f = assert(io.open("ghostty/divine-machinery", "w"))
f:write(table.concat(lines, "\n"), "\n")
f:close()
