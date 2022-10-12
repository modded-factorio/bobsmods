--[[
HE1: E = 1.0, T =  465, P = 10800kW
HE2: E = 1.0, T =  615, P = 14400kW
HE3: E = 1.0, T =  765, P = 18000kW
]] --

if settings.startup["bobmods-power-steam"].value == true then
  data.raw.boiler["heat-exchanger"].fast_replaceable_group = "boiler"

  data.raw.boiler["heat-exchanger"].max_health = 400
  data.raw.boiler["heat-exchanger"].target_temperature = 465
  data.raw.boiler["heat-exchanger"].energy_consumption = "10.8MW"
  data.raw.boiler["heat-exchanger"].energy_source.min_working_temperature = 465

  data:extend({util.merge{data.raw.boiler["heat-exchanger"], {
    name = "heat-exchanger-2",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_size = 64,
    icon_mipmaps = 4,
    minable = {
      mining_time = 0.5,
      result = "heat-exchanger-2"
    },
    max_health = 500,
    target_temperature = 615,
    energy_consumption = "14.4MW",
    next_upgrade = "heat-exchanger-3",
    energy_source = {
      max_temperature = 1250,
      min_working_temperature = 615
    }
  }}, util.merge{data.raw.boiler["heat-exchanger"], {
    name = "heat-exchanger-3",
    icon = "__base__/graphics/icons/heat-boiler.png",
    icon_size = 64,
    icon_mipmaps = 4,
    minable = {
      mining_time = 0.5,
      result = "heat-exchanger-3"
    },
    max_health = 600,
    target_temperature = 765,
    energy_consumption = "18MW",
    energy_source = {
      max_temperature = 1500,
      min_working_temperature = 765
    }
  }}})

  data.raw.boiler["heat-exchanger"].next_upgrade = "heat-exchanger-2" -- After as not to be part of the inherit
end