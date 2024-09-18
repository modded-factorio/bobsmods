if settings.startup["bobmods-mining-steamminingdrills"].value == true then
  data:extend({
    {
      type = "item",
      name = "steam-mining-drill",
      icon = "__base__/graphics/icons/burner-mining-drill.png",
      icon_size = 64,
      subgroup = "extraction-machine",
      order = "a[items]-a[steam-mining-drill]",
      place_result = "steam-mining-drill",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "steam-mining-drill",
      energy_required = 1,
      ingredients = {
        { type = "item", name = "burner-mining-drill", amount = 1 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "steam-mining-drill", amount = 1 } },
    },

    util.merge({
      data.raw["mining-drill"]["burner-mining-drill"],
      {
        name = "steam-mining-drill",
        icon = "__base__/graphics/icons/burner-mining-drill.png",
        icon_size = 64,
        minable = { mining_time = 0.3, result = "steam-mining-drill" },
        max_health = 200,
        energy_usage = "600kW",
        mining_speed = 2,
      },
    }),
  })

  data.raw["mining-drill"]["steam-mining-drill"].resource_searching_radius = 1.99
  data.raw["mining-drill"]["steam-mining-drill"].radius_visualisation_picture = {
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
    width = 10,
    height = 10,
  }
  data.raw["mining-drill"]["steam-mining-drill"].energy_source = {
    type = "fluid",
    effectivity = 1,
    emissions_per_minute = 25, --fairly sure this scales, so it would be 5 at level 1 speed.
    fluid_box = {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections = {
        { type = "input-output", position = { 1.5, 0.5 } },
        { type = "input-output", position = { -1.5, 0.5 } },
      },
      pipe_covers = pipecoverspictures(),
      pipe_picture = assembler2pipepictures(),
      production_type = "input-output",
      filter = "steam",
    },
    burns_fluid = false,
    scale_fluid_usage = false,
    fluid_usage_per_tick = (4 / 60),
    maximum_temperature = 765,
    smoke = {
      {
        name = "light-smoke",
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60,
      },
    },
  }

  --Change all the animation speeds from 0.5 to 4 (mining speed increases from 0.25 to 2)
  for i, direction in pairs(data.raw["mining-drill"]["steam-mining-drill"].animations) do
    for j, layer in pairs(direction.layers) do
      layer.animation_speed = 4
      layer.hr_version.animation_speed = 4
    end
  end
end
