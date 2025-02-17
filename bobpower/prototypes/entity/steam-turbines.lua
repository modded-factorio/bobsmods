-- water = 100(max_temperature) - 15(default_temperature) = 85. 85 * 1kJ(heat_capacity) per degree = 85kJ. 85kJ * 60(ticks) = 5100kJ
-- generator = 5100kJ * 1(effectivity ) * 0.1(fluid_usage_per_tick) = 510kJ
-- a standard boiler is capable of heating 0.075 of flow from 15 degrees to 100.

-- Power = 0.2kW(water power per degree) * Temperature - 15(start) * fluid per tick * 60

--[[
ST1: 0.2kW * 60 * 1.0 * ( 465 -15) =  5400kW
ST2: 0.2kW * 60 * 1.0 * ( 615 -15) =  7200kW
ST3: 0.2kW * 60 * 1.0 * ( 765 -15) =  9000kW
]]
--
data.raw.generator["steam-turbine"].energy_source.usage_priority = "primary-output"

if settings.startup["bobmods-power-steam"].value == true then
  data.raw.generator["steam-turbine"].max_health = 750
  data.raw.generator["steam-turbine"].maximum_temperature = 465

  data:extend({
    util.merge({
      data.raw.generator["steam-turbine"],
      {
        name = "bob-steam-turbine-2",
        icon = "__base__/graphics/icons/steam-turbine.png",
        localised_description = { "entity-description.steam-turbine" },
        icon_size = 64,
        minable = { mining_time = 1, result = "bob-steam-turbine-2" },
        max_health = 1000,
        maximum_temperature = 615,
        next_upgrade = "bob-steam-turbine-3",
      },
    }),

    util.merge({
      data.raw.generator["steam-turbine"],
      {
        name = "bob-steam-turbine-3",
        icon = "__base__/graphics/icons/steam-turbine.png",
        localised_description = { "entity-description.steam-turbine" },
        icon_size = 64,
        minable = { mining_time = 1, result = "bob-steam-turbine-3" },
        max_health = 1250,
        maximum_temperature = 765,
      },
    }),
  })

  data.raw.generator["steam-turbine"].next_upgrade = "bob-steam-turbine-2"
end
