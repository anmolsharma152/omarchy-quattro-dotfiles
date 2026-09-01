hl.config({
  input = {
    -- Restore normal CapsLock; move Compose key to Right Alt
    kb_options = "compose:ralt",

    touchpad = {
      -- Use natural (inverse) scrolling
      natural_scroll = true,

      -- Use two-finger clicks for right-click instead of lower-right corner
      clickfinger_behavior = true,

      -- Control the speed of your scrolling
      scroll_factor = 0.4,

      -- Enable the touchpad while typing
      disable_while_typing = false,

      -- Use 3-fingers exclusively for workspace swipe
      drag_3fg = 0,
    },
  },
})

-- Enable touchpad gestures for changing workspaces
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- App-specific touchpad scroll speeds
o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
o.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })
