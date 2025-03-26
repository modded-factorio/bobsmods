local item_sounds = require("__base__.prototypes.item_sounds")
local module_color_map = {
  ["blue"] = { primary = util.color("70b6ff"), secondary = util.color("30d2ff") },
  ["brown"] = { primary = util.color("9c7c60"), secondary = util.color("fff0d9") },
  ["pine"] = { primary = util.color("7a9e96"), secondary = util.color("bfffd2") },
  ["red-yellow"] = { primary = util.color("f27c52"), secondary = util.color("ffe27c") },
  ["green"] = { primary = util.color("95e26c"), secondary = util.color("2bff2b") },
  ["gray-red"] = { primary = util.color("b7b7b7"), secondary = util.color("ff5959") },
}

--[[Speed Modules]]

data.raw["module"]["speed-module"].icon = "__bobmodules__/graphics/icons/blue/blue_01.png"
data.raw["module"]["speed-module"].subgroup = "speed-module"
data.raw["module"]["speed-module"].order = "m-s-1"
data.raw["module"]["speed-module"].beacon_tint = module_color_map["blue"]
data.raw["module"]["speed-module"].art_style = "bob-5-lights"
data.raw["module"]["speed-module"].effect = {
  speed = bobmods.modules.SpeedBonus,
  consumption = bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
  quality = -1 * bobmods.modules.QualityBonus,
}

data.raw["module"]["speed-module-2"].icon = "__bobmodules__/graphics/icons/blue/blue_02.png"
data.raw["module"]["speed-module-2"].subgroup = "speed-module"
data.raw["module"]["speed-module-2"].order = "m-s-2"
data.raw["module"]["speed-module-2"].beacon_tint = module_color_map["blue"]
data.raw["module"]["speed-module-2"].art_style = "bob-5-lights"
data.raw["module"]["speed-module-2"].effect = {
  speed = bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
  consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
  quality = -1 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus,
}

data.raw["module"]["speed-module-3"].icon = "__bobmodules__/graphics/icons/blue/blue_03.png"
data.raw["module"]["speed-module-3"].subgroup = "speed-module"
data.raw["module"]["speed-module-3"].order = "m-s-3"
data.raw["module"]["speed-module-3"].beacon_tint = module_color_map["blue"]
data.raw["module"]["speed-module-3"].art_style = "bob-5-lights"
data.raw["module"]["speed-module-3"].effect = {
  speed = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
  consumption = 3 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
  quality = -2 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus,
}

data:extend({
  {
    type = "module",
    name = "bob-speed-module-4",
    localised_name = { "", { "item-name.speed-module" }, " 4" },
    icon = "__bobmodules__/graphics/icons/blue/blue_04.png",
    subgroup = "speed-module",
    category = "speed",
    tier = 4,
    order = "m-s-4",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      speed = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
      consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
      quality = -3 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus,
    },
    beacon_tint = module_color_map["blue"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-speed-module-5",
    localised_name = { "", { "item-name.speed-module" }, " 5" },
    icon = "__bobmodules__/graphics/icons/blue/blue_05.png",
    subgroup = "speed-module",
    category = "speed",
    tier = 5,
    order = "m-s-5",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
      consumption = 5 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
      quality = -4 * bobmods.modules.QualityPerLevel - bobmods.modules.QualityBonus,
    },
    beacon_tint = module_color_map["blue"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },
})

--[[Efficiency Modules]]

data.raw["module"]["efficiency-module"].icon = "__bobmodules__/graphics/icons/green/green_01.png"
data.raw["module"]["efficiency-module"].subgroup = "efficiency-module"
data.raw["module"]["efficiency-module"].order = "m-e-1"
data.raw["module"]["efficiency-module"].beacon_tint = module_color_map["green"]
data.raw["module"]["efficiency-module"].art_style = "bob-5-lights"
data.raw["module"]["efficiency-module"].effect = {
  consumption = -1 * bobmods.modules.ConsumptionBonus,
}

data.raw["module"]["efficiency-module-2"].icon = "__bobmodules__/graphics/icons/green/green_02.png"
data.raw["module"]["efficiency-module-2"].subgroup = "efficiency-module"
data.raw["module"]["efficiency-module-2"].order = "m-e-2"
data.raw["module"]["efficiency-module-2"].beacon_tint = module_color_map["green"]
data.raw["module"]["efficiency-module-2"].art_style = "bob-5-lights"
data.raw["module"]["efficiency-module-2"].effect = {
  consumption = -1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
}

data.raw["module"]["efficiency-module-3"].icon = "__bobmodules__/graphics/icons/green/green_03.png"
data.raw["module"]["efficiency-module-3"].subgroup = "efficiency-module"
data.raw["module"]["efficiency-module-3"].order = "m-e-3"
data.raw["module"]["efficiency-module-3"].beacon_tint = module_color_map["green"]
data.raw["module"]["efficiency-module-3"].art_style = "bob-5-lights"
data.raw["module"]["efficiency-module-3"].effect = {
  consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
}

data:extend({
  {
    type = "module",
    name = "bob-efficiency-module-4",
    localised_name = { "", { "item-name.efficiency-module" }, " 4" },
    icon = "__bobmodules__/graphics/icons/green/green_04.png",
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 4,
    order = "m-e-4",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      consumption = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
    },
    beacon_tint = module_color_map["green"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-efficiency-module-5",
    localised_name = { "", { "item-name.efficiency-module" }, " 5" },
    icon = "__bobmodules__/graphics/icons/green/green_05.png",
    subgroup = "efficiency-module",
    category = "efficiency",
    tier = 5,
    order = "m-e-5",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
    },
    beacon_tint = module_color_map["green"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },
})

--[[Productivity Modules]]

data.raw["module"]["productivity-module"].icon = "__bobmodules__/graphics/icons/red-yellow/red-yellow_01.png"
data.raw["module"]["productivity-module"].subgroup = "productivity-module"
data.raw["module"]["productivity-module"].order = "m-p-1"
data.raw["module"]["productivity-module"].beacon_tint = module_color_map["red-yellow"]
data.raw["module"]["productivity-module"].art_style = "bob-5-lights"
data.raw["module"]["productivity-module"].effect = {
  productivity = bobmods.modules.ProductivityBonus,
  consumption = bobmods.modules.ConsumptionPenalty,
  pollution = bobmods.modules.PollutionPenalty,
  speed = -1 * bobmods.modules.SpeedPenalty,
}

data.raw["module"]["productivity-module-2"].icon = "__bobmodules__/graphics/icons/red-yellow/red-yellow_02.png"
data.raw["module"]["productivity-module-2"].subgroup = "productivity-module"
data.raw["module"]["productivity-module-2"].order = "m-p-2"
data.raw["module"]["productivity-module-2"].beacon_tint = module_color_map["red-yellow"]
data.raw["module"]["productivity-module-2"].art_style = "bob-5-lights"
data.raw["module"]["productivity-module-2"].effect = {
  productivity = bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus,
  consumption = 2 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
  pollution = bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty,
  speed = -1 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty,
}

data.raw["module"]["productivity-module-3"].icon = "__bobmodules__/graphics/icons/red-yellow/red-yellow_03.png"
data.raw["module"]["productivity-module-3"].subgroup = "productivity-module"
data.raw["module"]["productivity-module-3"].order = "m-p-3"
data.raw["module"]["productivity-module-3"].beacon_tint = module_color_map["red-yellow"]
data.raw["module"]["productivity-module-3"].art_style = "bob-5-lights"
data.raw["module"]["productivity-module-3"].effect = {
  productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus,
  consumption = 4 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
  pollution = 2 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty,
  speed = -2 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty,
}

data:extend({
  {
    type = "module",
    name = "bob-productivity-module-4",
    localised_name = { "", { "item-name.productivity-module" }, " 4" },
    icon = "__bobmodules__/graphics/icons/red-yellow/red-yellow_04.png",
    subgroup = "productivity-module",
    category = "productivity",
    tier = 4,
    order = "m-p-4",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      productivity = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus,
      consumption = 6 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
      pollution = 3 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty,
      speed = -3 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty,
    },
    beacon_tint = module_color_map["red-yellow"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-productivity-module-5",
    localised_name = { "", { "item-name.productivity-module" }, " 5" },
    icon = "__bobmodules__/graphics/icons/red-yellow/red-yellow_05.png",
    subgroup = "productivity-module",
    category = "productivity",
    tier = 5,
    order = "m-p-5",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus,
      consumption = 8 * bobmods.modules.ConsumptionPenaltyPerLevel + bobmods.modules.ConsumptionPenalty,
      pollution = 4 * bobmods.modules.PollutionPenaltyPerLevel + bobmods.modules.PollutionPenalty,
      speed = -4 * bobmods.modules.SpeedPenaltyPerLevel - bobmods.modules.SpeedPenalty,
    },
    beacon_tint = module_color_map["red-yellow"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },
})

--[[Pollution Cleaning Modules]]

data:extend({
  {
    type = "module",
    name = "bob-pollution-clean-module-1",
    icon = "__bobmodules__/graphics/icons/pine/pine_01.png",
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 1,
    order = "m-p-cl-1",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = { pollution = -1 * bobmods.modules.PollutionBonus },
    beacon_tint = module_color_map["pine"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-clean-module-2",
    icon = "__bobmodules__/graphics/icons/pine/pine_02.png",
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 2,
    order = "m-p-cl-2",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = { pollution = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus },
    beacon_tint = module_color_map["pine"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-clean-module-3",
    icon = "__bobmodules__/graphics/icons/pine/pine_03.png",
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 3,
    order = "m-p-cl-3",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = { pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus },
    beacon_tint = module_color_map["pine"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-clean-module-4",
    icon = "__bobmodules__/graphics/icons/pine/pine_04.png",
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 4,
    order = "m-p-cl-4",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = { pollution = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus },
    beacon_tint = module_color_map["pine"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-clean-module-5",
    icon = "__bobmodules__/graphics/icons/pine/pine_05.png",
    subgroup = "pollution-clean-module",
    category = "pollution-clean",
    tier = 5,
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    order = "m-p-cl-5",
    stack_size = 50,
    effect = { pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus },
    beacon_tint = module_color_map["pine"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },
})

--[[Pollution Producing Modules]]

data:extend({
  {
    type = "module",
    name = "bob-pollution-create-module-1",
    icon = "__bobmodules__/graphics/icons/brown/brown_01.png",
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 1,
    order = "m-p-cr-1",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      pollution = bobmods.modules.PollutionCreateBonus,
    },
    beacon_tint = module_color_map["brown"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-create-module-2",
    icon = "__bobmodules__/graphics/icons/brown/brown_02.png",
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 2,
    order = "m-p-cr-2",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      pollution = bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus,
    },
    beacon_tint = module_color_map["brown"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-create-module-3",
    icon = "__bobmodules__/graphics/icons/brown/brown_03.png",
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 3,
    order = "m-p-cr-3",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      pollution = 2 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus,
    },
    beacon_tint = module_color_map["brown"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-create-module-4",
    icon = "__bobmodules__/graphics/icons/brown/brown_04.png",
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 4,
    order = "m-p-cr-4",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      pollution = 3 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus,
    },
    beacon_tint = module_color_map["brown"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },

  {
    type = "module",
    name = "bob-pollution-create-module-5",
    icon = "__bobmodules__/graphics/icons/brown/brown_05.png",
    subgroup = "pollution-create-module",
    category = "pollution-create",
    tier = 5,
    order = "m-p-cr-5",
    inventory_move_sound = item_sounds.module_inventory_move,
    pick_sound = item_sounds.module_inventory_pickup,
    drop_sound = item_sounds.module_inventory_move,
    stack_size = 50,
    effect = {
      pollution = 4 * bobmods.modules.PollutionCreatePerLevel + bobmods.modules.PollutionCreateBonus,
    },
    beacon_tint = module_color_map["brown"],
    art_style = "bob-5-lights",
    requires_beacon_alt_mode = false,
  },
})

if mods["quality"] then
  data.raw["module"]["quality-module"].icon = "__bobmodules__/graphics/icons/quality/gray-red_01.png"
  data.raw["module"]["quality-module"].beacon_tint = module_color_map["gray-red"]
  data.raw["module"]["quality-module"].effect = {
    quality = bobmods.modules.QualityBonus,
    speed = -bobmods.modules.SpeedPenalty,
  }
  data.raw["module"]["quality-module"].subgroup = "quality-module"
  --data.raw["module"]["quality-module"].order = "m-q-1"
  data.raw["module"]["quality-module"].art_style = "bob-5-lights"

  data.raw["module"]["quality-module-2"].icon = "__bobmodules__/graphics/icons/quality/gray-red_02.png"
  data.raw["module"]["quality-module-2"].beacon_tint = module_color_map["gray-red"]
  data.raw["module"]["quality-module-2"].effect = {
    quality = bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus,
    speed = -bobmods.modules.SpeedPenalty,
  }

  data.raw["module"]["quality-module-2"].subgroup = "quality-module"
  --data.raw["module"]["quality-module-2"].order = "m-q-2"
  data.raw["module"]["quality-module-2"].art_style = "bob-5-lights"

  data.raw["module"]["quality-module-3"].icon = "__bobmodules__/graphics/icons/quality/gray-red_03.png"
  data.raw["module"]["quality-module-3"].beacon_tint = module_color_map["gray-red"]
  data.raw["module"]["quality-module-3"].effect = {
    quality = 2 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus,
    speed = -bobmods.modules.SpeedPenalty,
  }
  data.raw["module"]["quality-module-3"].subgroup = "quality-module"
  --data.raw["module"]["quality-module-3"].order = "m-q-3"
  data.raw["module"]["quality-module-3"].art_style = "bob-5-lights"

  data:extend({
    {
      type = "module",
      name = "bob-quality-module-4",
      localised_name = { "", { "item-name.quality-module" }, " 4" },
      localised_description = { "item-description.quality-module" },
      icon = "__bobmodules__/graphics/icons/quality/gray-red_04.png",
      subgroup = "quality-module",
      color_hint = { text = "Q" },
      category = "quality",
      tier = 4,
      order = "d[quality]-d[quality-module-4]",
      inventory_move_sound = item_sounds.module_inventory_move,
      pick_sound = item_sounds.module_inventory_pickup,
      drop_sound = item_sounds.module_inventory_move,
      stack_size = 50,
      weight = 20 * kg,
      effect = {
        quality = 3 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus,
        speed = -bobmods.modules.SpeedPenalty,
      },
      beacon_tint = module_color_map["gray-red"],
      art_style = "bob-5-lights",
      requires_beacon_alt_mode = false,
    },
    {
      type = "module",
      name = "bob-quality-module-5",
      localised_name = { "", { "item-name.quality-module" }, " 5" },
      localised_description = { "item-description.quality-module" },
      icon = "__bobmodules__/graphics/icons/quality/gray-red_05.png",
      subgroup = "quality-module",
      color_hint = { text = "Q" },
      category = "quality",
      tier = 5,
      order = "d[quality]-e[quality-module-5]",
      inventory_move_sound = item_sounds.module_inventory_move,
      pick_sound = item_sounds.module_inventory_pickup,
      drop_sound = item_sounds.module_inventory_move,
      stack_size = 50,
      weight = 20 * kg,
      effect = {
        quality = 4 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus,
        speed = -bobmods.modules.SpeedPenalty,
      },
      beacon_tint = module_color_map["gray-red"],
      art_style = "bob-5-lights",
      requires_beacon_alt_mode = false,
    },
  })
end
