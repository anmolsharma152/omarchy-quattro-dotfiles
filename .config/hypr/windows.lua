-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

o.window(".*", { suppress_event = "maximize" })

-- Tag all windows for default opacity (apps can override with -default-opacity tag).
o.window(".*", { tag = "+default-opacity" })

-- Fix some dragging issues with XWayland.
o.window(
  {
    class = "^$",
    title = "^$",
    xwayland = true,
    float = true,
    fullscreen = false,
    pin = false,
  },
  { no_focus = true }
)

-- App-specific tweaks (may remove default-opacity tag).
require("default.hypr.apps")

-- Apply default opacity after apps have had a chance to opt out.
o.window({ tag = "default-opacity" }, { opacity = "0.985 0.96" })

-- Untag Btop so it opens as a standard tiled window rather than floating
o.window("org.omarchy.btop", { tag = "-floating-window", float = false, center = false })
