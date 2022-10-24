--[[
B1: E = 0.5, T =  165, P =  1800kW
B2: E = 0.6, T =  315, P =  3600kW
B3: E = 0.7, T =  465, P =  5400kW
B4: E = 0.8, T =  615, P =  7200kW
B5: E = 0.9, T =  765, P =  9000kW
]]
--

if settings.startup["bobmods-power-steam"].value == true then
  data.raw.boiler.boiler.fast_replaceable_group = "boiler"

  data:extend({
    util.merge({
      data.raw.boiler.boiler,
      {
        name = "boiler-2",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        minable = { mining_time = 0.5, result = "boiler-2" },
        next_upgrade = "boiler-3",
        max_health = 250,
        target_temperature = 315,
        energy_consumption = "3.6MW",
        energy_source = {
          emissions_per_minute = 30,
        },
      },
    }),

    util.merge({
      data.raw.boiler.boiler,
      {
        name = "boiler-3",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        minable = { mining_time = 0.5, result = "boiler-3" },
        next_upgrade = "boiler-4",
        max_health = 300,
        target_temperature = 465,
        energy_consumption = "5.4MW",
        energy_source = {
          emissions_per_minute = 22.5,
        },
      },
    }),

    util.merge({
      data.raw.boiler.boiler,
      {
        name = "boiler-4",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        minable = { mining_time = 0.5, result = "boiler-4" },
        next_upgrade = "boiler-5",
        max_health = 350,
        target_temperature = 615,
        energy_consumption = "7.2MW",
        energy_source = {
          emissions_per_minute = 15,
        },
      },
    }),

    util.merge({
      data.raw.boiler.boiler,
      {
        name = "boiler-5",
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        minable = { mining_time = 0.5, result = "boiler-5" },
        max_health = 400,
        target_temperature = 765,
        energy_consumption = "9MW",
        energy_source = {
          emissions_per_minute = 9.375,
        },
      },
    }),
  })

  data.raw.boiler.boiler.next_upgrade = "boiler-2" -- After as not to be part of the inherit
end
