local blank32 = {
  filename = "__bobinserters__/graphics/gui/gui.png",
  priority = "extra-high-no-scale",
  scale = 1,
  position = { 192, 32 },
  size = { 32, 32 },
}

local inserter_middle = {
  filename = "__bobinserters__/graphics/gui/gui.png",
  priority = "extra-high-no-scale",
  scale = 0.5,
  position = { 0, 0 },
  size = { 64, 64 },
}

local inserter_checkmark_pickup = {
  filename = "__bobinserters__/graphics/gui/gui.png",
  priority = "extra-high-no-scale",
  scale = 0.5,
  position = { 64, 0 },
  size = { 64, 64 },
}

local inserter_checkmark_drop = {
  filename = "__bobinserters__/graphics/gui/gui.png",
  priority = "extra-high-no-scale",
  scale = 0.5,
  position = { 128, 0 },
  size = { 64, 64 },
}

local checkmark = {
  filename = "__bobinserters__/graphics/gui/gui.png",
  position = { 192, 0 },
  size = { 32, 32 },
  scale = 1,
}

local checkmark_small = {
  filename = "__bobinserters__/graphics/gui/gui.png",
  position = { 192, 0 },
  size = { 32, 32 },
  scale = 0.5,
}

local function glow_function(tint_value)
  return {
    position = { 200, 128 },
    corner_size = 8,
    tint = tint_value,
    draw_type = "outer",
  }
end

local shadow = glow_function({ 15, 7, 3, 100 })
local glow_green = glow_function({ 135, 216, 139, 128 })
local glow_blue = glow_function({ 90, 200, 250, 128 })

local green_default_graphical_set = {
  base = { position = { 68, 17 }, corner_size = 8 },
  shadow = shadow,
}
local green_hovered_graphical_set = {
  base = { position = { 102, 17 }, corner_size = 8 },
  shadow = shadow,
  glow = glow_green,
}
local green_clicked_graphical_set = {
  base = { position = { 119, 17 }, corner_size = 8 },
  shadow = shadow,
}
local green_disabled_graphical_set = {
  base = { position = { 85, 17 }, corner_size = 8 },
  shadow = shadow,
}

local blue_default_graphical_set = {
  base = { position = { 329, 48 }, corner_size = 8 },
  shadow = shadow,
}
local blue_hovered_graphical_set = {
  base = { position = { 346, 48 }, corner_size = 8 },
  shadow = shadow,
  glow = glow_blue,
}
local blue_clicked_graphical_set = {
  base = { position = { 363, 48 }, corner_size = 8 },
  shadow = shadow,
}

data.raw["gui-style"].default.bob_table = {
  type = "table_style",
  horizontal_spacing = 2,
  vertical_spacing = 2,
}

data.raw["gui-style"].default.bob_button_flow = {
  type = "horizontal_flow_style",
  parent = "horizontal_flow",
  vertical_align = "center",
  horizontally_stretchable = "on",
}

data.raw["gui-style"].default.bob_draggable_header = {
  type = "empty_widget_style",
  parent = "draggable_space_header",
  minimal_width = 0,
  padding = -8,
  height = 24,
  horizontally_stretchable = "on",
  vertically_stretchable = "on",
}

data.raw["gui-style"].default.bob_draggable_footer = {
  type = "empty_widget_style",
  parent = "draggable_space",
  minimal_width = 0,
  padding = -8,
  height = 32,
  horizontally_stretchable = "on",
  vertically_stretchable = "on",
}

data.raw["gui-style"].default.bob_inserter_checkbox = {
  type = "checkbox_style",
  font = "default",
  font_color = { r = 1, g = 1, b = 1 },
  padding = 0,
  size = { 32, 32 },
  default_graphical_set = data.raw["gui-style"].default.button.default_graphical_set,
  hovered_graphical_set = data.raw["gui-style"].default.button.hovered_graphical_set,
  clicked_graphical_set = data.raw["gui-style"].default.button.clicked_graphical_set,
  disabled_graphical_set = data.raw["gui-style"].default.button.disabled_graphical_set,
  selected_graphical_set = {
    base = data.raw["gui-style"].default.button.hovered_graphical_set.base,
    shadow = shadow,
  },
  selected_hovered_graphical_set = data.raw["gui-style"].default.button.hovered_graphical_set,
  selected_clicked_graphical_set = data.raw["gui-style"].default.button.clicked_graphical_set,
  checkmark = checkmark,
}

data.raw["gui-style"].default.red_bob_inserter_checkbox = {
  type = "checkbox_style",
  font = "default",
  parent = "bob_inserter_checkbox",
  --  default_graphical_set = data.raw["gui-style"].default.red_button.default_graphical_set,
  hovered_graphical_set = data.raw["gui-style"].default.red_button.hovered_graphical_set,
  clicked_graphical_set = data.raw["gui-style"].default.red_button.clicked_graphical_set,
  --  disabled_graphical_set = data.raw["gui-style"].default.red_button.disabled_graphical_set,
  selected_graphical_set = data.raw["gui-style"].default.red_button.default_graphical_set,
  selected_hovered_graphical_set = data.raw["gui-style"].default.red_button.hovered_graphical_set,
  selected_clicked_graphical_set = data.raw["gui-style"].default.red_button.clicked_graphical_set,
}

data.raw["gui-style"].default.green_bob_inserter_checkbox = {
  type = "checkbox_style",
  font = "default",
  parent = "bob_inserter_checkbox",
  --  default_graphical_set = green_default_graphical_set,
  hovered_graphical_set = green_hovered_graphical_set,
  clicked_graphical_set = green_clicked_graphical_set,
  --  disabled_graphical_set = green_disabled_graphical_set,
  selected_graphical_set = green_default_graphical_set,
  selected_hovered_graphical_set = green_hovered_graphical_set,
  selected_clicked_graphical_set = green_clicked_graphical_set,
}

data.raw["gui-style"].default.blue_bob_inserter_checkbox = {
  type = "checkbox_style",
  font = "default",
  parent = "bob_inserter_checkbox",
  --  default_graphical_set = blue_default_graphical_set,
  hovered_graphical_set = blue_hovered_graphical_set,
  clicked_graphical_set = blue_clicked_graphical_set,
  selected_graphical_set = blue_default_graphical_set,
  selected_hovered_graphical_set = blue_hovered_graphical_set,
  selected_clicked_graphical_set = blue_clicked_graphical_set,
}

data.raw["gui-style"].default.bob_inserter_blank = {
  type = "checkbox_style",
  font = "default",
  font_color = { r = 1, g = 1, b = 1 },
  padding = 0,
  size = { 32, 32 },
  default_graphical_set = blank32,
  hovered_graphical_set = blank32,
  clicked_graphical_set = blank32,
  disabled_graphical_set = blank32,
  selected_graphical_set = blank32,
  selected_hovered_graphical_set = blank32,
  selected_clicked_graphical_set = blank32,
  checkmark = blank32,
}

data.raw["gui-style"].default.bob_inserter_middle = {
  type = "checkbox_style",
  font = "default",
  font_color = { r = 1, g = 1, b = 1 },
  padding = 0,
  size = { 32, 32 },
  default_graphical_set = inserter_middle,
  hovered_graphical_set = inserter_middle,
  clicked_graphical_set = inserter_middle,
  disabled_graphical_set = inserter_middle,
  selected_graphical_set = inserter_middle,
  selected_hovered_graphical_set = inserter_middle,
  selected_clicked_graphical_set = inserter_middle,
  checkmark = blank32,
}

data.raw["gui-style"].default.bob_inserter_checkbox_pickup = {
  type = "checkbox_style",
  font = "default",
  parent = "bob_inserter_checkbox",
  checkmark = inserter_checkmark_pickup,
}

data.raw["gui-style"].default.bob_inserter_checkbox_drop = {
  type = "checkbox_style",
  font = "default",
  parent = "bob_inserter_checkbox",
  checkmark = inserter_checkmark_drop,
}

data.raw["gui-style"].default.bob_inserter_checkbox_small = {
  type = "checkbox_style",
  font = "default",
  parent = "bob_inserter_checkbox",
  size = { 16, 16 },
  checkmark = checkmark_small,
}
