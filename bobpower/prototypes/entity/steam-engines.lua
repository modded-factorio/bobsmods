-- water = 100(max_temperature) - 15(default_temperature) = 85. 85 * 1kJ(heat_capacity) per degree = 85kJ. 85kJ * 60(ticks) = 5100kJ
-- generator = 5100kJ * 1(effectivity ) * 0.1(fluid_usage_per_tick) = 510kJ
-- a standard boiler is capable of heating 0.075 of flow from 15 degrees to 100.

-- Power = 0.2kW(water power per degree) * Temperature - 15(start) * fluid per tick * 60

--[[
SE1: 0.2kW * 60 * 0.5 * ( 165 -15) =   900kW
SE2: 0.2kW * 60 * 0.5 * ( 315 -15) =  1800kW
SE3: 0.2kW * 60 * 0.5 * ( 465 -15) =  2700kW
SE4: 0.2kW * 60 * 0.5 * ( 615 -15) =  3600kW
SE5: 0.2kW * 60 * 0.5 * ( 765 -15) =  4500kW
]]
--

if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    util.merge({
      data.raw.generator["steam-engine"],
      {
        name = "bob-steam-engine-2",
        icon = "__base__/graphics/icons/steam-engine.png",
        localised_description = { "entity-description.steam-engine" },
        icon_size = 64,
        minable = { mining_time = 1, result = "bob-steam-engine-2" },
        max_health = 500,
        maximum_temperature = 315,
        next_upgrade = "bob-steam-engine-3",
      },
    }),

    util.merge({
      data.raw.generator["steam-engine"],
      {
        name = "bob-steam-engine-3",
        icon = "__base__/graphics/icons/steam-engine.png",
        localised_description = { "entity-description.steam-engine" },
        icon_size = 64,
        minable = { mining_time = 1, result = "bob-steam-engine-3" },
        max_health = 600,
        maximum_temperature = 465,
        next_upgrade = "bob-steam-engine-4",
      },
    }),

    util.merge({
      data.raw.generator["steam-engine"],
      {
        name = "bob-steam-engine-4",
        icon = "__base__/graphics/icons/steam-engine.png",
        localised_description = { "entity-description.steam-engine" },
        icon_size = 64,
        minable = { mining_time = 1, result = "bob-steam-engine-4" },
        max_health = 700,
        maximum_temperature = 615,
        next_upgrade = "bob-steam-engine-5",
      },
    }),

    util.merge({
      data.raw.generator["steam-engine"],
      {
        name = "bob-steam-engine-5",
        icon = "__base__/graphics/icons/steam-engine.png",
        localised_description = { "entity-description.steam-engine" },
        icon_size = 64,
        minable = { mining_time = 1, result = "bob-steam-engine-5" },
        max_health = 800,
        maximum_temperature = 765,
      },
    }),
  })

  data.raw.generator["steam-engine"].next_upgrade = "bob-steam-engine-2"
end
