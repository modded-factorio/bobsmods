if
  settings.startup["bobmods-assembly-electrolysers"].value
  and data.raw.technology["electrolysis-1"]
  and data.raw.item["electrolyser"]
  and data.raw["recipe-category"]["electrolysis"]
then
  data:extend({
    {
      type = "item-subgroup",
      name = "bob-electrolyser-machine",
      group = "production",
      order = "e-d",
    },
  })

  data.raw.item["electrolyser"].subgroup = "bob-electrolyser-machine"

  local function bob_electrolyser_fluid_boxes()
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
      --[[
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        {type = "input", position = {-1, -2}},
        {type = "input", position = {1, -2}},

        {type = "input", position = {-2, -1}},
        {type = "input", position = {2, -1}}
      }
    },
]]
      --
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

  local function bob_electrolyser_animation_facing(directory, tier, tint, facing)
    return {
      layers = {
        -- Base
        {
          filename = directory .. "/electrolyser-" .. tier .. "-base.png",
          x = 136 * facing,
          width = 136,
          height = 130,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          hr_version = {
            filename = directory .. "/hr-electrolyser-" .. tier .. "-base.png",
            x = 272 * facing,
            width = 272,
            height = 260,
            frame_count = 1,
            shift = util.by_pixel(17, 0),
            scale = 0.5,
          },
        },
        -- Mask
        {
          filename = directory .. "/electrolyser-" .. tier .. "-mask.png",
          x = 136 * facing,
          width = 136,
          height = 130,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          tint = tint,
          hr_version = {
            filename = directory .. "/hr-electrolyser-" .. tier .. "-mask.png",
            x = 272 * facing,
            width = 272,
            height = 260,
            frame_count = 1,
            shift = util.by_pixel(17, 0),
            tint = tint,
            scale = 0.5,
          },
        },
        -- Highlights
        {
          filename = directory .. "/electrolyser-" .. tier .. "-highlights.png",
          x = 136 * facing,
          width = 136,
          height = 130,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          blend_mode = "additive",
          hr_version = {
            filename = directory .. "/hr-electrolyser-" .. tier .. "-highlights.png",
            x = 272 * facing,
            width = 272,
            height = 260,
            frame_count = 1,
            shift = util.by_pixel(17, 0),
            blend_mode = "additive",
            scale = 0.5,
          },
        },
        -- Shadow
        {
          filename = directory .. "/electrolyser-" .. tier .. "-shadow.png",
          x = 136 * facing,
          width = 136,
          height = 130,
          frame_count = 1,
          shift = util.by_pixel(17, 0),
          draw_as_shadow = true,
          hr_version = {
            filename = directory .. "/hr-electrolyser-" .. tier .. "-shadow.png",
            x = 272 * facing,
            width = 272,
            height = 260,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(17, 0),
            scale = 0.5,
          },
        },
      },
    }
  end

  local function bob_electrolyser_animation(directory, tier, tint)
    return {
      north = bob_electrolyser_animation_facing(directory, tier, tint, 0),
      east = bob_electrolyser_animation_facing(directory, tier, tint, 1),
      south = bob_electrolyser_animation_facing(directory, tier, tint, 2),
      west = bob_electrolyser_animation_facing(directory, tier, tint, 3),
    }
  end

  data:extend({
    {
      type = "item",
      name = "electrolyser-2",
      icon = "__bobassembly__/graphics/icons/electrolyser-2.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[electrolyser-2]",
      place_result = "electrolyser-2",
      stack_size = 50,
    },
    {
      type = "item",
      name = "electrolyser-3",
      icon = "__bobassembly__/graphics/icons/electrolyser-3.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[electrolyser-3]",
      place_result = "electrolyser-3",
      stack_size = 50,
    },
    {
      type = "item",
      name = "electrolyser-4",
      icon = "__bobassembly__/graphics/icons/electrolyser-4.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[electrolyser-4]",
      place_result = "electrolyser-4",
      stack_size = 50,
    },

    {
      type = "item",
      name = "electrolyser-5",
      icon = "__bobassembly__/graphics/icons/electrolyser-5.png",
      icon_size = 32,
      subgroup = "bob-electrolyser-machine",
      order = "e[electrolyser-5]",
      place_result = "electrolyser-5",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "electrolyser-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "electrolyser", 1 },
        { "plastic-bar", 10 },
        { "steel-plate", 10 },
        { "electronic-circuit", 5 },
        { "pipe", 5 },
      },
      result = "electrolyser-2",
    },

    {
      type = "recipe",
      name = "electrolyser-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "electrolyser-2", 1 },
        { "plastic-bar", 10 },
        { "steel-plate", 10 },
        { "iron-plate", 10 },
        { "advanced-circuit", 10 },
        { "pipe", 5 },
      },
      result = "electrolyser-3",
    },

    {
      type = "recipe",
      name = "electrolyser-4",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "electrolyser-3", 1 },
        { "plastic-bar", 10 },
        { "steel-plate", 10 },
        { "iron-plate", 10 },
        { "processing-unit", 10 },
        { "pipe", 5 },
      },
      result = "electrolyser-4",
    },

    {
      type = "recipe",
      name = "electrolyser-5",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "electrolyser-4", 1 },
        { "plastic-bar", 10 },
        { "steel-plate", 10 },
        { "iron-plate", 10 },
        { "processing-unit", 10 },
        { "pipe", 5 },
      },
      result = "electrolyser-5",
    },

    {
      type = "assembling-machine",
      name = "electrolyser-2",
      icon = "__bobassembly__/graphics/icons/electrolyser-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electrolyser-2" },
      fast_replaceable_group = "electrolyser",
      next_upgrade = "electrolyser-3",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 275,
      crafting_categories = { "electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 3,
      },
      crafting_speed = 1.25,
      energy_usage = "650kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 3.25,
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      animation = bob_electrolyser_animation(
        "__bobassembly__/graphics/entity/electrolyser",
        2,
        { r = 0.5, g = 0.1, b = 0 }
      ),
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "assembling-machine",
      name = "electrolyser-3",
      icon = "__bobassembly__/graphics/icons/electrolyser-3.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electrolyser-3" },
      fast_replaceable_group = "electrolyser",
      next_upgrade = "electrolyser-4",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 375,
      crafting_categories = { "electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 4,
      },
      crafting_speed = 2,
      energy_usage = "960kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 2.5,
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      animation = bob_electrolyser_animation(
        "__bobassembly__/graphics/entity/electrolyser",
        3,
        { r = 0, g = 0.3, b = 0.5 }
      ),
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "assembling-machine",
      name = "electrolyser-4",
      icon = "__bobassembly__/graphics/icons/electrolyser-4.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electrolyser-4" },
      fast_replaceable_group = "electrolyser",
      next_upgrade = "electrolyser-5",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 500,
      crafting_categories = { "electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 5,
      },
      crafting_speed = 2.75,
      energy_usage = "1210kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1.75,
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      animation = bob_electrolyser_animation(
        "__bobassembly__/graphics/entity/electrolyser",
        4,
        { r = 0.5, g = 0, b = 0.5 }
      ),
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "assembling-machine",
      name = "electrolyser-5",
      icon = "__bobassembly__/graphics/icons/electrolyser-5.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.5, result = "electrolyser-5" },
      fast_replaceable_group = "electrolyser",
      corpse = "big-remnants",
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      max_health = 600,
      crafting_categories = { "electrolysis" },
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
      module_specification = {
        module_slots = 6,
      },
      crafting_speed = 3.5,
      energy_usage = "1400kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
      },
      fluid_boxes = bob_electrolyser_fluid_boxes(),
      animation = bob_electrolyser_animation(
        "__bobassembly__/graphics/entity/electrolyser",
        5,
        { r = 0, g = 0.5, b = 0 }
      ),
      working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    },

    {
      type = "technology",
      name = "electrolyser-2",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "electrolysis-1",
        "steel-processing",
        "electronics",
        "logistic-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electrolyser-2",
        },
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a2",
    },

    {
      type = "technology",
      name = "electrolyser-3",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "electrolyser-2",
        "chemical-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electrolyser-3",
        },
      },
      unit = {
        count = 75,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a3",
    },

    {
      type = "technology",
      name = "electrolyser-4",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "electrolyser-3",
        "advanced-electronics-2",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electrolyser-4",
        },
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
      order = "d-e-a4",
    },

    {
      type = "technology",
      name = "electrolyser-5",
      icon = "__bobassembly__/graphics/icons/technology/electrolyser.png",
      icon_size = 128,
      prerequisites = {
        "electrolyser-4",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electrolyser-5",
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
      order = "d-e-a4",
    },
  })
end
