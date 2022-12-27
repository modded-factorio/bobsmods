if
  settings.startup["bobmods-assembly-multipurposefurnaces"].value
  and data.raw["item-subgroup"]["bob-smelting-machine"]
  and data.raw["recipe-category"]["chemical-furnace"]
  and data.raw["recipe-category"]["mixing-furnace"]
  and (data.raw.technology["alloy-processing-2"] or data.raw.technology["electric-mixing-furnace"])
  and data.raw.technology["electric-chemical-furnace"]
then
  local function bob_electric_multipurpose_furnace_working_visualisations()
    return {
      {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = { 0.015625, 0.890625 },
          hr_version = {
            filename = "__bobassembly__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
            priority = "high",
            width = 60,
            height = 56,
            frame_count = 12,
            animation_speed = 0.5,
            shift = util.by_pixel(1.75, 32.75),
            scale = 0.5,
          },
        },
        light = { intensity = 0.4, size = 6, shift = { 0.0, 1.0 }, color = { r = 1.0, g = 1.0, b = 1.0 } },
      },
      {
        animation = {
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = { -0.671875, -0.640625 },
          hr_version = {
            filename = "__bobassembly__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5, -18.5),
            scale = 0.5,
          },
        },
      },
    }
  end

  data:extend({
    {
      type = "item",
      name = "electric-chemical-mixing-furnace",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace.png",
      icon_size = 32,
      subgroup = "bob-smelting-machine",
      order = "d[electric-chemical-mixing-furnace-1]",
      place_result = "electric-chemical-mixing-furnace",
      stack_size = 50,
    },
    {
      type = "item",
      name = "electric-chemical-mixing-furnace-2",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace-2.png",
      icon_size = 32,
      subgroup = "bob-smelting-machine",
      order = "d[electric-chemical-mixing-furnace-2]",
      place_result = "electric-chemical-mixing-furnace-2",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "electric-chemical-mixing-furnace",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "electric-chemical-furnace", 1 },
        { "steel-plate", 10 },
        { "stone-brick", 10 },
        { "processing-unit", 5 },
        { "pipe", 5 },
      },
      result = "electric-chemical-mixing-furnace",
    },

    {
      type = "recipe",
      name = "electric-chemical-mixing-furnace-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "electric-chemical-mixing-furnace", 1 },
        { "steel-plate", 10 },
        { "stone-brick", 10 },
        { "processing-unit", 5 },
        { "pipe", 5 },
      },
      result = "electric-chemical-mixing-furnace-2",
    },

    {
      type = "assembling-machine",
      name = "electric-chemical-mixing-furnace",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "electric-chemical-mixing-furnace" },
      max_health = 450,
      corpse = "big-remnants",
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {
            { type = "input", position = { 0, -2 } },
            --          { type="input", position = {0, 2} },
          },
        },
        off_when_no_fluid_recipe = true,
      },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },

      module_specification = {
        module_slots = 4,
        module_info_icon_shift = { 0, 0.5 },
        module_info_multi_row_initial_height_modifier = -0.3,
      },
      crafting_speed = 3,
      crafting_categories = { "smelting", "mixing-furnace", "chemical-furnace" },
      energy_usage = "250kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/electric-furnace.ogg",
          volume = 0.7,
        },
        apparent_volume = 1.5,
      },
      animation = {
        filename = "__bobassembly__/graphics/entity/electric-furnace/electric-chemical-mixing-furnace.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = { 0.46875, 0 },
      },
      working_visualisations = bob_electric_multipurpose_furnace_working_visualisations(),
      fast_replaceable_group = "furnace",
      next_upgrade = "electric-chemical-mixing-furnace-2",
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "assembling-machine",
      name = "electric-chemical-mixing-furnace-2",
      icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace-2.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 1, result = "electric-chemical-mixing-furnace-2" },
      max_health = 550,
      corpse = "big-remnants",
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {
            { type = "input", position = { 0, -2 } },
            --          { type="input", position = {0, 2} },
          },
        },
        off_when_no_fluid_recipe = true,
      },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },

      module_specification = {
        module_slots = 6,
        module_info_icon_shift = { 0, 0.5 },
        module_info_multi_row_initial_height_modifier = -0.3,
      },
      crafting_speed = 4,
      crafting_categories = { "smelting", "mixing-furnace", "chemical-furnace" },
      energy_usage = "300kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 1,
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/electric-furnace.ogg",
          volume = 0.7,
        },
        apparent_volume = 1.5,
      },
      animation = {
        filename = "__bobassembly__/graphics/entity/electric-furnace/electric-chemical-mixing-furnace-2.png",
        priority = "high",
        width = 129,
        height = 100,
        frame_count = 1,
        shift = { 0.46875, 0 },
      },
      working_visualisations = bob_electric_multipurpose_furnace_working_visualisations(),
      fast_replaceable_group = "furnace",
      allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    },

    {
      type = "technology",
      name = "multi-purpose-furnace-1",
      icon_size = 128,
      --    icon = "__bobassembly__/graphics/icons/technology/multi-purpose-furnace.png",
      icons = {
        {
          icon_size = 256,
          icon_mipmaps = 4,
          scale = 0.25,
          icon = "__base__/graphics/technology/advanced-material-processing.png",
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
          icon_size = 64,
          scale = 0.5,
          shift = { -16, -16 },
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
          icon_size = 128,
          scale = 0.25,
          shift = { 16, -16 },
        },
      },
      order = "c-c-b-1",
      prerequisites = {
        "advanced-electronics-2",
        "production-science-pack",
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
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-chemical-mixing-furnace",
        },
      },
    },

    {
      type = "technology",
      name = "multi-purpose-furnace-2",
      icon_size = 128,
      --    icon = "__bobassembly__/graphics/icons/technology/multi-purpose-furnace.png",
      icons = {
        {
          icon_size = 256,
          icon_mipmaps = 4,
          icon = "__base__/graphics/technology/advanced-material-processing.png",
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/chemistry.png",
          icon_size = 64,
          scale = 2,
          shift = { -64, -64 },
        },
        {
          icon = "__bobassembly__/graphics/icons/technology/alloy-processing.png",
          icon_size = 128,
          shift = { 64, -64 },
        },
      },
      order = "c-c-b-2",
      prerequisites = {
        "multi-purpose-furnace-1",
        "utility-science-pack",
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
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-chemical-mixing-furnace-2",
        },
      },
    },
  })
  if data.raw.technology["electric-chemical-furnace"] then
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "electric-chemical-furnace")
  end
  if data.raw.technology["electric-mixing-furnace"] then
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "electric-mixing-furnace")
  elseif data.raw.technology["alloy-processing-2"] then
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "alloy-processing-2")
  end
end
