data:extend({
  {
    type = "bool-setting",
    name = "bobmods-enemies-enableartifacts",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-enablesmallartifacts",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-enablenewartifacts",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-aliensdropartifacts",
    setting_type = "startup",
    default_value = true,
  },

  {
    type = "double-setting",
    name = "bobmods-enemies-leviathanfrequency",
    setting_type = "startup",
    default_value = 0.05,
    minimum_value = 0,
    maximum_value = 1,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-biggersooner",
    setting_type = "startup",
    default_value = false,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-superspawner",
    setting_type = "startup",
    default_value = true,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-healthincrease",
    setting_type = "startup",
    default_value = false,
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-originalcolors",
    setting_type = "startup",
    default_value = false,
  },
  {
    type = "double-setting",
    name = "bobmods-enemies-factionsappear",
    setting_type = "startup",
    default_value = 0.5,
    allowed_values = { 0, 0.2, 0.3, 0.4, 0.5, 0.6 },
  },
  {
    type = "bool-setting",
    name = "bobmods-enemies-qualityenemies",
    setting_type = "startup",
    default_value = false,
    hidden = true,
    forced_value = false,
  },
  {
    type = "int-setting",
    name = "bobmods-enemies-radarscanlimit",
    setting_type = "startup",
    default_value = 50,
    minimum_value = 0,
  },
})

if feature_flags["quality"] then
  data.raw["bool-setting"]["bobmods-enemies-qualityenemies"].hidden = false
  data.raw["bool-setting"]["bobmods-enemies-qualityenemies"].forced_value = nil
  data.raw["bool-setting"]["bobmods-enemies-qualityenemies"].default_value = true
end
