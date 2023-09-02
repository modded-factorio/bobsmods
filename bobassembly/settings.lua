data:extend({
  {
    type = "bool-setting",
    name = "bobmods-assembly-electronicmachines",
    setting_type = "startup",
    default_value = true,
  },

  {
    type = "bool-setting",
    name = "bobmods-assembly-oilrefineries",
    setting_type = "startup",
    default_value = true,
  },

  {
    type = "bool-setting",
    name = "bobmods-assembly-chemicalplants",
    setting_type = "startup",
    default_value = true,
  },

  {
    type = "bool-setting",
    name = "bobmods-assembly-electrolysers",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-assembly-furnaces",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-assembly-multipurposefurnaces",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-assembly-distilleries",
    setting_type = "startup",
    default_value = true,
    hidden = (not mods["bobplates"]) and true or false,
  },
  {
    type = "bool-setting",
    name = "bobmods-assembly-limits",
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
    name = "bobmods-assembly-oilfurnaces",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-assembly-burner",
    setting_type = "startup",
    default_value = true,
    hidden = mods["aai-industry"] and true or false,
  },
  {
    type = "bool-setting",
    name = "bobmods-assembly-centrifuge",
    setting_type = "startup",
    default_value = true,
  },
})
