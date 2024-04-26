-- Author: Lodomo.Dev
-- Color Palette for Orion Terminal Theme.
-- Using HSL Color Space.

local lush = require("lush")
local hsl = lush.hsl

return {
	darkest = hsl(35, 7, 26),
	darker = hsl(48, 18, 40),
	dark = hsl(48, 18, 75),
	mid = hsl(48, 18, 80),
	light = hsl(48, 18, 90),
	lightest = hsl(48, 18, 100),

	black = hsl(35, 7, 26),
	red = hsl(355, 50, 35),
	green = hsl(120, 30, 35),
	yellow = hsl(60, 30, 50),
	blue = hsl(220, 40, 40),
	magenta = hsl(300, 20, 40),
	cyan = hsl(180, 30, 40),
	white = hsl(48, 18, 88),

	bright_black = hsl(35, 7, 20),
	bright_red = hsl(0, 30, 60),
	bright_green = hsl(120, 30, 60),
	bright_yellow = hsl(60, 40, 70),
	bright_blue = hsl(220, 30, 60),
	bright_magenta = hsl(300, 40, 80),
	bright_cyan = hsl(180, 30, 60),
	bright_white = hsl(48, 18, 100),

    grey   = hsl(0, 0, 40),
	orange = hsl(20, 70, 40),
}
