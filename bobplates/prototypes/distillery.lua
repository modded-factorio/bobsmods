function bobmods.plates.distillery_animation(tint)
  return {
    north = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 0,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 0,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-n.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    east = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 128,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 128,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-e.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    south = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 256,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 256,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-s.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    west = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 384,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 384,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-w.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
  }
end

function bobmods.plates.distillery_working_visualisations(speed)
  return {
    {
      north_position = { 0, 0 },
      west_position = { 0, 0 },
      south_position = { 0, 0 },
      east_position = { 0, 0 },
      north_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-n.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
      east_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-e.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
      south_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-s.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
      west_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-w.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
    },
  }
end

function bobmods.plates.distillery_animation_flipped(tint)
  return {
    north = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 256,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 256,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-s.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    east = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 384,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 384,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-w.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    south = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 0,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 0,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-n.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    west = {
      layers = {
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery.png",
          x = 128,
          width = 128,
          height = 192,
          frame_count = 1,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-mask.png",
          x = 128,
          width = 128,
          height = 192,
          frame_count = 1,
          tint = tint,
          shift = util.by_pixel(0, 0),
          scale = 0.5,
        },
        {
          filename = "__bobplates__/graphics/entity/distillery/distillery-shadow-e.png",
          width = 200,
          height = 140,
          frame_count = 1,
          shift = util.by_pixel(14, -3),
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
  }
end

function bobmods.plates.distillery_working_visualisations_flipped(speed)
  return {
    {
      north_position = { 0, 0 },
      west_position = { 0, 0 },
      south_position = { 0, 0 },
      east_position = { 0, 0 },
      north_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-s.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
      east_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-w.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
      south_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-n.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
      west_animation = {
        filename = "__bobplates__/graphics/entity/distillery/distillery-anim-e.png",
        width = 128,
        height = 192,
        frame_count = 25,
        line_length = 5,
        shift = util.by_pixel(0, 0),
        animation_speed = speed * 0.5,
        scale = 0.5,
      },
    },
  }
end

circuit_connector_definitions["bob-distillery"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 0, main_offset = util.by_pixel(21, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-24, 15), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
    { variation = 0, main_offset = util.by_pixel(-11, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    {
      variation = 6,
      main_offset = util.by_pixel(-24, -17.5),
      shadow_offset = util.by_pixel(0, 0),
      show_shadow = false,
    },
  })
circuit_connector_definitions["bob-distillery-flipped"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 0, main_offset = util.by_pixel(-11, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    {
      variation = 6,
      main_offset = util.by_pixel(-24, -17.5),
      shadow_offset = util.by_pixel(0, 0),
      show_shadow = false,
    },
    { variation = 0, main_offset = util.by_pixel(21, 14), shadow_offset = util.by_pixel(9, 9), show_shadow = false },
    { variation = 6, main_offset = util.by_pixel(-24, 15), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
  })

if settings.startup["bobmods-plates-purewater"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-distillery",
      icon = "__bobplates__/graphics/icons/distillery.png",
      subgroup = "production-machine",
      order = "e[distillery]",
      place_result = "bob-distillery",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/fluid-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/fluid-inventory-pickup.ogg",
        volume = 0.5,
      },
      weight = 10000,
    },

    {
      type = "recipe",
      name = "bob-distillery",
      energy_required = 3,
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 3 },
        { type = "item", name = "copper-plate", amount = 3 },
        { type = "item", name = "pipe", amount = 2 },
      },
      results = { { type = "item", name = "bob-distillery", amount = 1 } },
    },

    {
      type = "furnace",
      name = "bob-distillery",
      icon = "__bobplates__/graphics/icons/distillery.png",
      flags = { "placeable-neutral", "placeable-player", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-distillery" },
      max_health = 200,
      circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
      circuit_connector = circuit_connector_definitions["bob-distillery"],
      circuit_connector_flipped = circuit_connector_definitions["bob-distillery-flipped"],
      corpse = "medium-remnants",
      collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
      selection_box = { { -0.9, -0.9 }, { 0.9, 0.9 } },
      crafting_categories = { "bob-distillery" },
      crafting_speed = 1,
      source_inventory_size = 0,
      result_inventory_size = 0,
      energy_usage = "120kW",
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = { pollution = 0.2 },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            { flow_direction = "input", direction = defines.direction.south, position = { 0.5, 0.5 } },
          },
          volume = 1000,
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            { flow_direction = "output", direction = defines.direction.north, position = { 0.5, -0.5 } },
          },
          volume = 1000,
        },
      },
      graphics_set = {
        animation = bobmods.plates.distillery_animation({ r = 0.7, g = 0.7, b = 0.1 }),
        working_visualisations = bobmods.plates.distillery_working_visualisations(1),
      },
      graphics_set_flipped = {
        animation = bobmods.plates.distillery_animation_flipped({ r = 0.7, g = 0.7, b = 0.1 }),
        working_visualisations = bobmods.plates.distillery_working_visualisations_flipped(1),
      },
      allowed_effects = { "consumption", "speed", "pollution" },
      module_slots = 1,
      icons_positioning = {
        {
          inventory_index = defines.inventory.assembling_machine_modules,
          shift = { 0, 0.5 },
          scale = 0.4,
          multi_row_initial_height_modifier = -0.3,
        },
      },
      icon_draw_specification = {
        scale = 0.66,
        shift = { 0, -0.25 },
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/boiler.ogg",
          volume = 0.8,
        },
        max_sounds_per_prototype = 3,
      },
      impact_category = "metal",
      fast_replaceable_group = "bob-distillery",
    },
  })
end
