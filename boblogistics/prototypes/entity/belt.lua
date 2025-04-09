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

data.raw["transport-belt"]["transport-belt"].flags = { "placeable-neutral", "player-creation" }
data.raw["transport-belt"]["fast-transport-belt"].flags = { "placeable-neutral", "player-creation" }
data.raw["transport-belt"]["express-transport-belt"].flags = { "placeable-neutral", "player-creation" }

data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "bob-turbo-transport-belt"
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "bob-turbo-underground-belt"
data.raw["splitter"]["express-splitter"].next_upgrade = "bob-turbo-splitter"

if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data:extend({
    {
      type = "transport-belt",
      name = "bob-basic-transport-belt",
      icon = "__boblogistics__/graphics/icons/black-transport-belt.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "bob-basic-transport-belt" },
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
      related_underground_belt = "bob-basic-underground-belt",
      next_upgrade = "transport-belt",
      speed = 0.5 / 32,
      connector_frame_sprites = transport_belt_connector_frame_sprites,
      circuit_connector = circuit_connector_definitions["belt"],
      circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
    },

    {
      type = "underground-belt",
      name = "bob-basic-underground-belt",
      icon = "__boblogistics__/graphics/icons/black-underground-belt.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "bob-basic-underground-belt" },
      max_health = 140,
      corpse = "small-remnants",
      factoriopedia_simulation = {
        init = [[
          game.simulation.camera_position = {0, 0.5}
          game.simulation.camera_zoom = 1.8
          game.surfaces[1].create_entities_from_blueprint_string
          {
            string = "0eNqVkNsKwyAMht8l165Qp4P6KmOMHkIJtFE8jJXSd5+2sJtdlF2Jif/3Ja7QTQmdJ45gVqDecgBzXyHQyO1UatzOCAa6NlB/STygH73N56XDKcImgHLtDabeHgKQI0XCg7FflienuUOfH4gTlgBnQ45bLt6CrLSABYysdPYM5LE/ukpAXFxBEbtUpvixyb9t6txmU9x1eVOKOBf49/sEvNCHPaBvslFNo7XSsrnW2/YBe0R3xg==",
            position = {0, 0}
          }
        ]],
      },
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
            width = 192,
            height = 192,
            y = 192,
            scale = 0.5,
          },
        },
        direction_out = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
        direction_in_side_loading = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192 * 3,
            scale = 0.5,
          },
        },
        direction_out_side_loading = {
          sheet = {
            filename = "__boblogistics__/graphics/entity/transport-belt/black-underground-belt-structure.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            y = 192 * 2,
            scale = 0.5,
          },
        },
        back_patch = {
          sheet = {
            filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
        front_patch = {
          sheet = {
            filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
            priority = "extra-high",
            width = 192,
            height = 192,
            scale = 0.5,
          },
        },
      },
    },

    {
      type = "splitter",
      name = "bob-basic-splitter",
      icon = "__boblogistics__/graphics/icons/black-splitter.png",
      icon_size = 32,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "bob-basic-splitter" },
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
          width = 160,
          height = 70,
          shift = util.by_pixel(7, 0),
          scale = 0.5,
        },
        east = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 90,
          height = 160,
          shift = util.by_pixel(4, -6),
          scale = 0.5,
        },
        south = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 64,
          shift = util.by_pixel(4, 0),
          scale = 0.5,
        },
        west = {
          filename = "__boblogistics__/graphics/entity/transport-belt/black-splitter-west.png",
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
  })
end

data:extend({
  {
    type = "transport-belt",
    name = "bob-turbo-transport-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-turbo-transport-belt" },
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
    related_underground_belt = "bob-turbo-underground-belt",
    next_upgrade = "bob-ultimate-transport-belt",
    speed = 0.125,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_connector = circuit_connector_definitions["belt"],
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
  },

  {
    type = "underground-belt",
    name = "bob-turbo-underground-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-turbo-underground-belt" },
    max_health = 180,
    corpse = "small-remnants",
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, 0.5}
        game.simulation.camera_zoom = 1.6
        game.surfaces[1].create_entities_from_blueprint_string
        {
          string = "0eNqVkMEKgzAMht8l5yrYWZl9lTGG1TACmkptx0T67mv1sMMOslPIn+T/kmxgxoCzI/agN6De8gL6tsFCT+7GrHE3IWjwwRlbBB7QPZ1NsTA4eogCKGlv0FW8C0D25AkPjz1ZHxwmgy41iBMvAbNd0rjlzE2WhSyVgBV0U6oEGshhf5RrAX6dsxfxHPIaPzj5N+56TrPB77h0KnmckvL9n4AXumUfUI1s67ZVqlayvVQxfgBNp3h+",
          position = {0, 0}
        }
      ]],
    },
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
    next_upgrade = "bob-ultimate-underground-belt",
    speed = 0.125,
    max_distance = 20,
    structure = {
      direction_in = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192,
          scale = 0.5,
        },
      },
      direction_out = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5,
        },
      },
      direction_in_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 3,
          scale = 0.5,
        },
      },
      direction_out_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 2,
          scale = 0.5,
        },
      },
      back_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5,
        },
      },
      front_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5,
        },
      },
    },
  },

  {
    type = "splitter",
    name = "bob-turbo-splitter",
    icon = "__boblogistics__/graphics/icons/purple-splitter.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-turbo-splitter" },
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
    next_upgrade = "bob-ultimate-splitter",
    speed = 0.125,
    structure = {
      north = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-north.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 160,
        height = 70,
        shift = util.by_pixel(7, 0),
        scale = 0.5,
      },
      east = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 160,
        shift = util.by_pixel(4, -6),
        scale = 0.5,
      },
      south = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 164,
        height = 64,
        shift = util.by_pixel(4, 0),
        scale = 0.5,
      },
      west = {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-west.png",
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
})

data:extend({
  {
    type = "transport-belt",
    name = "bob-ultimate-transport-belt",
    icon = "__boblogistics__/graphics/icons/green-transport-belt.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-ultimate-transport-belt" },
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
      max_sounds_per_prototype = 3,
    },
    animation_speed_coefficient = 32,
    belt_animation_set = bobmods.logistics.green_belt_animation_set,
    fast_replaceable_group = "transport-belt",
    related_underground_belt = "bob-ultimate-underground-belt",
    speed = 0.15625,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_connector = circuit_connector_definitions["belt"],
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance,
  },

  {
    type = "underground-belt",
    name = "bob-ultimate-underground-belt",
    icon = "__boblogistics__/graphics/icons/green-transport-belt-to-ground.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-ultimate-underground-belt" },
    max_health = 190,
    corpse = "small-remnants",
    factoriopedia_simulation = {
      init = [[
        game.simulation.camera_position = {0, 0.5}
        game.simulation.camera_zoom = 1.6
        game.surfaces[1].create_entities_from_blueprint_string
        {
          string = "0eNqdkM8KgzAMh98l5yro7Eb7KmMM/wQJaCo1HRPx3dfqYYcdhJ1Cf0m/r80KzRBw8sQCdgVqHc9g7yvM1HM9pIzrEcFCGITGWjAL3KHvvYs1a3AQ2BRQzN5gi+2hAFlICA/MflieHMYGfRxQ5zgFk5sjwXGyR2p2ybWCBewt19HVkcf2aFcKZJkSjngK6SU/xvIfozkXuiC7MX6YBMeYfBep4IV+3i/oa2kqY7SudGkuxbZ9AEGPfC0=",
          position = {0, 0}
        }
      ]],
    },
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
          width = 192,
          height = 192,
          y = 192,
          scale = 0.5,
        },
      },
      direction_out = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5,
        },
      },
      direction_in_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 3,
          scale = 0.5,
        },
      },
      direction_out_side_loading = {
        sheet = {
          filename = "__boblogistics__/graphics/entity/transport-belt/green-underground-belt-structure.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          y = 192 * 2,
          scale = 0.5,
        },
      },
      back_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-back-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5,
        },
      },
      front_patch = {
        sheet = {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure-front-patch.png",
          priority = "extra-high",
          width = 192,
          height = 192,
          scale = 0.5,
        },
      },
    },
  },

  {
    type = "splitter",
    name = "bob-ultimate-splitter",
    icon = "__boblogistics__/graphics/icons/green-splitter.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-ultimate-splitter" },
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
        width = 160,
        height = 70,
        shift = util.by_pixel(7, 0),
        scale = 0.5,
      },
      east = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-east.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 90,
        height = 160,
        shift = util.by_pixel(4, -6),
        scale = 0.5,
      },
      south = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-south.png",
        frame_count = 32,
        line_length = 8,
        priority = "extra-high",
        width = 164,
        height = 64,
        shift = util.by_pixel(4, 0),
        scale = 0.5,
      },
      west = {
        filename = "__boblogistics__/graphics/entity/transport-belt/green-splitter-west.png",
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
})

if settings.startup["bobmods-logistics-beltoverhaulspeed"].value == true then
  if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
    bobmods.logistics.set_belt_speed("splitter", "bob-basic-splitter", 1)
    bobmods.logistics.set_belt_speed("transport-belt", "bob-basic-transport-belt", 1)
    bobmods.logistics.set_belt_speed("underground-belt", "bob-basic-underground-belt", 1)

    bobmods.logistics.set_belt_speed("splitter", "splitter", 2)
    bobmods.logistics.set_belt_speed("transport-belt", "transport-belt", 2)
    bobmods.logistics.set_belt_speed("underground-belt", "underground-belt", 2)

    bobmods.logistics.set_belt_speed("splitter", "fast-splitter", 3)
    bobmods.logistics.set_belt_speed("transport-belt", "fast-transport-belt", 3)
    bobmods.logistics.set_belt_speed("underground-belt", "fast-underground-belt", 3)

    bobmods.logistics.set_belt_speed("splitter", "express-splitter", 4)
    bobmods.logistics.set_belt_speed("transport-belt", "express-transport-belt", 4)
    bobmods.logistics.set_belt_speed("underground-belt", "express-underground-belt", 4)

    bobmods.logistics.set_belt_speed("splitter", "bob-turbo-splitter", 5)
    bobmods.logistics.set_belt_speed("transport-belt", "bob-turbo-transport-belt", 5)
    bobmods.logistics.set_belt_speed("underground-belt", "bob-turbo-underground-belt", 5)

    bobmods.logistics.set_belt_speed("splitter", "bob-ultimate-splitter", 6)
    bobmods.logistics.set_belt_speed("transport-belt", "bob-ultimate-transport-belt", 6)
    bobmods.logistics.set_belt_speed("underground-belt", "bob-ultimate-underground-belt", 6)
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

    bobmods.logistics.set_belt_speed("splitter", "bob-turbo-splitter", 4)
    bobmods.logistics.set_belt_speed("transport-belt", "bob-turbo-transport-belt", 4)
    bobmods.logistics.set_belt_speed("underground-belt", "bob-turbo-underground-belt", 4)

    bobmods.logistics.set_belt_speed("splitter", "bob-ultimate-splitter", 5)
    bobmods.logistics.set_belt_speed("transport-belt", "bob-ultimate-transport-belt", 5)
    bobmods.logistics.set_belt_speed("underground-belt", "bob-ultimate-underground-belt", 5)
  end
end

if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
  if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
    bobmods.logistics.set_belt_distance("bob-basic-underground-belt", 1)
    bobmods.logistics.set_belt_distance("underground-belt", 2)
    bobmods.logistics.set_belt_distance("fast-underground-belt", 3)
    bobmods.logistics.set_belt_distance("express-underground-belt", 4)
    bobmods.logistics.set_belt_distance("bob-turbo-underground-belt", 5)
    bobmods.logistics.set_belt_distance("bob-ultimate-underground-belt", 6)
  else
    bobmods.logistics.set_belt_distance("underground-belt", 1)
    bobmods.logistics.set_belt_distance("fast-underground-belt", 2)
    bobmods.logistics.set_belt_distance("express-underground-belt", 3)
    bobmods.logistics.set_belt_distance("bob-turbo-underground-belt", 4)
    bobmods.logistics.set_belt_distance("bob-ultimate-underground-belt", 5)
  end
else
  data.raw["underground-belt"]["underground-belt"].max_distance = 5
  data.raw["underground-belt"]["fast-underground-belt"].max_distance = 10
  data.raw["underground-belt"]["express-underground-belt"].max_distance = 15
end
