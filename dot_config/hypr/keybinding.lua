-------------------
--- KEYBINDINGS ---
-------------------

local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "thunar"
local menu = "tofi-drun"
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind(mainMod .. "+ code:87", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. "+ SHIFT + code:87", hl.dsp.window.move({ workspace = 1 }))

hl.bind(mainMod .. "+ code:88", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. "+ SHIFT + code:88", hl.dsp.window.move({ workspace = 2 }))

hl.bind(mainMod .. "+ code:89", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. "+ SHIFT + code:89", hl.dsp.window.move({ workspace = 3 }))

hl.bind(mainMod .. "+ code:83", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. "+ SHIFT + code:83", hl.dsp.window.move({ workspace = 4 }))

hl.bind(mainMod .. "+ code:84", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. "+ SHIFT + code:84", hl.dsp.window.move({ workspace = 5 }))

hl.bind(mainMod .. "+ code:85", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. "+ SHIFT + code:85", hl.dsp.window.move({ workspace = 6 }))

hl.bind(mainMod .. "+ code:79", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. "+ SHIFT + code:79", hl.dsp.window.move({ workspace = 7 }))

hl.bind(mainMod .. "+ code:80", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. "+ SHIFT + code:80", hl.dsp.window.move({ workspace = 8 }))

hl.bind(mainMod .. "+ code:81", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. "+ SHIFT + code:81", hl.dsp.window.move({ workspace = 9 }))

hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m output"))
