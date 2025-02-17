--[[
HE1: E = 1.0, T =  315, P =  7200kW
HE2: E = 1.0, T =  465, P = 10800kW
HE3: E = 1.0, T =  615, P = 14400kW
HE4: E = 1.0, T =  765, P = 18000kW
]]
--

if settings.startup["bobmods-power-steam"].value == true then
  data.raw.boiler["heat-exchanger"].fast_replaceable_group = "boiler"

  data.raw.boiler["heat-exchanger"].max_health = 400
  data.raw.boiler["heat-exchanger"].target_temperature = 315
  data.raw.boiler["heat-exchanger"].energy_consumption = "7.2MW"
  data.raw.boiler["heat-exchanger"].energy_source.min_working_temperature = 315

  data:extend({
    util.merge({
      data.raw.boiler["heat-exchanger"],
      {
        name = "bob-heat-exchanger-2",
        icon = "__base__/graphics/icons/heat-boiler.png",
        localised_description = { "entity-description.heat-exchanger" },
        minable = { mining_time = 0.5, result = "bob-heat-exchanger-2" },
        max_health = 500,
        target_temperature = 465,
        energy_consumption = "10.8MW",
        next_upgrade = "bob-heat-exchanger-3",
        energy_source = {
          max_temperature = 1000,
          min_working_temperature = 465,
          pipe_covers = {
            north = { filename = "__bobpower__/graphics/heat-pipe-2/heatex-endings.png" },
            east = { filename = "__bobpower__/graphics/heat-pipe-2/heatex-endings.png" },
            south = { filename = "__bobpower__/graphics/heat-pipe-2/heatex-endings.png" },
            west = { filename = "__bobpower__/graphics/heat-pipe-2/heatex-endings.png" },
          },
        },
      },
    }),
    util.merge({
      data.raw.boiler["heat-exchanger"],
      {
        name = "bob-heat-exchanger-3",
        icon = "__base__/graphics/icons/heat-boiler.png",
        localised_description = { "entity-description.heat-exchanger" },
        minable = { mining_time = 0.5, result = "bob-heat-exchanger-3" },
        max_health = 500,
        target_temperature = 615,
        energy_consumption = "14.4MW",
        next_upgrade = "bob-heat-exchanger-4",
        energy_source = {
          max_temperature = 1250,
          min_working_temperature = 615,
          pipe_covers = {
            north = { filename = "__bobpower__/graphics/heat-pipe-3/heatex-endings.png" },
            east = { filename = "__bobpower__/graphics/heat-pipe-3/heatex-endings.png" },
            south = { filename = "__bobpower__/graphics/heat-pipe-3/heatex-endings.png" },
            west = { filename = "__bobpower__/graphics/heat-pipe-3/heatex-endings.png" },
          },
        },
      },
    }),

    util.merge({
      data.raw.boiler["heat-exchanger"],
      {
        name = "bob-heat-exchanger-4",
        icon = "__base__/graphics/icons/heat-boiler.png",
        localised_description = { "entity-description.heat-exchanger" },
        minable = { mining_time = 0.5, result = "bob-heat-exchanger-4" },
        max_health = 600,
        target_temperature = 765,
        energy_consumption = "18MW",
        energy_source = {
          max_temperature = 1500,
          min_working_temperature = 765,
          pipe_covers = {
            north = { filename = "__bobpower__/graphics/heat-pipe-4/heatex-endings.png" },
            east = { filename = "__bobpower__/graphics/heat-pipe-4/heatex-endings.png" },
            south = { filename = "__bobpower__/graphics/heat-pipe-4/heatex-endings.png" },
            west = { filename = "__bobpower__/graphics/heat-pipe-4/heatex-endings.png" },
          },
        },
      },
    }),
  })

  data.raw.boiler["heat-exchanger"].next_upgrade = "bob-heat-exchanger-2" -- After as not to be part of the inherit

  table.insert(data.raw.boiler["bob-heat-exchanger-2"].pictures.north.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-2/heatex-north-pipe.png",
    width = 269,
    height = 221,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(-1.25, 5.25),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-2"].pictures.east.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-2/heatex-east-pipe.png",
    width = 211,
    height = 301,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(-1.75, 1.25),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-2"].pictures.south.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-2/heatex-south-pipe.png",
    width = 260,
    height = 201,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(4, 10.75),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-2"].pictures.west.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-2/heatex-west-pipe.png",
    width = 196,
    height = 273,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(1.5, 7.75),
  })

  table.insert(data.raw.boiler["bob-heat-exchanger-3"].pictures.north.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-3/heatex-north-pipe.png",
    width = 269,
    height = 221,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(-1.25, 5.25),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-3"].pictures.east.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-3/heatex-east-pipe.png",
    width = 211,
    height = 301,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(-1.75, 1.25),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-3"].pictures.south.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-3/heatex-south-pipe.png",
    width = 260,
    height = 201,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(4, 10.75),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-3"].pictures.west.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-3/heatex-west-pipe.png",
    width = 196,
    height = 273,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(1.5, 7.75),
  })

  table.insert(data.raw.boiler["bob-heat-exchanger-4"].pictures.north.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-4/heatex-north-pipe.png",
    width = 269,
    height = 221,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(-1.25, 5.25),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-4"].pictures.east.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-4/heatex-east-pipe.png",
    width = 211,
    height = 301,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(-1.75, 1.25),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-4"].pictures.south.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-4/heatex-south-pipe.png",
    width = 260,
    height = 201,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(4, 10.75),
  })
  table.insert(data.raw.boiler["bob-heat-exchanger-4"].pictures.west.structure.layers, 2, {
    filename = "__bobpower__/graphics/heat-pipe-4/heatex-west-pipe.png",
    width = 196,
    height = 273,
    priority = "extra-high",
    scale = 0.5,
    shift = util.by_pixel(1.5, 7.75),
  })
end
