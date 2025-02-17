if settings.startup["bobmods-power-fluidgenerator"].value == true then
  function bobmods.power.fluid_generator_structure()
    return {
      layers = {
        { --bodge layer
          filename = "__bobpower__/graphics/fluid-generator/fluid-generator-fan-spin.png",
          priority = "extra-high",
          width = 1,
          height = 1,
          frame_count = 120,
        },
        {
          filename = "__bobpower__/graphics/fluid-generator/fluid-generator.png",
          priority = "extra-high",
          width = 264,
          height = 284,
          frame_count = 1,
          repeat_count = 120,
          shift = util.by_pixel(0, 5.25),
          scale = 0.5,
        },
        {
          filename = "__bobpower__/graphics/fluid-generator/fluid-generator-fan.png",
          priority = "extra-high",
          width = 78,
          height = 70,
          frame_count = 1,
          repeat_count = 120,
          shift = util.by_pixel(1, -13.5),
          scale = 0.5,
        },
        {
          filename = "__bobpower__/graphics/fluid-generator/fluid-generator-fan-spin.png",
          priority = "extra-high",
          width = 60,
          height = 46,
          frame_count = 8,
          repeat_count = 15,
          shift = util.by_pixel(0, -26),
          scale = 0.5,
        },
        {
          filename = "__bobpower__/graphics/fluid-generator/fluid-generator-shadow.png",
          priority = "extra-high",
          width = 311,
          height = 194,
          frame_count = 1,
          repeat_count = 120,
          draw_as_shadow = true,
          shift = util.by_pixel(20, 0),
          scale = 0.5,
        },
      },
    }
  end

  data:extend({
    {
      type = "generator",
      name = "bob-fluid-generator",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-fluid-generator" },
      max_health = 500,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      effectivity = 0.75,
      fluid_usage_per_tick = 1,
      maximum_temperature = 165,
      burns_fluid = true,
      scale_fluid_usage = true,
      max_power_output = "1.8MW",
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
      fast_replaceable_group = "bob-fluid-generator",
      next_upgrade = "bob-fluid-generator-2",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fluid_box = {
        volume = 200,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "input-output", position = { 0, 1 }, direction = defines.direction.south },
          { flow_direction = "input-output", position = { 0, -1 }, direction = defines.direction.north },
          { flow_direction = "input-output", position = { 1, 0 }, direction = defines.direction.east },
          { flow_direction = "input-output", position = { -1, 0 }, direction = defines.direction.west },
        },
        production_type = "input-output",
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
        emissions_per_minute = { pollution = 20 },
      },
      horizontal_animation = bobmods.power.fluid_generator_structure(),
      vertical_animation = bobmods.power.fluid_generator_structure(),
      smoke = {
        {
          name = "smoke",
          position = util.by_pixel(38.5, -16),
          north_position = util.by_pixel(38.5, -16),
          east_position = util.by_pixel(38.5, -16),
          frequency = 1 / 6, --0.205,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60,
        },
        {
          name = "smoke",
          position = util.by_pixel(-38, -63.5),
          north_position = util.by_pixel(-38, -63.5),
          east_position = util.by_pixel(-38, -63.5),
          frequency = 1 / 4, --0.195,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60,
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
    },

    {
      type = "generator",
      name = "bob-fluid-generator-2",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-fluid-generator-2" },
      max_health = 650,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      effectivity = 0.8,
      fluid_usage_per_tick = 1.5,
      maximum_temperature = 165,
      burns_fluid = true,
      scale_fluid_usage = true,
      max_power_output = "2.7MW",
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
      fast_replaceable_group = "bob-fluid-generator",
      next_upgrade = "bob-fluid-generator-3",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fluid_box = {
        volume = 200,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "input-output", position = { 0, 1 }, direction = defines.direction.south },
          { flow_direction = "input-output", position = { 0, -1 }, direction = defines.direction.north },
          { flow_direction = "input-output", position = { 1, 0 }, direction = defines.direction.east },
          { flow_direction = "input-output", position = { -1, 0 }, direction = defines.direction.west },
        },
        production_type = "input-output",
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
        emissions_per_minute = { pollution = 15 },
      },
      horizontal_animation = bobmods.power.fluid_generator_structure(),
      vertical_animation = bobmods.power.fluid_generator_structure(),
      smoke = {
        {
          name = "smoke",
          position = util.by_pixel(38.5, -16),
          north_position = util.by_pixel(38.5, -16),
          east_position = util.by_pixel(38.5, -16),
          frequency = 1 / 3, --0.305,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60,
        },
        {
          name = "smoke",
          position = util.by_pixel(-38, -63.5),
          north_position = util.by_pixel(-38, -63.5),
          east_position = util.by_pixel(-38, -63.5),
          frequency = 1 / 4, --0.295,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60,
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
    },

    {
      type = "generator",
      name = "bob-fluid-generator-3",
      icon = "__bobpower__/graphics/icons/fluid-generator.png",
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 1, result = "bob-fluid-generator-3" },
      max_health = 800,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      effectivity = 0.85,
      fluid_usage_per_tick = 2,
      maximum_temperature = 165,
      burns_fluid = true,
      scale_fluid_usage = true,
      max_power_output = "3.6MW",
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
      fast_replaceable_group = "bob-fluid-generator",
      collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
      selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
      fluid_box = {
        volume = 200,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { flow_direction = "input-output", position = { 0, 1 }, direction = defines.direction.south },
          { flow_direction = "input-output", position = { 0, -1 }, direction = defines.direction.north },
          { flow_direction = "input-output", position = { 1, 0 }, direction = defines.direction.east },
          { flow_direction = "input-output", position = { -1, 0 }, direction = defines.direction.west },
        },
        production_type = "input-output",
      },
      energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
        emissions_per_minute = { pollution = 10 },
      },
      horizontal_animation = bobmods.power.fluid_generator_structure(),
      vertical_animation = bobmods.power.fluid_generator_structure(),
      smoke = {
        {
          name = "smoke",
          position = util.by_pixel(38.5, -16),
          north_position = util.by_pixel(38.5, -16),
          east_position = util.by_pixel(38.5, -16),
          frequency = 1 / 3, --0.405,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60,
        },
        {
          name = "smoke",
          position = util.by_pixel(-38, -63.5),
          north_position = util.by_pixel(-38, -63.5),
          east_position = util.by_pixel(-38, -63.5),
          frequency = 1 / 2, --0.395,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60,
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
    },
  })

  if
    mods["bobrevamp"]
    and data.raw.fluid["bob-hydrogen"]
    and data.raw.fluid["bob-oxygen"]
    and data.raw.fluid["bob-nitrogen"]
  then
    data:extend({
      {
        type = "generator",
        name = "bob-hydrazine-generator",
        icon = "__bobpower__/graphics/icons/fluid-generator.png",
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 1, result = "bob-hydrazine-generator" },
        max_health = 950,
        corpse = "big-remnants",
        dying_explosion = "medium-explosion",
        effectivity = 1.103,
        fluid_usage_per_tick = (12 / 60),
        maximum_temperature = 165,
        burns_fluid = true,
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
        fast_replaceable_group = "bob-fluid-generator",
        collision_box = { { -1.35, -1.35 }, { 1.35, 1.35 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        fluid_box = {
          volume = 200,
          pipe_covers = pipecoverspictures(),
          pipe_connections = {
            { flow_direction = "input-output", position = { 0, 1 }, direction = defines.direction.south },
            { flow_direction = "input-output", position = { 0, -1 }, direction = defines.direction.north },
            { flow_direction = "input-output", position = { 1, 0 }, direction = defines.direction.east },
            { flow_direction = "input-output", position = { -1, 0 }, direction = defines.direction.west },
          },
          production_type = "input-output",
          filter = "bob-hydrazine",
        },
        energy_source = {
          type = "electric",
          usage_priority = "secondary-output",
          emissions_per_minute = { pollution = 1 },
        },
        horizontal_animation = bobmods.power.fluid_generator_structure(),
        vertical_animation = bobmods.power.fluid_generator_structure(),
        smoke = {
          {
            name = "light-smoke",
            position = util.by_pixel(38.5, -16),
            north_position = util.by_pixel(38.5, -16),
            east_position = util.by_pixel(38.5, -16),
            frequency = 1 / 10, --0.105,
            starting_vertical_speed = 0,
            starting_frame_deviation = 60,
          },
          {
            name = "light-smoke",
            position = util.by_pixel(-38, -63.5),
            north_position = util.by_pixel(-38, -63.5),
            east_position = util.by_pixel(-38, -63.5),
            frequency = 1 / 12, --0.095,
            starting_vertical_speed = 0,
            starting_frame_deviation = 60,
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
      },
    })
  end
end
