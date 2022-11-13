if settings.startup["bobmods-power-steam"].value == true then
  data:extend({
    util.merge({
      data.raw.boiler.boiler,
      {
        name = "oil-boiler",
        icon = "__bobpower__/graphics/icons/oil-boiler.png",
        icon_size = 32,
        icon_mipmaps = 1,
        minable = { mining_time = 0.5, result = "oil-boiler" },
        max_health = 300,
        target_temperature = 315,
        energy_consumption = "5.4MW",
        next_upgrade = "oil-boiler-2",
      },
    }),
  })

  data.raw.boiler["oil-boiler"].energy_source = {
    type = "fluid",
    emissions_per_minute = 22.5,
    fluid_box = {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections = {
        { type = "input", position = { 0, 1.5 } },
      },
      pipe_covers = pipecoverspictures(),
      pipe_picture = assembler2pipepictures(),
      production_type = "input",
    },
    burns_fluid = true,
    scale_fluid_usage = true,
    smoke = {
      {
        name = "smoke",
        north_position = util.by_pixel(-38, -47.5),
        south_position = util.by_pixel(38.5, -32),
        east_position = util.by_pixel(20, -70),
        west_position = util.by_pixel(-19, -8.5),
        frequency = 15,
        starting_vertical_speed = 0.0,
        starting_frame_deviation = 60,
      },
    },
  }

  data:extend({
    util.merge({
      data.raw.boiler["oil-boiler"],
      {
        name = "oil-boiler-2",
        icon = "__bobpower__/graphics/icons/oil-boiler.png",
        icon_size = 32,
        minable = { mining_time = 0.5, result = "oil-boiler-2" },
        max_health = 375,
        target_temperature = 465,
        energy_consumption = "8.1MW",
        next_upgrade = "oil-boiler-3",
        energy_source = {
          emissions_per_minute = 16.875,
        },
      },
    }),

    util.merge({
      data.raw.boiler["oil-boiler"],
      {
        name = "oil-boiler-3",
        icon = "__bobpower__/graphics/icons/oil-boiler.png",
        icon_size = 32,
        minable = { mining_time = 0.5, result = "oil-boiler-3" },
        max_health = 450,
        target_temperature = 615,
        energy_consumption = "10.8MW",
        next_upgrade = "oil-boiler-4",
        energy_source = {
          emissions_per_minute = 11.25,
        },
      },
    }),

    util.merge({
      data.raw.boiler["oil-boiler"],
      {
        name = "oil-boiler-4",
        icon = "__bobpower__/graphics/icons/oil-boiler.png",
        icon_size = 32,
        minable = { mining_time = 0.5, result = "oil-boiler-4" },
        max_health = 525,
        target_temperature = 765,
        energy_consumption = "13.5MW",
        energy_source = {
          emissions_per_minute = 7.03125,
        },
      },
    }),
  })

  data.raw.boiler["oil-boiler-4"].next_upgrade = nil -- a copy of oil boiler, which has upgrade set to 2 already. (would still need to be cleared even without this because oil boiler is a copy of boiler, which upgrades to boiler 2)
end
