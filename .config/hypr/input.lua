hl.config({
  input = {
    touchpad = {
      -- Use natural (inverse) scrolling
      natural_scroll = true,

      -- Use two-finger clicks for right-click instead of lower-right corner
      clickfinger_behavior = true,

      -- Control the speed of your scrolling
      scroll_factor = 0.4,

      -- Enable the touchpad while typing
      disable_while_typing = false,

      -- Left-click-and-drag with three fingers
      drag_3fg = 1,
    },
  },

  gestures = {
    workspace_swipe = true,
    workspace_swipe_fingers = 3,
    workspace_swipe_distance = 300,
    workspace_swipe_invert = true,
    workspace_swipe_min_speed_to_force = 30,
    workspace_swipe_cancel_ratio = 0.3,
    workspace_swipe_create_new = true,
    workspace_swipe_forever = true,
  },
})

-- Enable touchpad gestures for changing workspaces
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- App-specific touchpad scroll speeds
o.window("(Alacritty|kitty|foot)", { scroll_touchpad = 1.5 })
o.window("com.mitchellh.ghostty", { scroll_touchpad = 0.2 })
