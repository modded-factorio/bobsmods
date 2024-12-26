if settings.startup["bobmods-modules-enablerawspeedmodules"].value == true then
  --[[Raw Speed Modules]]
  --

  data:extend({
    {
      type = "module",
      name = "raw-speed-module-1",
      icon = "__bobmodules__/graphics/icons/cyan-module-1.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 1,
      order = "m-rs-1",
      stack_size = 100,
      effect = { speed = bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-2",
      icon = "__bobmodules__/graphics/icons/cyan-module-2.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 2,
      order = "m-rs-2",
      stack_size = 100,
      effect = { speed = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-3",
      icon = "__bobmodules__/graphics/icons/cyan-module-3.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 3,
      order = "m-rs-3",
      stack_size = 100,
      effect = { speed = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-4",
      icon = "__bobmodules__/graphics/icons/cyan-module-4.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 4,
      order = "m-rs-4",
      stack_size = 100,
      effect = { speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-5",
      icon = "__bobmodules__/graphics/icons/cyan-module-5.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 5,
      order = "m-rs-5",
      stack_size = 100,
      effect = { speed = 5 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-6",
      icon = "__bobmodules__/graphics/icons/cyan-module-6.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 6,
      order = "m-rs-6",
      stack_size = 100,
      effect = { speed = 6 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-7",
      icon = "__bobmodules__/graphics/icons/cyan-module-7.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 7,
      order = "m-rs-7",
      stack_size = 100,
      effect = { speed = 7 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-speed-module-8",
      icon = "__bobmodules__/graphics/icons/cyan-module-8.png",
      icon_size = 32,
      subgroup = "raw-speed-module",
      category = "raw-speed",
      tier = 8,
      order = "m-rs-8",
      stack_size = 100,
      effect = { speed = 8 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001 },
      beacon_tint = {
        primary = { r = 0, g = 0.8, b = 0.8 },
        secondary = { r = 0.37, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },
  })
end

if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  data:extend({
    {
      type = "module",
      name = "green-module-1",
      icon = "__bobmodules__/graphics/icons/green-module-1.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 1,
      order = "m-g-1",
      stack_size = 100,
      effect = {
        pollution = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-2",
      icon = "__bobmodules__/graphics/icons/green-module-2.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 2,
      order = "m-g-2",
      stack_size = 100,
      effect = {
        pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-3",
      icon = "__bobmodules__/graphics/icons/green-module-3.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 3,
      order = "m-g-3",
      stack_size = 100,
      effect = {
        pollution = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-4",
      icon = "__bobmodules__/graphics/icons/green-module-4.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 4,
      order = "m-g-4",
      stack_size = 100,
      effect = {
        pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-5",
      icon = "__bobmodules__/graphics/icons/green-module-5.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 5,
      order = "m-g-5",
      stack_size = 100,
      effect = {
        pollution = -5 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -5 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-6",
      icon = "__bobmodules__/graphics/icons/green-module-6.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 6,
      order = "m-g-6",
      stack_size = 100,
      effect = {
        pollution = -6 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -6 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-7",
      icon = "__bobmodules__/graphics/icons/green-module-7.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 7,
      order = "m-g-7",
      stack_size = 100,
      effect = {
        pollution = -7 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -7 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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
      name = "green-module-8",
      icon = "__bobmodules__/graphics/icons/green-module-8.png",
      icon_size = 32,
      subgroup = "green-module",
      category = "green",
      tier = 8,
      order = "m-g-8",
      stack_size = 100,
      effect = {
        pollution = -8 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -8 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001
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

if settings.startup["bobmods-modules-enablerawproductivitymodules"].value == true then
  data:extend({
    {
      type = "module",
      name = "raw-productivity-module-1",
      icon = "__bobmodules__/graphics/icons/purple-module-1.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 1,
      order = "m-rp-1",
      stack_size = 100,
      effect = {
        productivity = bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-2",
      icon = "__bobmodules__/graphics/icons/purple-module-2.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 2,
      order = "m-rp-2",
      stack_size = 100,
      effect = {
        productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-3",
      icon = "__bobmodules__/graphics/icons/purple-module-3.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 3,
      order = "m-rp-3",
      stack_size = 100,
      effect = {
        productivity = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-4",
      icon = "__bobmodules__/graphics/icons/purple-module-4.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 4,
      order = "m-rp-4",
      stack_size = 100,
      effect = {
        productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-5",
      icon = "__bobmodules__/graphics/icons/purple-module-5.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 5,
      order = "m-rp-5",
      stack_size = 100,
      effect = {
        productivity = 5 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-6",
      icon = "__bobmodules__/graphics/icons/purple-module-6.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 6,
      order = "m-rp-6",
      stack_size = 100,
      effect = {
        productivity = 6 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-7",
      icon = "__bobmodules__/graphics/icons/purple-module-7.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 7,
      order = "m-rp-7",
      stack_size = 100,
      effect = {
        productivity = 7 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },

    {
      type = "module",
      name = "raw-productivity-module-8",
      icon = "__bobmodules__/graphics/icons/purple-module-8.png",
      icon_size = 32,
      subgroup = "raw-productivity-module",
      category = "raw-productivity",
      tier = 8,
      order = "m-rp-8",
      stack_size = 100,
      effect = {
        productivity = 8 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0, b = 0 },
        secondary = { r = 1, g = 0.37, b = 0.37 },
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
      name = "god-module-1",
      icon = "__bobmodules__/graphics/icons/god-module.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 1,
      order = "m-g-1",
      stack_size = 100,
      effect = {
        productivity = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
        pollution = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
        speed = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001
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
      name = "god-module-2",
      icon = "__bobmodules__/graphics/icons/god-module-1.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 2,
      order = "m-g-2",
      stack_size = 100,
      effect = {
        productivity = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
        pollution = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
        speed = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001
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
      name = "god-module-3",
      icon = "__bobmodules__/graphics/icons/god-module-2.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 3,
      order = "m-g-3",
      stack_size = 100,
      effect = {
        productivity = 6 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
        pollution = -6 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -6 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
        speed = 6 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001
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
      name = "god-module-4",
      icon = "__bobmodules__/graphics/icons/god-module-3.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 4,
      order = "m-g-4",
      stack_size = 100,
      effect = {
        productivity = 8 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
        pollution = -8 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -8 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
        speed = 8 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001
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
      name = "god-module-5",
      icon = "__bobmodules__/graphics/icons/god-module-4.png",
      icon_size = 32,
      subgroup = "god-module",
      category = "god",
      tier = 5,
      order = "m-g-5",
      stack_size = 100,
      effect = {
        productivity = 10 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus + 0.001,
        pollution = -10 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus - 0.001,
        consumption = -10 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus - 0.001,
        speed = 10 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus + 0.001,
      },
      beacon_tint = {
        primary = { r = 0.5, g = 0.5, b = 0.5 },
        secondary = { r = 1, g = 1, b = 1 },
      },
      art_style = "vanilla",
      requires_beacon_alt_mode = false,
    },
  })

  if feature_flags["quality"] then
    data.raw["module"]["god-module-1"].effect.quality = 2 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus + 0.001
    data.raw["module"]["god-module-2"].effect.quality = 4 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus + 0.001
    data.raw["module"]["god-module-3"].effect.quality = 6 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus + 0.001
    data.raw["module"]["god-module-4"].effect.quality = 8 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus + 0.001
    data.raw["module"]["god-module-5"].effect.quality = 10 * bobmods.modules.QualityPerLevel + bobmods.modules.QualityBonus + 0.001
  end
end
