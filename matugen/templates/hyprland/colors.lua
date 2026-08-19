hl.config({
	general = {
		col = {
			active_border = "rgba({{colors.outline_variant.default.hex_stripped}}ff)",
			inactive_border = "rgba({{colors.surface_container_low.default.hex_stripped}}ff)",
		},
	},
})

hl.config({
	misc = {
		background_color = "rgba({{colors.surface.dark.hex_stripped}}ff)",
	},
})

hl.window_rule({
	name = "border_color_rgba___",
	match = {
		pin = 1,
	},
	-- TODO: review rule: "border_color rgba( { { colors.primary.default.hex_stripped } } AA) rgba( { { colors.primary.default.hex_stripped } } 77)"
})
