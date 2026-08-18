function togglegamemode()
	hl.config({
		animations = { enabled = false },
		decoration = {
			rounding = 0,
			blur = { enabled = false },
			shadow = { enabled = false },
			active_opacity = 1,
			inactive_opacity = 1,
		},
		general = {
			gaps_in = 0,
			gaps_out = 0,
			border_size = 1,
		},
	})
end
