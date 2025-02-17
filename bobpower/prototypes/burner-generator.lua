if settings.startup["bobmods-power-burnergenerator"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-burner-generator",
      icon = "__bobpower__/graphics/icons/burner-generator.png",
      icon_size = 64,
      subgroup = "bob-energy-fluid-generator",
      order = "bob-burner-generator",
      place_result = "bob-burner-generator",
      stack_size = 10,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
        volume = 0.8,
      },
    },

    {
      type = "recipe",
      name = "bob-burner-generator",
      ingredients = {
        { type = "item", name = "stone-furnace", amount = 1 },
        { type = "item", name = "iron-plate", amount = 8 },
        { type = "item", name = "iron-gear-wheel", amount = 5 },
      },
      results = { { type = "item", name = "bob-burner-generator", amount = 1 } },
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
      drawing_box_vertical_extension = 0.8,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
      },
      burner = {
        type = "burner",
        fuel_categories = { "chemical" },
        effectivity = 0.75,
        fuel_inventory_size = 1,
        emissions_per_minute = { pollution = 15 },
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
            shift = util.by_pixel(2, 37.5),
          },
        },
      },
      impact_category = "metal-large",
      working_sound = {
        sound = {
          filename = "__base__/sound/steam-engine-90bpm.ogg",
          volume = 0.6,
        },
        match_speed_to_activity = true,
      },
      perceived_performance = {
        minimum = 0.25,
        performance_to_activity_rate = 2,
      },
    },
  })
end
