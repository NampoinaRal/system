-------------
--- INPUT ---
-------------

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.config({
	input = {
		follow_mouse = 1,

		touchpad = {
			natural_scroll = true,
		},
	},
})

hl.device({
	name = "at-translated-set-2-keyboard",
	kb_layout = "fr",
	numlock_by_default = true,
})

hl.device({
	name = "atom-he68-pro-1-keyboard",
	kb_layout = "us",
})
