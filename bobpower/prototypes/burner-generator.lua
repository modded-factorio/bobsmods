if settings.startup["bobmods-power-burnergenerator"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-burner-generator",
      icon = "__bobpower__/graphics/icons/burner-generator.png",
      icon_size = 64,
      subgroup = "bob-energy-fluid-generator",
      order = "burner-generator",
      place_result = "bob-burner-generator",
      stack_size = 10,
    },

    {
      type = "recipe",
      name = "bob-burner-generator",
      ingredients = {
        { "stone-furnace", 1 },
        { "iron-plate", 8 },
        { "iron-gear-wheel", 5 },
      },
      results = {{ type = "item", name = "bob-burner-generator", amount = 1 }},
    },

    {
      type = "burner-generator",
      name = "bob-burner-generator",
      icon = "__bobpower__/graphics/icons/burner-generator.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-burner-generator" },
      max_health = 200,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      max_power_output = "400kW",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
        {
          type = "impact",
          percent = 30,
        },
      },
      fast_replaceable_group = "burner-generator",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
      },
      burner = {
        fuel_category = "chemical",
        effectivity = 0.75,
        fuel_inventory_size = 1,
        emissions_per_minute = 15,
        smoke = {
          {
            name = "smoke",
            position = util.by_pixel(0, -50),
            frequency = 15,
            starting_vertical_speed = 0.0,
            starting_frame_deviation = 60,
          },
        },
      },
      idle_animation = {
        filename = "__bobpower__/graphics/burner-generator/burner-generator.png",
        priority = "extra-high",
        width = 180,
        height = 190,
        frame_count = 1,
        repeat_count = 12,
        shift = util.by_pixel(40, 12),
      },
      animation = {
        layers = {
          {
            filename = "__bobpower__/graphics/burner-generator/burner-generator.png",
            priority = "extra-high",
            width = 180,
            height = 190,
            frame_count = 1,
            repeat_count = 12,
            shift = util.by_pixel(40, 12),
          },
          {
            filename = "__bobpower__/graphics/burner-generator/burner-generator-fire.png",
            priority = "high",
            width = 36,
            height = 19,
            frame_count = 12,
            direction_count = 1,
            shift = util.by_pixel(2, 37.5),
          },
        },
      },
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound = {
        sound = {
          filename = "__base__/sound/steam-engine-90bpm.ogg",
          volume = 0.6,
        },
        match_speed_to_activity = true,
      },
      min_perceived_performance = 0.25,
      performance_to_sound_speedup = 0.5,
    },
  })
end
