data:extend({
  {
    type = "bool-setting",
    name = "bobmods-warfare-robotupdate",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-warfare-drainlesslaserturrets",
    setting_type = "startup",
    default_value = false,
  },
  {
    type = "bool-setting",
    name = "bobmods-colorupdate",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-warfare-vehicleflamethrowerstartsfires",
    setting_type = "startup",
    default_value = false,
  },

  {
    type = "bool-setting",
    name = "bobmods-warfare-spidertron-overhaul",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "string-setting",
    name = "bobmods-warfare-spidertron-needsfuel",
    setting_type = "startup",
    default_value = "default",
    allowed_values = { "default", "all", "none", "nothighest" },
  },
  {
    type = "double-setting",
    name = "bobmods-plasma-modifier",
    setting_type = "startup",
    minimum_value = 0,
    maximum_value = 10,
    default_value = 1,
  },
})
