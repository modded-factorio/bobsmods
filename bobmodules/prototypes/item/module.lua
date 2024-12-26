--[[Speed Modules]]
--

data.raw["module"]["speed-module"].stack_size = 100
data.raw["module"]["speed-module"].icon = "__bobmodules__/graphics/icons/speed-module-1.png"
data.raw["module"]["speed-module"].icon_size = 32
data.raw["module"]["speed-module"].subgroup = "speed-module"
data.raw["module"]["speed-module"].order = "m-s-1"
data.raw["module"]["speed-module"].beacon_tint =
  { primary = { r = 0, g = 0.34, b = 1, a = 1 }, secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 } }
data.raw["module"]["speed-module"].effect = {
  speed = bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
  consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
}

data.raw["module"]["speed-module-2"].stack_size = 100
data.raw["module"]["speed-module-2"].icon = "__bobmodules__/graphics/icons/speed-module-2.png"
data.raw["module"]["speed-module-2"].icon_size = 32
data.raw["module"]["speed-module-2"].subgroup = "speed-module"
data.raw["module"]["speed-module-2"].order = "m-s-2"
data.raw["module"]["speed-module-2"].beacon_tint =
  { primary = { r = 0, g = 0.34, b = 1, a = 1 }, secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 } }
data.raw["module"]["speed-module-2"].effect = {
  speed = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
  consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
}

data.raw["module"]["speed-module-3"].stack_size = 100
data.raw["module"]["speed-module-3"].icon = "__bobmodules__/graphics/icons/speed-module-3.png"
data.raw["module"]["speed-module-3"].icon_size = 32
data.raw["module"]["speed-module-3"].subgroup = "speed-module"
data.raw["module"]["speed-module-3"].order = "m-s-3"
data.raw["module"]["speed-module-3"].beacon_tint =
  { primary = { r = 0, g = 0.34, b = 1, a = 1 }, secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 } }
data.raw["module"]["speed-module-3"].effect = {
  speed = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 ,
  consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
}

data:extend({
  {
    type = "module",
    name = "speed-module-4",
    icon = "__bobmodules__/graphics/icons/speed-module-4.png",
    icon_size = 32,
    subgroup = "speed-module",
    category = "speed",
    tier = 4,
    order = "m-s-4",
    stack_size = 100,
    effect = {
      speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
      consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0, g = 0.34, b = 1, a = 1 },
      secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "speed-module-5",
    icon = "__bobmodules__/graphics/icons/speed-module-5.png",
    icon_size = 32,
    subgroup = "speed-module",
    category = "speed",
    tier = 5,
    order = "m-s-5",
    stack_size = 100,
    effect = {
      speed = 5 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
      consumption = 5 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0, g = 0.34, b = 1, a = 1 },
      secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "speed-module-6",
    icon = "__bobmodules__/graphics/icons/speed-module-6.png",
    icon_size = 32,
    subgroup = "speed-module",
    category = "speed",
    tier = 6,
    order = "m-s-6",
    stack_size = 100,
    effect = {
      speed = 6 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
      consumption = 6 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0, g = 0.34, b = 1, a = 1 },
      secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "speed-module-7",
    icon = "__bobmodules__/graphics/icons/speed-module-7.png",
    icon_size = 32,
    subgroup = "speed-module",
    category = "speed",
    tier = 7,
    order = "m-s-7",
    stack_size = 100,
    effect = {
      speed = 7 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
      consumption = 7 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0, g = 0.34, b = 1, a = 1 },
      secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "speed-module-8",
    icon = "__bobmodules__/graphics/icons/speed-module-8.png",
    icon_size = 32,
    subgroup = "speed-module",
    category = "speed",
    tier = 8,
    order = "m-s-8",
    stack_size = 100,
    effect = {
      speed = 8 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
      consumption = 8 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0, g = 0.34, b = 1, a = 1 },
      secondary = { r = 0.388, g = 0.976, b = 1.000, a = 1.000 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },
})

--[[Efficiency Modules]]
--

data.raw["module"]["efficiency-module"].stack_size = 100
data.raw["module"]["efficiency-module"].icon = "__bobmodules__/graphics/icons/yellow-module-1.png"
data.raw["module"]["efficiency-module"].icon_size = 32
data.raw["module"]["efficiency-module"].subgroup = "efficiency-module"
data.raw["module"]["efficiency-module"].order = "m-e-1"
data.raw["module"]["efficiency-module"].beacon_tint =
  { primary = { r = 0.3, g = 0.6, b = 0.1 }, secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 } }
data.raw["module"]["efficiency-module"].effect =
  { consumption = -1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001 }

data.raw["module"]["efficiency-module-2"].stack_size = 100
data.raw["module"]["efficiency-module-2"].icon = "__bobmodules__/graphics/icons/yellow-module-2.png"
data.raw["module"]["efficiency-module-2"].icon_size = 32
data.raw["module"]["efficiency-module-2"].subgroup = "efficiency-module"
data.raw["module"]["efficiency-module-2"].order = "m-e-2"
data.raw["module"]["efficiency-module-2"].beacon_tint =
  { primary = { r = 0.3, g = 0.6, b = 0.1 }, secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 } }
data.raw["module"]["efficiency-module-2"].effect =
  { consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001 }

data.raw["module"]["efficiency-module-3"].stack_size = 100
data.raw["module"]["efficiency-module-3"].icon = "__bobmodules__/graphics/icons/yellow-module-3.png"
data.raw["module"]["efficiency-module-3"].icon_size = 32
data.raw["module"]["efficiency-module-3"].subgroup = "efficiency-module"
data.raw["module"]["efficiency-module-3"].order = "m-e-3"
data.raw["module"]["efficiency-module-3"].beacon_tint =
  { primary = { r = 0.3, g = 0.6, b = 0.1 }, secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 } }
data.raw["module"]["efficiency-module-3"].effect =
  { consumption = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001 }

data:extend({
  {
    type = "module",
    name = "efficiency-module-4",
    icon = "__bobmodules__/graphics/icons/yellow-module-4.png",
    icon_size = 32,
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 4,
    order = "m-e-4",
    stack_size = 100,
    effect = {
      consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
    },
    beacon_tint = {
      primary = { r = 0.3, g = 0.6, b = 0.1 },
      secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 }, -- #5eff5eff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "efficiency-module-5",
    icon = "__bobmodules__/graphics/icons/yellow-module-5.png",
    icon_size = 32,
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 5,
    order = "m-e-5",
    stack_size = 100,
    effect = {
      consumption = -5 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
    },
    beacon_tint = {
      primary = { r = 0.3, g = 0.6, b = 0.1 },
      secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 }, -- #5eff5eff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "efficiency-module-6",
    icon = "__bobmodules__/graphics/icons/yellow-module-6.png",
    icon_size = 32,
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 6,
    order = "m-e-6",
    stack_size = 100,
    effect = {
      consumption = -6 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
    },
    beacon_tint = {
      primary = { r = 0.3, g = 0.6, b = 0.1 },
      secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 }, -- #5eff5eff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "efficiency-module-7",
    icon = "__bobmodules__/graphics/icons/yellow-module-7.png",
    icon_size = 32,
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 7,
    order = "m-e-7",
    stack_size = 100,
    effect = {
      consumption = -7 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
    },
    beacon_tint = {
      primary = { r = 0.3, g = 0.6, b = 0.1 },
      secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 }, -- #5eff5eff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "efficiency-module-8",
    icon = "__bobmodules__/graphics/icons/yellow-module-8.png",
    icon_size = 32,
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 8,
    order = "m-e-8",
    stack_size = 100,
    effect = {
      consumption = -8 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
    },
    beacon_tint = {
      primary = { r = 0.3, g = 0.6, b = 0.1 },
      secondary = { r = 0.370, g = 1.000, b = 0.370, a = 1.000 }, -- #5eff5eff
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },
})

--[[Productivity Modules]]
--

data:extend({
  {
    type = "module",
    name = "productivity-module",
    icon = "__bobmodules__/graphics/icons/red-module-1.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 1,
    order = "m-p-1",
    stack_size = 100,
    effect = {
      productivity = bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001 ,
      consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001 ,
      pollution = bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-2",
    icon = "__bobmodules__/graphics/icons/red-module-2.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 2,
    order = "m-p-2",
    stack_size = 100,
    effect = {
      productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001 ,
      consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001 ,
      pollution = 2 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001 
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-3",
    icon = "__bobmodules__/graphics/icons/red-module-3.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 3,
    order = "m-p-3",
    stack_size = 100,
    effect = {
      productivity = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
      consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
      pollution = 3 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-4",
    icon = "__bobmodules__/graphics/icons/red-module-4.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 4,
    order = "m-p-4",
    stack_size = 100,
    effect = {
      productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
      consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
      pollution = 4 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-5",
    icon = "__bobmodules__/graphics/icons/red-module-5.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 5,
    order = "m-p-5",
    stack_size = 100,
    effect = {
      productivity = 5 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
      consumption = 5 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
      pollution = 5 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-6",
    icon = "__bobmodules__/graphics/icons/red-module-6.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 6,
    order = "m-p-6",
    stack_size = 100,
    effect = {
      productivity = 6 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
      consumption = 6 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
      pollution = 6 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-7",
    icon = "__bobmodules__/graphics/icons/red-module-7.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 7,
    order = "m-p-7",
    stack_size = 100,
    effect = {
      productivity = 7 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
      consumption = 7 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
      pollution = 7 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "productivity-module-8",
    icon = "__bobmodules__/graphics/icons/red-module-8.png",
    icon_size = 32,
    subgroup = "productivity-module",
    category = "productivity",
    tier = 8,
    order = "m-p-8",
    stack_size = 100,
    effect = {
      productivity = 8 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
      consumption = 8 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty + 0.001,
      pollution = 8 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty + 0.001
    },
    beacon_tint = {
      primary = { r = 0.68, g = 0.3, b = 0.8, a = 1 },
      secondary = { r = 1, g = 0.6, b = 0.9, a = 1 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },
})

if settings.startup["bobmods-modules-productivityhasspeed"].value == true then
  data.raw.module["productivity-module"].effect.speed = -1 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty
  data.raw.module["productivity-module-2"].effect.speed = -2 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
  data.raw.module["productivity-module-3"].effect.speed = -3 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
  data.raw.module["productivity-module-4"].effect.speed = -4 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
  data.raw.module["productivity-module-5"].effect.speed = -5 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
  data.raw.module["productivity-module-6"].effect.speed = -6 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
  data.raw.module["productivity-module-7"].effect.speed = -7 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
  data.raw.module["productivity-module-8"].effect.speed = -8 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty - 0.001 
end

--[[Pollution Cleaning Modules]]
--

data:extend({
  {
    type = "module",
    name = "pollution-clean-module-1",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-1.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 1,
    order = "m-p-cl-1",
    stack_size = 100,
    effect = { pollution = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-2",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-2.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 2,
    order = "m-p-cl-2",
    stack_size = 100,
    effect = { pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-3",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-3.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 3,
    order = "m-p-cl-3",
    stack_size = 100,
    effect = { pollution = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-4",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-4.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 4,
    order = "m-p-cl-4",
    stack_size = 100,
    effect = { pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-5",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-5.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 5,
    order = "m-p-cl-5",
    stack_size = 100,
    effect = { pollution = -5 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-6",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-6.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 6,
    order = "m-p-cl-6",
    stack_size = 100,
    effect = { pollution = -6 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-7",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-7.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 7,
    order = "m-p-cl-7",
    stack_size = 100,
    effect = { pollution = -7 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-clean-module-8",
    icon = "__bobmodules__/graphics/icons/pollution-clean-module-8.png",
    icon_size = 32,
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 8,
    order = "m-p-cl-8",
    stack_size = 100,
    effect = { pollution = -8 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001 },
    beacon_tint = {
      primary = { r = 0.2, g = 0.5, b = 0.3 },
      secondary = { r = 0.4, g = 0.7, b = 0.5 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },
})

--[[Pollution Producing Modules]]
--

data:extend({
  {
    type = "module",
    name = "pollution-create-module-1",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-1.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 1,
    order = "m-p-cr-1",
    stack_size = 100,
    effect = {
      pollution = bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-2",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-2.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 2,
    order = "m-p-cr-2",
    stack_size = 100,
    effect = {
      pollution = 2 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-3",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-3.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 3,
    order = "m-p-cr-3",
    stack_size = 100,
    effect = {
      pollution = 3 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-4",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-4.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 4,
    order = "m-p-cr-4",
    stack_size = 100,
    effect = {
      pollution = 4 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-5",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-5.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 5,
    order = "m-p-cr-5",
    stack_size = 100,
    effect = {
      pollution = 5 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-6",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-6.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 6,
    order = "m-p-cr-6",
    stack_size = 100,
    effect = {
      pollution = 6 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-7",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-7.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 7,
    order = "m-p-cr-7",
    stack_size = 100,
    effect = {
      pollution = 7 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "pollution-create-module-8",
    icon = "__bobmodules__/graphics/icons/pollution-create-module-8.png",
    icon_size = 32,
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 8,
    order = "m-p-cr-8",
    stack_size = 100,
    effect = {
      pollution = 8 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus + 0.001 },
    beacon_tint = {
      primary = { r = 0.4, g = 0.3, b = 0.2 },
      secondary = { r = 1, g = 0.5, b = 0 },
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false,
  },
})
