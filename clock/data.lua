data:extend(
{
    {
        type = "font", 
        name = "digital-clock",
        from = "digital-clock",
        size = 20
    }
})

data.raw["gui-style"].default.bob_invisible_frame =
{
  type = "frame_style",
  padding = 0,
  margin = 0,
  graphical_set = {},
  horizontal_flow_style =
  {
    type = "horizontal_flow_style",
    horizontal_spacing = 4
  },
  vertical_flow_style =
  {
    type = "vertical_flow_style",
    vertical_spacing = 4
  }
}

data:extend(
{
  {
    type = "sprite",
    name = "bob-always-day-on",
    filename = "__clock__/graphics/always-day-on.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
    mipmap_count = 3,
  },
  {
    type = "sprite",
    name = "bob-always-day-off",
    filename = "__clock__/graphics/always-day-off.png",
    priority = "medium",
    width = 64,
    height = 64,
    scale = 0.5,
    mipmap_count = 3,
  },
}
)

data.raw["gui-style"].default.bob_draggable_header = 
{
  type = "empty_widget_style",
  parent = "draggable_space_header",
  minimal_width = 0,
  padding = -8,
  height = 24,
  horizontally_stretchable = "on",
  vertically_stretchable = "on",
}

data.raw["gui-style"].default.bob_inside_shallow_frame = 
{
  type = "frame_style",
  parent = "inside_shallow_frame",
  padding = 8,
  vertical_flow_style =
  {
    type = "vertical_flow_style",
    vertical_spacing = 4
  }
}
