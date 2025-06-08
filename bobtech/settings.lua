data:extend({
  {
    type = "bool-setting",
    name = "bobmods-burnerphase",
    setting_type = "startup",
    default_value = true,
  },
})

if mods["aai-industry"] then
  data.raw["bool-setting"]["bobmods-burnerphase"].hidden = true
  data.raw["bool-setting"]["bobmods-burnerphase"].forced_value = false
end
