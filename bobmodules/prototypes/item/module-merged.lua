if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  data:extend({
    {
      type = "module",
      name = "bob-green-module-1",
      icon = "__bobmodules__/graphics/icons/green-module-1.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 1,
      order = "m-g-1",
      stack_size = 50,
      effect = {
        pollution = -1 * bobmods.modules.PollutionBonus,
        consumption = -1 * bobmods.modules.ConsumptionBonus,
      },
      beacon_tint = {
        primary = { r = 0.8, g = 0.8, b = 0 },
        secondary = { r = 1, g = 1, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "bob-green-module-2",
      icon = "__bobmodules__/graphics/icons/green-module-2.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 2,
      order = "m-g-2",
      stack_size = 50,
      effect = {
        pollution = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
        consumption = -1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
      },
      beacon_tint = {
        primary = { r = 0.8, g = 0.8, b = 0 },
        secondary = { r = 1, g = 1, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "bob-green-module-3",
      icon = "__bobmodules__/graphics/icons/green-module-3.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 3,
      order = "m-g-3",
      stack_size = 50,
      effect = {
        pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
        consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
      },
      beacon_tint = {
        primary = { r = 0.8, g = 0.8, b = 0 },
        secondary = { r = 1, g = 1, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "bob-green-module-4",
      icon = "__bobmodules__/graphics/icons/green-module-4.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 4,
      order = "m-g-4",
      stack_size = 50,
      effect = {
        pollution = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
        consumption = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
      },
      beacon_tint = {
        primary = { r = 0.8, g = 0.8, b = 0 },
        secondary = { r = 1, g = 1, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "bob-green-module-5",
      icon = "__bobmodules__/graphics/icons/green-module-5.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 5,
      order = "m-g-5",
      stack_size = 50,
      effect = {
        pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
        consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
      },
      beacon_tint = {
        primary = { r = 0.8, g = 0.8, b = 0 },
        secondary = { r = 1, g = 1, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },
  })
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  data:extend({
    {
      type = "module",
      name = "bob-god-module",
      icon = "__bobmodules__/graphics/icons/god-module.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 1,
      order = "m-x-1",
      stack_size = 50,
      effect = {
        pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
        consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
        speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0.5, b = 0.5 },
        secondary = { r = 1, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },
    {
      type = "module",
      name = "bob-god-module-productivity",
      icon = "__bobmodules__/graphics/icons/god-module.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 1,
      order = "m-x-2",
      stack_size = 50,
      effect = {
        productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus,
        pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
        consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
        speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0.5, b = 0.5 },
        secondary = { r = 1, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },
  })
  if mods["quality"] then
    data:extend({
      {
        type = "module",
        name = "bob-god-module-quality",
        icon = "__bobmodules__/graphics/icons/god-module.png",
        icon_size = 32,
        subgroup = "god-module",
        category = "god",
        tier = 1,
        order = "m-x-3",
        stack_size = 50,
        effect = {
          quality = 4 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus,
          pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus,
          consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus,
          speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus,
        },
        beacon_tint = {
          primary = { r = 0.5, g = 0.5, b = 0.5 },
          secondary = { r = 1, g = 1, b = 1 },
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false,
      },
    })  
  end
end
