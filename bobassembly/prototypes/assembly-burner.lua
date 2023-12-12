if not mods["aai-industry"] and settings.startup["bobmods-assembly-burner"].value == true then
  data:extend({
    {
      type = "item",
      name = "burner-assembling-machine",
      icon = "__bobassembly__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "1[burner-assembling-machine]",
      place_result = "burner-assembling-machine",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "burner-assembling-machine",
      enabled = false,
      ingredients = {
        { "iron-gear-wheel", 5 },
        { "iron-plate", 9 },
      },
      result = "burner-assembling-machine",
    },

    {
      type = "assembling-machine",
      name = "burner-assembling-machine",
      icon = "__bobassembly__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.2, result = "burner-assembling-machine" },
      max_health = 200,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -1, -1 }, { 1, 1 } },
      fast_replaceable_group = "assembling-machine",
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2 * 2 / 3),
              scale = 1 / 3,
            },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84 * 2 / 3, -0.09 * 2 / 3 },
            scale = 2 / 3,
            tint = { r = 0.2, g = 0.2, b = 0.2 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3),
              scale = 1 / 3,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = { "crafting", "basic-crafting", "advanced-crafting" },
      crafting_speed = 0.25,
      energy_source = {
        type = "burner",
        fuel_category = "chemical",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 4,
        smoke = {
          {
            name = "smoke",
            deviation = { 0.1, 0.1 },
            frequency = 4,
            position = { 0.0, -0.5 },
            starting_vertical_speed = 0.08,
            starting_frame_deviation = 60,
          },
        },
      },
      energy_usage = "60kW",
      allowed_effects = {},
    },

    {
      type = "item",
      name = "steam-assembling-machine",
      icon = "__bobassembly__/graphics/icons/steam-assembling-machine.png",
      icon_size = 32,
      subgroup = "bob-assembly-machine",
      order = "1[steam-assembling-machine]",
      place_result = "steam-assembling-machine",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "steam-assembling-machine",
      enabled = false,
      ingredients = {
        { "iron-gear-wheel", 10 },
        { "iron-plate", 10 },
        { "pipe", 5 },
      },
      result = "steam-assembling-machine",
    },

    {
      type = "assembling-machine",
      name = "steam-assembling-machine",
      icon = "__bobassembly__/graphics/icons/steam-assembling-machine.png",
      icon_size = 32,
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.2, result = "steam-assembling-machine" },
      max_health = 300,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70,
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = { { type = "input", position = { 0, -2 } } },
          secondary_draw_orders = { north = -1 },
        },
        {
          production_type = "output",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = { { type = "output", position = { 0, 2 } } },
          secondary_draw_orders = { north = -1 },
        },
        off_when_no_fluid_recipe = true,
      },
      collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fast_replaceable_group = "assembling-machine",
      animation = {
        layers = {
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2),
              scale = 0.5,
            },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84, -0.09 },
            tint = { r = 1, g = 1, b = 1 },
          },
          {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5.5),
            hr_version = {
              filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5, 5),
              scale = 0.5,
            },
          },
        },
      },
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8,
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8,
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_categories = { "basic-crafting", "crafting", "advanced-crafting", "crafting-with-fluid" },
      crafting_speed = 2,
      energy_source = {
        type = "fluid",
        effectivity = 1,
        emissions_per_minute = 5, --fairly sure this scales, so it would be 1 at level 1 speed.
        fluid_box = {
          base_area = 1,
          height = 2,
          base_level = -1,
          pipe_connections = {
            { type = "input-output", position = { 2, 0 } },
            { type = "input-output", position = { -2, 0 } },
          },
          pipe_covers = pipecoverspictures(),
          pipe_picture = assembler2pipepictures(),
          production_type = "input-output",
          filter = "steam",
        },
        burns_fluid = false,
        scale_fluid_usage = false,
        fluid_usage_per_tick = (2 / 60),
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
      },
      energy_usage = "300kW",
      allowed_effects = {},
    },

    {
      type = "technology",
      name = "basic-automation",
      icon = "__base__/graphics/technology/automation-1.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "burner-assembling-machine",
        },
        {
          type = "unlock-recipe",
          recipe = "steam-assembling-machine",
        },
      },
      unit = {
        count = 5,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 5,
      },
      ignore_tech_cost_multiplier = true,
      order = "a-b-0",
    },
  })

  bobmods.lib.tech.add_prerequisite("automation", "basic-automation")
  bobmods.lib.tech.ignore_tech_cost_multiplier("automation", false)

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["burner-assembling-machine"].ingredient_count = 2
    data.raw["assembling-machine"]["steam-assembling-machine"].ingredient_count = 4
  end
end
