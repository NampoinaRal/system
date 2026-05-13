-----------------
--- AUTOSTART ---
-----------------

hl.on("hyprland.start", function()
	hl.exec_cmd("dunst")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("keepassxc")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hypridle")
	hl.exec_cmd("ashell")
	hl.exec_cmd("thunderbird")
	hl.exec_cmd("wl-paste")
end)
