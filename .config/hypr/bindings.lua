-- Personal keybinding overrides for Omarchy Quattro

-- 1. Window Management
hl.unbind("SUPER + W")
o.bind("SUPER + Q", "Close window", hl.dsp.window.close())
o.bind("SUPER + SHIFT + Q", "Kill window", "hyprctl kill")

-- 2. Clean Browser Keybindings (Zero conflicts)
hl.unbind("SUPER + SHIFT + B")
hl.unbind("SUPER + SHIFT + RETURN")
hl.unbind("SUPER + SHIFT + ALT + B")

o.bind("SUPER + B", "Browser", { omarchy = "browser" })
o.bind("SUPER + SHIFT + B", "Zen Browser", "zen-browser")
o.bind("SUPER + ALT + B", "Brave Browser", "brave")
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { omarchy = "browser --private" })

hl.unbind("SUPER + SHIFT + F")
o.bind("SUPER + E", "File manager", { omarchy = "nautilus" })

-- 3. Antigravity Hotkey
o.bind("SUPER + A", "Antigravity", "antigravity")

-- 4. Dynamic Wallpaper Cycling
o.bind("SUPER + W", "Next wallpaper", "omarchy-theme-bg-next")

-- 5. Active Workspace Cycling (PageDown = Next / PageUp = Prev, wraps on active workspaces)
o.bind("SUPER + Next", "Next active workspace", "omarchy-workspace-cycle next")
o.bind("SUPER + Prior", "Previous active workspace", "omarchy-workspace-cycle prev")

-- 6. Move Window (Spans all 10 workspaces and wraps around)
o.bind("SUPER + SHIFT + Next", "Move window to next workspace", "omarchy-workspace-cycle next --move-window")
o.bind("SUPER + SHIFT + Prior", "Move window to previous workspace", "omarchy-workspace-cycle prev --move-window")

-- 7. Top Panel Bar Toggle (Super + D)
o.bind("SUPER + D", "Toggle top bar", "omarchy-toggle-bar")

-- 8. Monitor Scaling (Single keybind, cycles presets & wraps to 1.0 at max)
o.bind("SUPER + slash", "Cycle monitor scaling", "omarchy-hyprland-monitor-scaling up")

-- 9. Text Size Scaling (Super + \: cycles presets 12px -> 14px -> 16px -> 18px -> 10px -> 12px)
o.bind("SUPER + backslash", "Cycle text size", "omarchy-text-size-step")

-- 10. System Activity Monitors (Neohtop & Btop)
hl.unbind("CTRL + ALT + DELETE")
o.bind("CTRL + ALT + DELETE", "Neohtop", { tui = "neohtop", focus = true })
o.bind("CTRL + SHIFT + ESCAPE", "Btop", { tui = "btop", focus = true })
