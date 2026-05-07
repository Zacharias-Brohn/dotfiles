local prefix = "app2unit -S out -- "

hl.on("hyprland.start", function()
	hl.exec_cmd(prefix .. "zshell-cli shell start")
	hl.exec_cmd("sleep 3s; " .. prefix .. "discord --enable-features=WaylandLinuxDrmSyncobj", { workspace = 1 })
	hl.exec_cmd("sleep 3s; " .. prefix .. "openrgb -p green --gui", { workspace = "3 silent" })
	hl.exec_cmd("sleep 3s; " .. prefix .. "keepassxc", { workspace = "2 silent" })
	hl.exec_cmd("sleep 3s; " .. prefix .. "AyuGram", { workspace = "1 silent" })
	hl.exec_cmd("sleep 3s; " .. prefix .. "solaar -b symbolic", { workspace = "3 silent" })
	hl.exec_cmd("sleep 3s; " .. prefix .. "librewolf", { workspace = "2 silent" })
	hl.exec_cmd("sleep 3s; " .. prefix .. "~/.config/hypr/scripts/gtk.sh")
	hl.exec_cmd("sleep 3s; " .. prefix .. "wl-paste --watch cliphist store")
end)
