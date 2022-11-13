data:extend({
  {
    type = "bool-setting",
    name = "bobmods-inserters-long2",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-inserters-more2",
    setting_type = "startup",
    default_value = true,
  },

  {
    type = "string-setting",
    name = "bobmods-inserters-show-window",
    setting_type = "runtime-per-user",
    default_value = "off",
    allowed_values = { "off", "left", "top" },
  },
  {
    type = "string-setting",
    name = "bobmods-inserters-gui-position",
    setting_type = "runtime-per-user",
    default_value = "right",
    allowed_values = { "off", "left", "right", "top", "bottom" },
  },
  {
    type = "bool-setting",
    name = "bobmods-inserters-button-enable",
    setting_type = "runtime-per-user",
    default_value = true,
  },
})
