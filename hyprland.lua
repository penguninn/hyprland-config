------------------
---- MONITORS ----
------------------
hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@60",
	position = "0x1080",
	scale = 1,
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@100",
	position = "0x0",
	scale = 1,
})

---------------------
---- MY PROGRAMS ----
---------------------
terminal = "ghostty"
fileManager = "thunar"
menu = "rofi -show run"

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("waybar")
	hl.exec_cmd("fcitx5 -d")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("GTK_IM_MODULE", "fcitx")
hl.env("QT_IM_MODULE", "fcitx")
hl.env("XMODIFIERS", "@im=fcitx")
hl.env("SDL_IM_MODULE", "fcitx")
hl.env("INPUT_METHOD", "fcitx")
hl.env("QT_QPA_PLATFORM", "wayland")

-- LOOK AND FEEL --
require("config.lookandfeel")

-- INPUT --
require("config.input")

-- KEYBINDINGS --
require("config.keybinds")

-- WINDOWS AND WORKSPACES --
require("config.windownrules")
