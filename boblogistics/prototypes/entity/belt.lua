require("prototypes.transport-belt-pictures")

function bobmods.logistics.belt_speed(level)
  return level * settings.startup["bobmods-logistics-beltspeedperlevel"].value / 480
end

function bobmods.logistics.belt_distance(level)
  return ((level - 1) * settings.startup["bobmods-logistics-beltperlevel"].value)
    + settings.startup["bobmods-logistics-beltstarting"].value
end

function bobmods.logistics.set_belt_speed(type, belt, level)
  if data.raw[type][belt] then
    data.raw[type][belt].speed = bobmods.logistics.belt_speed(level)
  end
end

function bobmods.logistics.set_belt_distance(belt, level)
  if data.raw["underground-belt"][belt] then
    data.raw["underground-belt"][belt].max_distance = bobmods.logistics.belt_distance(level)
  end
end

data.raw["transport-belt"]["transport-belt"].flags = { "placeable-neutral", "player-creation"}
data.raw["transport-belt"]["fast-transport-belt"].flags = { "placeable-neutral", "player-creation"}
data.raw["transport-belt"]["express-transport-belt"].flags = { "placeable-neutral", "player-creation"}

data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "turbo-transport-belt"
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "turbo-underground-belt"
data.raw["splitter"]["express-splitter"].next_upgrade = "turbo-splitter"

if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data:extend({
    {
      type = "transport-belt",
      name = "basic-transport-belt",
      icon = "__boblogistics__/graphics/icons/black-transport-belt.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation"},
      minable = { mining_time = 0.1, result = "basic-transport-belt" },
      max_health = 140,
      corpse = "small-remnants",
      resistances = {
        {
          type = "fire",
          percent = 50,
        },
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      working_sound = {
        sound = {
          filename = "__base__/sound/express-transport-belt.ogg",
          volume = 0.4,
        },
        persistent = true,
      },
      animation_speed_coefficient = 32,
      belt_animation_set = bobmods.logistics.black_belt_animation_set,
      fast_replaceable_group = "transport-belt",
      related_underground_belt = "basic-underground-belt",
      next_upgrade = "transport-belt",
      speed = 0.5 / 32,
      connector_frame_sprites = transport_belt_connector_frame_sprites,
      circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
      circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
      circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
    },

    {
      type = "underground-belt",
      name = "basic-underground-belt",
      icon = "__boblogistics__/graphics/icons/black-underground-belt.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "basic-underground-belt" },
      max_health = 140,
      corpse = "small-remnants",
      underground_sprite = {
        filename = "__core__/graphics/arrows/underground-lines.png",
        priority = "high",
        width = 64,
        height = 64,
        x = 64,
        scale = 0.5,
      },
      underground_remove_belts_sprite = {
        filename = "__core__/graphics/arrows/underground-lines-remove.png",
        priority = "high",
        width = 64,
        height = 64,
        x = 64,
        scale = 0.5,
      },
      resistances = {
        {
          type = "fire",
          percent = 60,
        },
        {
          type = "impact",
          percent = 30,
        },
      },
      collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      animation_speed_coefficient = 32,
      belt_animation_set = bobmods.logistics.black_belt_animation_set,
      fast_replaceable_group = "transport-belt",
      next_upgrade = "underground-belt",
      speed = 0.5 / 32,
      max_distance = 3,
      structure = {
        direction_in = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96,
            hr_version = {
              filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192,
              scale = 0.5,
            },
          },
        },
        direction_out = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version = {
              filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5,
            },
          },
        },
        direction_in_side_loading = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96 * 3,
            hr_version = {
              filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 3,
              scale = 0.5,
            },
          },
        },
        direction_out_side_loading = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            y = 96 * 2,
            hr_version = {
              filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-underground-belt-structure.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              y = 192 * 2,
              scale = 0.5,
            },
          },
        },
        back_patch = {
          sheet = {
            filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version = {
              filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5,
            },
          },
        },
        front_patch = {
          sheet = {
            filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 96,
            height = 96,
            hr_version = {
              filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
              priority = "extra-high",
              width = 192,
              height = 192,
              scale = 0.5,
            },
          },
        },
      },
    },

    {
      type = "splitter",
      name = "basic-splitter",
      icon = "__boblogistics__/graphics/icons/black-splitter.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "basic-splitter" },
      max_health = 160,
      corpse = "medium-remnants",
      resistances = {
        {
          type = "fire",
          percent = 60,
        },
      },
      collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
      selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
      animation_speed_coefficient = 32,
      structure_animation_speed_coefficient = 0.7,
      structure_animation_movement_cooldown = 10,
      belt_animation_set = bobmods.logistics.black_belt_animation_set,
      fast_replaceable_group = "transport-belt",
      next_upgrade = "splitter",
      speed = 0.5 / 32,
      structure = {
        north = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 80,
          height = 35,
          shift = util.by_pixel(6, 0),
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-splitter-north.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 160,
            height = 70,
            shift = util.by_pixel(7, 0),
            scale = 0.5,
          },
        },
        east = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 45,
          height = 80,
          shift = util.by_pixel(4, -6),
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-splitter-east.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 160,
            shift = util.by_pixel(4, -6),
            scale = 0.5,
          },
        },
        south = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 82,
          height = 32,
          shift = util.by_pixel(4, 0),
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-splitter-south.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 164,
            height = 64,
            shift = util.by_pixel(4, 0),
            scale = 0.5,
          },
        },
        west = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 45,
          height = 75,
          shift = util.by_pixel(6, -4),
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-black-splitter-west.png",
            frame_count = 32,
            line_length = 8,
            priority = "extra-high",
            width = 90,
            height = 150,
            shift = util.by_pixel(6, -4),
            scale = 0.5,
          },
        },
      },
    },
  })
end

data:extend({
  {
    type = "transport-belt",
    name = "turbo-transport-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation"},
    minable = { mining_time = 0.1, result = "turbo-transport-belt" },
    max_health = 180,
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 50,
      },
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound = {
      sound = {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4,
      },
      persistent = true,
    },
    animation_speed_coefficient = 32,
    belt_animation_set = bobmods.logistics.purple_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    related_underground_belt = "turbo-underground-belt",
    next_upgrade = "ultimate-transport-belt",
    speed = 0.125,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
  },

  {
    type = "underground-belt",
    name = "turbo-underground-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "turbo-underground-belt" },
    max_health = 180,
    corpse = "small-remnants",
    underground_sprite = {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5,
    },
    underground_remove_belts_sprite = {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5,
    },
    resistances = {
      {
        type = "fire",
        percent = 60,
      },
      {
        type = "impact",
        percent = 30,
      },
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    animation_speed_coefficient = 32,
    belt_animation_set = bobmods.logistics.purple_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "ultimate-underground-belt",
    speed = 0.125,
    max_distance = 20,
    structure = {
      direction_in = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5,
          },
        },
      },
      direction_out = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
      direction_in_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96 * 3,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192 * 3,
            scale = 0.5,
          },
        },
      },
      direction_out_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96 * 2,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192 * 2,
            scale = 0.5,
          },
        },
      },
      back_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version = {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
      front_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version = {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
    },
  },

  {
    type = "splitter",
    name = "turbo-splitter",
    icon = "__boblogistics__/graphics/icons/purple-splitter.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "turbo-splitter" },
    max_health = 200,
    corpse = "medium-remnants",
    resistances = {
      {
        type = "fire",
        percent = 60,
      },
    },
    collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
    selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = bobmods.logistics.purple_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    next_upgrade = "ultimate-splitter",
    speed = 0.125,
    structure = {
      north = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 80,
        height = 35,
        shift = util.by_pixel(6, 0),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5,
        },
      },
      east = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 45,
        height = 80,
        shift = util.by_pixel(4, -6),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 160,
          shift = util.by_pixel(4, -6),
          scale = 0.5,
        },
      },
      south = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5,
        },
      },
      west = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 45,
        height = 75,
        shift = util.by_pixel(6, -4),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-purple-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 150,
          shift = util.by_pixel(6, -4),
          scale = 0.5,
        },
      },
    },
  },
})

data:extend({
  {
    type = "transport-belt",
    name = "ultimate-transport-belt",
    icon = "__boblogistics__/graphics/icons/green-transport-belt.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation"},
    minable = { mining_time = 0.1, result = "ultimate-transport-belt" },
    max_health = 190,
    corpse = "small-remnants",
    resistances = {
      {
        type = "fire",
        percent = 50,
      },
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound = {
      sound = {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4,
      },
      max_sounds_per_type = 3,
    },
    animation_speed_coefficient = 32,
    belt_animation_set = bobmods.logistics.green_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    related_underground_belt = "ultimate-underground-belt",
    speed = 0.15625,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
  },

  {
    type = "underground-belt",
    name = "ultimate-underground-belt",
    icon = "__boblogistics__/graphics/icons/green-transport-belt-to-ground.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "ultimate-underground-belt" },
    max_health = 190,
    corpse = "small-remnants",
    underground_sprite = {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5,
    },
    underground_remove_belts_sprite = {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5,
    },
    resistances = {
      {
        type = "fire",
        percent = 60,
      },
      {
        type = "impact",
        percent = 30,
      },
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    animation_speed_coefficient = 32,
    belt_animation_set = bobmods.logistics.green_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.15625,
    max_distance = 25,
    structure = {
      direction_in = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5,
          },
        },
      },
      direction_out = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
      direction_in_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96 * 3,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192 * 3,
            scale = 0.5,
          },
        },
      },
      direction_out_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          y = 96 * 2,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192 * 2,
            scale = 0.5,
          },
        },
      },
      back_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version = {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
      front_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 96,
          height = 96,
          hr_version = {
            filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
    },
  },

  {
    type = "splitter",
    name = "ultimate-splitter",
    icon = "__boblogistics__/graphics/icons/green-splitter.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "ultimate-splitter" },
    max_health = 210,
    corpse = "medium-remnants",
    resistances = {
      {
        type = "fire",
        percent = 60,
      },
    },
    collision_box = { { -0.9, -0.4 }, { 0.9, 0.4 } },
    selection_box = { { -0.9, -0.5 }, { 0.9, 0.5 } },
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_animation_set = bobmods.logistics.green_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    speed = 0.15625,
    structure = {
      north = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 80,
        height = 35,
        shift = util.by_pixel(6, 0),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5,
        },
      },
      east = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 45,
        height = 80,
        shift = util.by_pixel(4, -6),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 160,
          shift = util.by_pixel(4, -6),
          scale = 0.5,
        },
      },
      south = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 82,
        height = 32,
        shift = util.by_pixel(4, 0),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5,
        },
      },
      west = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-west.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 45,
        height = 75,
        shift = util.by_pixel(6, -4),
        hr_version = {
          filename = "__boblogistics__/graphics/entity/transport-belt/hr-green-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 150,
          shift = util.by_pixel(6, -4),
          scale = 0.5,
        },
      },
    },
  },
})

if settings.startup["bobmods-logistics-beltoverhaulspeed"].value == true then
  if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
    bobmods.logistics.set_belt_speed("splitter", "basic-splitter", 1)
    bobmods.logistics.set_belt_speed("transport-belt", "basic-transport-belt", 1)
    bobmods.logistics.set_belt_speed("underground-belt", "basic-underground-belt", 1)

    bobmods.logistics.set_belt_speed("splitter", "splitter", 2)
    bobmods.logistics.set_belt_speed("transport-belt", "transport-belt", 2)
    bobmods.logistics.set_belt_speed("underground-belt", "underground-belt", 2)

    bobmods.logistics.set_belt_speed("splitter", "fast-splitter", 3)
    bobmods.logistics.set_belt_speed("transport-belt", "fast-transport-belt", 3)
    bobmods.logistics.set_belt_speed("underground-belt", "fast-underground-belt", 3)

    bobmods.logistics.set_belt_speed("splitter", "express-splitter", 4)
    bobmods.logistics.set_belt_speed("transport-belt", "express-transport-belt", 4)
    bobmods.logistics.set_belt_speed("underground-belt", "express-underground-belt", 4)

    bobmods.logistics.set_belt_speed("splitter", "turbo-splitter", 5)
    bobmods.logistics.set_belt_speed("transport-belt", "turbo-transport-belt", 5)
    bobmods.logistics.set_belt_speed("underground-belt", "turbo-underground-belt", 5)

    bobmods.logistics.set_belt_speed("splitter", "ultimate-splitter", 6)
    bobmods.logistics.set_belt_speed("transport-belt", "ultimate-transport-belt", 6)
    bobmods.logistics.set_belt_speed("underground-belt", "ultimate-underground-belt", 6)
  else
    bobmods.logistics.set_belt_speed("splitter", "splitter", 1)
    bobmods.logistics.set_belt_speed("transport-belt", "transport-belt", 1)
    bobmods.logistics.set_belt_speed("underground-belt", "underground-belt", 1)

    bobmods.logistics.set_belt_speed("splitter", "fast-splitter", 2)
    bobmods.logistics.set_belt_speed("transport-belt", "fast-transport-belt", 2)
    bobmods.logistics.set_belt_speed("underground-belt", "fast-underground-belt", 2)

    bobmods.logistics.set_belt_speed("splitter", "express-splitter", 3)
    bobmods.logistics.set_belt_speed("transport-belt", "express-transport-belt", 3)
    bobmods.logistics.set_belt_speed("underground-belt", "express-underground-belt", 3)

    bobmods.logistics.set_belt_speed("splitter", "turbo-splitter", 4)
    bobmods.logistics.set_belt_speed("transport-belt", "turbo-transport-belt", 4)
    bobmods.logistics.set_belt_speed("underground-belt", "turbo-underground-belt", 4)

    bobmods.logistics.set_belt_speed("splitter", "ultimate-splitter", 5)
    bobmods.logistics.set_belt_speed("transport-belt", "ultimate-transport-belt", 5)
    bobmods.logistics.set_belt_speed("underground-belt", "ultimate-underground-belt", 5)
  end
end

if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
  if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
    bobmods.logistics.set_belt_distance("basic-underground-belt", 1)
    bobmods.logistics.set_belt_distance("underground-belt", 2)
    bobmods.logistics.set_belt_distance("fast-underground-belt", 3)
    bobmods.logistics.set_belt_distance("express-underground-belt", 4)
    bobmods.logistics.set_belt_distance("turbo-underground-belt", 5)
    bobmods.logistics.set_belt_distance("ultimate-underground-belt", 6)
  else
    bobmods.logistics.set_belt_distance("underground-belt", 1)
    bobmods.logistics.set_belt_distance("fast-underground-belt", 2)
    bobmods.logistics.set_belt_distance("express-underground-belt", 3)
    bobmods.logistics.set_belt_distance("turbo-underground-belt", 4)
    bobmods.logistics.set_belt_distance("ultimate-underground-belt", 5)
  end
else
  data.raw["underground-belt"]["underground-belt"].max_distance = 5
  data.raw["underground-belt"]["fast-underground-belt"].max_distance = 10
  data.raw["underground-belt"]["express-underground-belt"].max_distance = 15
end
