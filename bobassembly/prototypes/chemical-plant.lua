if settings.startup["bobmods-assembly-chemicalplants"].value == true then
  data:extend({
    {
      type = "item-subgroup",
      name = "bob-chemical-machine",
      group = "production",
      order = "e-c",
    },
  })

  data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
  data.raw["assembling-machine"]["chemical-plant"].order = "e[chemical-plant-1]"
  data.raw["assembling-machine"]["chemical-plant"].energy_usage = "160kW"

  data.raw.item["chemical-plant"].stack_size = 50
  data.raw.item["chemical-plant"].subgroup = "bob-chemical-machine"
  data.raw.item["chemical-plant"].order = "e[chemical-plant-1]"

  function bob_chemical_plant_old_facing(tint, x)
    return {
      layers = {
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/chemical-plant.png",
          width = 122,
          x = x * 122,
          height = 134,
          frame_count = 1,
          shift = util.by_pixel(-5, -4.5),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-chemical-plant.png",
            x = x * 244,
            width = 244,
            height = 268,
            frame_count = 1,
            shift = util.by_pixel(-5, -4.5),
            scale = 0.5,
          },
        },

        {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/chemical-plant-mask.png",
          x = x * 156,
          width = 156,
          height = 141,
          frame_count = 1,
          tint = tint,
          shift = { 0.5, -0.078125 },
        },

        {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/chemical-plant-shadow.png",
          x = x * 175,
          width = 175,
          height = 110,
          frame_count = 1,
          shift = util.by_pixel(31.5, 11),
          draw_as_shadow = true,
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-chemical-plant-shadow.png",
            x = x * 350,
            width = 350,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(31.5, 10.75),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    }
  end

  function bob_chemical_plant_old_animation(tint)
    return {
      north = bob_chemical_plant_old_facing(tint, 0),
      east = bob_chemical_plant_old_facing(tint, 1),
      south = bob_chemical_plant_old_facing(tint, 2),
      west = bob_chemical_plant_old_facing(tint, 3),
    }
  end

  function bob_chemical_plant_old_working_visualisations()
    return {
      {
        north_position = util.by_pixel(30, -24),
        east_position = util.by_pixel(-11, -1),
        south_position = util.by_pixel(-30, -48),
        west_position = util.by_pixel(1, -49.5),
        apply_recipe_tint = "primary",
        animation = {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/boiling-green-patch.png",
          frame_count = 32,
          width = 15,
          height = 10,
          animation_speed = 0.5,
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-boiling-green-patch.png",
            frame_count = 32,
            width = 30,
            height = 20,
            animation_speed = 0.5,
            scale = 0.5,
          },
        },
      },
      {
        north_position = util.by_pixel(30, -24),
        east_position = util.by_pixel(-11, -1),
        south_position = util.by_pixel(-30, -48),
        west_position = util.by_pixel(1, -49.5),
        apply_recipe_tint = "secondary",
        animation = {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/boiling-green-patch-mask.png",
          frame_count = 32,
          width = 15,
          height = 10,
          animation_speed = 0.5,
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-boiling-green-patch-mask.png",
            frame_count = 32,
            width = 30,
            height = 20,
            animation_speed = 0.5,
            scale = 0.5,
          },
        },
      },

      {
        apply_recipe_tint = "tertiary",
        north_position = { 0, 0 },
        west_position = { 0, 0 },
        south_position = { 0, 0 },
        east_position = { 0, 0 },
        north_animation = {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/boiling-window-green-patch.png",
          frame_count = 1,
          width = 87,
          height = 60,
          shift = util.by_pixel(0, -5),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-boiling-window-green-patch.png",
            x = 0,
            frame_count = 1,
            width = 174,
            height = 119,
            shift = util.by_pixel(0, -5.25),
            scale = 0.5,
          },
        },
        east_animation = {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/boiling-window-green-patch.png",
          x = 87,
          frame_count = 1,
          width = 87,
          height = 60,
          shift = util.by_pixel(0, -5),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-boiling-window-green-patch.png",
            x = 174,
            frame_count = 1,
            width = 174,
            height = 119,
            shift = util.by_pixel(0, -5.25),
            scale = 0.5,
          },
        },
        south_animation = {
          filename = "__bobassembly__/graphics/entity/chemical-plant-old/boiling-window-green-patch.png",
          x = 174,
          frame_count = 1,
          width = 87,
          height = 60,
          shift = util.by_pixel(0, -5),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant-old/hr-boiling-window-green-patch.png",
            x = 348,
            frame_count = 1,
            width = 174,
            height = 119,
            shift = util.by_pixel(0, -5.25),
            scale = 0.5,
          },
        },
      },
    }
  end

  function bob_chemical_plant_fluid_boxes()
    return {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { -1, -2 } } },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 1, -2 } } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = { { type = "output", position = { -1, 2 } } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = { { type = "output", position = { 1, 2 } } },
      },
    }
  end

  function bob_chemical_plant_facing(tint, offset)
    return {
      layers = {
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant.png",
          width = 108,
          height = 148,
          y = offset * 296,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(1, -9),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant/hr-chemical-plant.png",
            width = 220,
            height = 292,
            y = offset * 584,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(0.5, -9),
            scale = 0.5,
          },
        },
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant-mask.png",
          width = 108,
          height = 148,
          y = offset * 296,
          frame_count = 24,
          line_length = 12,
          tint = tint,
          shift = util.by_pixel(1, -9),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant/hr-chemical-plant-mask.png",
            width = 220,
            height = 292,
            y = offset * 584,
            frame_count = 24,
            line_length = 12,
            tint = tint,
            shift = util.by_pixel(0.5, -9),
            scale = 0.5,
          },
        },
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant-highlights.png",
          width = 108,
          height = 148,
          y = offset * 296,
          frame_count = 24,
          line_length = 12,
          blend_mode = "additive",
          shift = util.by_pixel(1, -9),
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant/hr-chemical-plant-highlights.png",
            width = 220,
            height = 292,
            y = offset * 584,
            frame_count = 24,
            line_length = 12,
            blend_mode = "additive",
            shift = util.by_pixel(0.5, -9),
            scale = 0.5,
          },
        },
        {
          filename = "__bobassembly__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
          width = 154,
          height = 112,
          x = offset * 154,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(28, 6),
          draw_as_shadow = true,
          hr_version = {
            filename = "__bobassembly__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
            width = 312,
            height = 222,
            x = offset * 312,
            repeat_count = 24,
            frame_count = 1,
            shift = util.by_pixel(27, 6),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    }
  end

  function bob_chemical_plant_animation(tint)
    return {
      north = bob_chemical_plant_facing(tint, 0),
      east = bob_chemical_plant_facing(tint, 1),
      south = bob_chemical_plant_facing(tint, 2),
      west = bob_chemical_plant_facing(tint, 3),
    }
  end

  data:extend({
    {
      type = "item",
      name = "chemical-plant-2",
      icon = "__bobassembly__/graphics/icons/chemical-plant-2.png",
      icon_size = 32,
      subgroup = "bob-chemical-machine",
      order = "e[chemical-plant-2]",
      place_result = "chemical-plant-2",
      stack_size = 50,
    },
    {
      type = "item",
      name = "chemical-plant-3",
      icon = "__bobassembly__/graphics/icons/chemical-plant-3.png",
      icon_size = 32,
      subgroup = "bob-chemical-machine",
      order = "e[chemical-plant-3]",
      place_result = "chemical-plant-3",
      stack_size = 50,
    },
    {
      type = "item",
      name = "chemical-plant-4",
      icon = "__bobassembly__/graphics/icons/chemical-plant-4.png",
      icon_size = 32,
      subgroup = "bob-chemical-machine",
      order = "e[chemical-plant-4]",
      place_result = "chemical-plant-4",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "chemical-plant-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "chemical-plant", 1 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 5 },
        { "advanced-circuit", 5 },
        { "pipe", 5 },
      },
      result = "chemical-plant-2",
    },

    {
      type = "recipe",
      name = "chemical-plant-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "chemical-plant-2", 1 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 5 },
        { "processing-unit", 10 },
        { "pipe", 5 },
      },
      result = "chemical-plant-3",
    },

    {
      type = "recipe",
      name = "chemical-plant-4",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "chemical-plant-3", 1 },
        { "steel-plate", 10 },
        { "iron-gear-wheel", 5 },
        { "processing-unit", 10 },
        { "pipe", 5 },
      },
      result = "chemical-plant-4",
    },

    {
      type = "assembling-machine",
      name = "chemical-plant-2",
      icon = "__bobassembly__/graphics/icons/chemical-plant-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "chemical-plant-2" },
      max_health = 350,
      corpse = "chemical-plant-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 4,
      },
      crafting_speed = 1.75,
      energy_usage = "260kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3,
      },
      crafting_categories = { "chemistry" },
      fluid_boxes = bob_chemical_plant_fluid_boxes(),
      animation = bob_chemical_plant_animation({ r = 0.5, g = 0.1, b = 0.7 }),
      working_visualisations = data.raw["assembling-machine"]["chemical-plant"].working_visualisations,
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      fast_replaceable_group = "chemical-plant",
      next_upgrade = "chemical-plant-3",
      water_reflection = data.raw["assembling-machine"]["chemical-plant"].water_reflection,
    },

    {
      type = "assembling-machine",
      name = "chemical-plant-3",
      icon = "__bobassembly__/graphics/icons/chemical-plant-3.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "chemical-plant-3" },
      max_health = 400,
      corpse = "chemical-plant-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 5,
      },
      crafting_speed = 2.75,
      energy_usage = "390kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2,
      },
      crafting_categories = { "chemistry" },
      fluid_boxes = bob_chemical_plant_fluid_boxes(),
      animation = bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 }),
      working_visualisations = data.raw["assembling-machine"]["chemical-plant"].working_visualisations,
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      fast_replaceable_group = "chemical-plant",
      next_upgrade = "chemical-plant-4",
      water_reflection = data.raw["assembling-machine"]["chemical-plant"].water_reflection,
    },

    {
      type = "assembling-machine",
      name = "chemical-plant-4",
      icon = "__bobassembly__/graphics/icons/chemical-plant-4.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "chemical-plant-4" },
      max_health = 500,
      corpse = "chemical-plant-remnants",
      dying_explosion = "medium-explosion",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 6,
      },
      crafting_speed = 3.5,
      energy_usage = "480kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
      },
      crafting_categories = { "chemistry" },
      fluid_boxes = bob_chemical_plant_fluid_boxes(),
      animation = bob_chemical_plant_animation({ r = 0.1, g = 0.7, b = 0.1 }),
      working_visualisations = data.raw["assembling-machine"]["chemical-plant"].working_visualisations,
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
      vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      fast_replaceable_group = "chemical-plant",
      water_reflection = data.raw["assembling-machine"]["chemical-plant"].water_reflection,
    },

    {
      type = "technology",
      name = "chemical-plant-2",
      icon = "__bobassembly__/graphics/icons/technology/chemical-plant-2.png",
      icon_size = 128,
      prerequisites = {
        "advanced-electronics",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "chemical-plant-2",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-a-c2",
    },

    {
      type = "technology",
      name = "chemical-plant-3",
      icon = "__bobassembly__/graphics/icons/technology/chemical-plant-3.png",
      icon_size = 128,
      prerequisites = {
        "chemical-plant-2",
        "advanced-electronics-2",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "chemical-plant-3",
        },
      },
      unit = {
        count = 75,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-a-c3",
    },

    {
      type = "technology",
      name = "chemical-plant-4",
      icon = "__bobassembly__/graphics/icons/technology/chemical-plant-4.png",
      icon_size = 128,
      prerequisites = {
        "chemical-plant-3",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "chemical-plant-4",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-a-c4",
    },
  })
end
