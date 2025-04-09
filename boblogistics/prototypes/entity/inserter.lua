local inserter = {
  graphics = require("prototypes.entity.inserter-graphics"),
  stats = {
    yellow = {
      health = 125,
      rotation_speed = 0.02,
      extension_speed = 0.05,
      energy_per_movement = "5kJ",
      energy_per_rotation = "5kJ",
      drain = "0.4kW",
    },
    red = {
      health = 250,
      rotation_speed = 0.04,
      extension_speed = 0.1,
      energy_per_movement = "6.25kJ",
      energy_per_rotation = "6.25kJ",
      drain = "0.5kW",
      bulk = {
        energy_per_movement = "17.5kJ",
        energy_per_rotation = "17.5kJ",
        drain = "1kW",
      },
    },
    blue = {
      health = 375,
      rotation_speed = 0.06,
      extension_speed = 0.15,
      energy_per_movement = "7.5kJ",
      energy_per_rotation = "7.5kJ",
      drain = "0.6kW",
      bulk = {
        energy_per_movement = "20kJ",
        energy_per_rotation = "20kJ",
        drain = "1.2kW",
      },
    },
    purple = {
      health = 400,
      rotation_speed = 0.08,
      extension_speed = 0.2,
      energy_per_movement = "8.75kJ",
      energy_per_rotation = "8.75kJ",
      drain = "0.7kW",
      bulk = {
        energy_per_movement = "22.5kJ",
        energy_per_rotation = "22.5kJ",
        drain = "1.4kW",
      },
    },
    green = {
      health = 550,
      rotation_speed = 0.1,
      extension_speed = 0.25,
      energy_per_movement = "10kJ",
      energy_per_rotation = "10kJ",
      drain = "0.8kW",
      bulk = {
        energy_per_movement = "25kJ",
        energy_per_rotation = "25kJ",
        drain = "1.6kW",
      },
    },
  },
}

data:extend({
  util.merge({
    data.raw.inserter["inserter"],
    {
      name = "bob-steam-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/white-inserter.png",
      icon_size = 32,
      minable = { result = "bob-steam-inserter" },
      max_health = 100,
      extension_speed = 0.125,
      rotation_speed = 0.05,
      energy_per_movement = "10kJ",
      energy_per_rotation = "10kJ",
    },
  }),
})
data.raw.inserter["bob-steam-inserter"].hand_base_picture = inserter.graphics.white.hand_base_picture()
data.raw.inserter["bob-steam-inserter"].hand_closed_picture = inserter.graphics.white.hand_closed_picture()
data.raw.inserter["bob-steam-inserter"].hand_open_picture = inserter.graphics.white.hand_open_picture()
data.raw.inserter["bob-steam-inserter"].platform_picture = inserter.graphics.white.platform_picture()
data.raw.inserter["bob-steam-inserter"].energy_source = {
  type = "fluid",
  effectivity = 1,
  fluid_box = {
    volume = 200,
    pipe_connections = {
      { flow_direction = "input-output", position = { 0, 0 }, direction = defines.direction.east },
      { flow_direction = "input-output", position = { 0, 0 }, direction = defines.direction.west },
    },
    pipe_covers = pipecoverspictures(),
    pipe_picture = assembler3pipepictures(),
    production_type = "input-output",
    filter = "steam",
  },
  burns_fluid = false,
  scale_fluid_usage = false,
  fluid_usage_per_tick = (0.7 / 60),
  maximum_temperature = 765,
  smoke = {
    {
      name = "light-smoke",
      frequency = 10 / 32,
      starting_vertical_speed = 0.08,
      starting_frame_deviation = 60,
    },
  },
}

data:extend({
  util.merge({
    data.raw.inserter["fast-inserter"],
    {
      name = "bob-express-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/cyan-inserter.png",
      icon_size = 32,
      minable = { result = "bob-express-inserter" },
      max_health = 200,
      extension_speed = 0.25,
      rotation_speed = 0.1,
      energy_per_movement = "10kJ",
      energy_per_rotation = "10kJ",
      energy_source = { drain = "0.7kW" },
    },
  }),
})
data.raw.inserter["bob-express-inserter"].hand_base_picture = inserter.graphics.cyan.hand_base_picture()
data.raw.inserter["bob-express-inserter"].hand_closed_picture = inserter.graphics.cyan.hand_closed_picture()
data.raw.inserter["bob-express-inserter"].hand_open_picture = inserter.graphics.cyan.hand_open_picture()
data.raw.inserter["bob-express-inserter"].platform_picture = inserter.graphics.cyan.platform_picture()

data:extend({
  util.merge({
    data.raw.inserter["bulk-inserter"],
    {
      name = "bob-express-bulk-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/dark-green-inserter.png",
      icon_size = 32,
      minable = { result = "bob-express-bulk-inserter" },
      max_health = 200,
      extension_speed = 0.25,
      rotation_speed = 0.1,
      energy_per_movement = "25kJ",
      energy_per_rotation = "25kJ",
      energy_source = { drain = "1.5kW" },
    },
  }),
})
data.raw.inserter["bob-express-bulk-inserter"].hand_base_picture = inserter.graphics.dark_green.hand_base_picture()
data.raw.inserter["bob-express-bulk-inserter"].hand_closed_picture =
  inserter.graphics.dark_green.bulk.hand_closed_picture()
data.raw.inserter["bob-express-bulk-inserter"].hand_open_picture = inserter.graphics.dark_green.bulk.hand_open_picture()
data.raw.inserter["bob-express-bulk-inserter"].platform_picture = inserter.graphics.dark_green.platform_picture()

data.raw.inserter["fast-inserter"].next_upgrade = "bob-express-inserter"
data.raw.inserter["bulk-inserter"].next_upgrade = "bob-express-bulk-inserter"

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data.raw.inserter["inserter"].next_upgrade = "bob-red-inserter"
  data.raw.inserter["inserter"].max_health = inserter.stats.yellow.health
  data.raw.inserter["inserter"].extension_speed = inserter.stats.yellow.extension_speed
  data.raw.inserter["inserter"].rotation_speed = inserter.stats.yellow.rotation_speed
  data.raw.inserter["inserter"].energy_per_movement = inserter.stats.yellow.energy_per_movement
  data.raw.inserter["inserter"].energy_per_rotation = inserter.stats.yellow.energy_per_rotation
  data.raw.inserter["inserter"].energy_source.drain = inserter.stats.yellow.drain

  data.raw.inserter["long-handed-inserter"].max_health = inserter.stats.red.health
  data.raw.inserter["long-handed-inserter"].extension_speed = inserter.stats.red.extension_speed
  data.raw.inserter["long-handed-inserter"].rotation_speed = inserter.stats.red.rotation_speed
  data.raw.inserter["long-handed-inserter"].energy_per_movement = inserter.stats.red.energy_per_movement
  data.raw.inserter["long-handed-inserter"].energy_per_rotation = inserter.stats.red.energy_per_rotation
  data.raw.inserter["long-handed-inserter"].energy_source.drain = inserter.stats.red.drain
  data:extend({
    util.merge({
      data.raw.inserter["long-handed-inserter"],
      {
        name = "bob-red-inserter",
        next_upgrade = "fast-inserter",
        pickup_position = { 0, -1 },
        insert_position = { 0, 1.2 },
        starting_distance = 0.7,
        hidden_in_factoriopedia = true,
      },
    }),
  })
  data.raw.inserter["long-handed-inserter"].placeable_by = { item = "long-handed-inserter", count = 1 }
  for _, inserter in pairs(data.raw.inserter) do
    if inserter.fast_replaceable_group == "long-handed-inserter" then
      inserter.fast_replaceable_group = "inserter"
    end
  end

  data:extend({
    util.merge({
      data.raw.inserter["bulk-inserter"],
      {
        name = "bob-red-bulk-inserter",
        icon = "__boblogistics__/graphics/icons/inserter/red-bulk-inserter.png",
        icon_size = 32,
        minable = { result = "bob-red-bulk-inserter" },
        next_upgrade = "bulk-inserter",
        max_health = inserter.stats.red.health,
        extension_speed = inserter.stats.red.extension_speed,
        rotation_speed = inserter.stats.red.rotation_speed,
        energy_per_movement = inserter.stats.red.bulk.energy_per_movement,
        energy_per_rotation = inserter.stats.red.bulk.energy_per_rotation,
        energy_source = { drain = inserter.stats.red.bulk.drain },
      },
    }),
  })
  data.raw.inserter["bob-red-bulk-inserter"].working_sound =
    util.table.deepcopy(data.raw.inserter["long-handed-inserter"].working_sound)
  data.raw.inserter["bob-red-bulk-inserter"].hand_base_picture = inserter.graphics.red.hand_base_picture()
  data.raw.inserter["bob-red-bulk-inserter"].hand_closed_picture = inserter.graphics.red.bulk.hand_closed_picture()
  data.raw.inserter["bob-red-bulk-inserter"].hand_open_picture = inserter.graphics.red.bulk.hand_open_picture()
  data.raw.inserter["bob-red-bulk-inserter"].platform_picture = inserter.graphics.red.platform_picture()

  data.raw.inserter["fast-inserter"].icon = "__boblogistics__/graphics/icons/inserter/blue-inserter.png"
  data.raw.inserter["fast-inserter"].icon_size = 32
  data.raw.inserter["fast-inserter"].next_upgrade = "bob-turbo-inserter"
  data.raw.inserter["fast-inserter"].max_health = inserter.stats.blue.health
  data.raw.inserter["fast-inserter"].extension_speed = inserter.stats.blue.extension_speed
  data.raw.inserter["fast-inserter"].rotation_speed = inserter.stats.blue.rotation_speed
  data.raw.inserter["fast-inserter"].energy_per_movement = inserter.stats.blue.energy_per_movement
  data.raw.inserter["fast-inserter"].energy_per_rotation = inserter.stats.blue.energy_per_rotation
  data.raw.inserter["fast-inserter"].energy_source.drain = inserter.stats.blue.drain

  data.raw.inserter["bulk-inserter"].icon = "__boblogistics__/graphics/icons/inserter/blue-bulk-inserter.png"
  data.raw.inserter["bulk-inserter"].icon_size = 32
  data.raw.inserter["bulk-inserter"].next_upgrade = "bob-turbo-bulk-inserter"
  data.raw.inserter["bulk-inserter"].max_health = inserter.stats.blue.health
  data.raw.inserter["bulk-inserter"].extension_speed = inserter.stats.blue.extension_speed
  data.raw.inserter["bulk-inserter"].rotation_speed = inserter.stats.blue.rotation_speed
  data.raw.inserter["bulk-inserter"].energy_per_movement = inserter.stats.blue.bulk.energy_per_movement
  data.raw.inserter["bulk-inserter"].energy_per_rotation = inserter.stats.blue.bulk.energy_per_rotation
  data.raw.inserter["bulk-inserter"].energy_source.drain = inserter.stats.blue.bulk.drain
  data.raw.inserter["bulk-inserter"].hand_base_picture = inserter.graphics.blue.hand_base_picture()
  data.raw.inserter["bulk-inserter"].hand_closed_picture = inserter.graphics.blue.bulk.hand_closed_picture()
  data.raw.inserter["bulk-inserter"].hand_open_picture = inserter.graphics.blue.bulk.hand_open_picture()
  data.raw.inserter["bulk-inserter"].platform_picture = inserter.graphics.blue.platform_picture()

  data:extend({
    util.merge({
      data.raw.inserter["fast-inserter"],
      {
        name = "bob-turbo-inserter",
        icon = "__boblogistics__/graphics/icons/inserter/purple-inserter.png",
        icon_size = 32,
        minable = { result = "bob-turbo-inserter" },
        next_upgrade = "bob-express-inserter",
        max_health = inserter.stats.purple.health,
        extension_speed = inserter.stats.purple.extension_speed,
        rotation_speed = inserter.stats.purple.rotation_speed,
        energy_per_movement = inserter.stats.purple.energy_per_movement,
        energy_per_rotation = inserter.stats.purple.energy_per_rotation,
        energy_source = { drain = inserter.stats.purple.drain },
      },
    }),
  })
  data.raw.inserter["bob-turbo-inserter"].hand_base_picture = inserter.graphics.purple.hand_base_picture()
  data.raw.inserter["bob-turbo-inserter"].hand_closed_picture = inserter.graphics.purple.hand_closed_picture()
  data.raw.inserter["bob-turbo-inserter"].hand_open_picture = inserter.graphics.purple.hand_open_picture()
  data.raw.inserter["bob-turbo-inserter"].platform_picture = inserter.graphics.purple.platform_picture()

  data:extend({
    util.merge({
      data.raw.inserter["bulk-inserter"],
      {
        name = "bob-turbo-bulk-inserter",
        icon = "__boblogistics__/graphics/icons/inserter/purple-bulk-inserter.png",
        icon_size = 32,
        minable = { result = "bob-turbo-bulk-inserter" },
        next_upgrade = "bob-express-bulk-inserter",
        max_health = inserter.stats.purple.health,
        extension_speed = inserter.stats.purple.extension_speed,
        rotation_speed = inserter.stats.purple.rotation_speed,
        energy_per_movement = inserter.stats.purple.bulk.energy_per_movement,
        energy_per_rotation = inserter.stats.purple.bulk.energy_per_rotation,
        energy_source = { drain = inserter.stats.purple.bulk.drain },
      },
    }),
  })
  data.raw.inserter["bob-turbo-bulk-inserter"].hand_base_picture = inserter.graphics.purple.hand_base_picture()
  data.raw.inserter["bob-turbo-bulk-inserter"].hand_closed_picture = inserter.graphics.purple.bulk.hand_closed_picture()
  data.raw.inserter["bob-turbo-bulk-inserter"].hand_open_picture = inserter.graphics.purple.bulk.hand_open_picture()
  data.raw.inserter["bob-turbo-bulk-inserter"].platform_picture = inserter.graphics.purple.platform_picture()

  --these must be after turbo to prevent them being copied onto the turbo inserters.

  data.raw.inserter["fast-inserter"].localised_name = { "entity-name.bob-express-inserter" }
  data.raw.inserter["bulk-inserter"].localised_name = { "entity-name.bob-express-bulk-inserter" }

  data.raw.inserter["bob-express-inserter"].localised_name = { "entity-name.bob-ultimate-inserter" }
  data.raw.inserter["bob-express-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-inserter.png"
  data.raw.inserter["bob-express-inserter"].icon_size = 32
  data.raw.inserter["bob-express-inserter"].max_health = inserter.stats.green.health
  data.raw.inserter["bob-express-inserter"].extension_speed = inserter.stats.green.extension_speed
  data.raw.inserter["bob-express-inserter"].rotation_speed = inserter.stats.green.rotation_speed
  data.raw.inserter["bob-express-inserter"].energy_per_movement = inserter.stats.green.energy_per_movement
  data.raw.inserter["bob-express-inserter"].energy_per_rotation = inserter.stats.green.energy_per_rotation
  data.raw.inserter["bob-express-inserter"].energy_source.drain = inserter.stats.green.drain
  data.raw.inserter["bob-express-inserter"].hand_base_picture = inserter.graphics.green.hand_base_picture()
  data.raw.inserter["bob-express-inserter"].hand_closed_picture = inserter.graphics.green.hand_closed_picture()
  data.raw.inserter["bob-express-inserter"].hand_open_picture = inserter.graphics.green.hand_open_picture()
  data.raw.inserter["bob-express-inserter"].platform_picture = inserter.graphics.green.platform_picture()

  data.raw.inserter["bob-express-bulk-inserter"].localised_name = { "entity-name.bob-ultimate-bulk-inserter" }
  data.raw.inserter["bob-express-bulk-inserter"].icon =
    "__boblogistics__/graphics/icons/inserter/green-bulk-inserter.png"
  data.raw.inserter["bob-express-bulk-inserter"].icon_size = 32
  data.raw.inserter["bob-express-bulk-inserter"].max_health = inserter.stats.green.health
  data.raw.inserter["bob-express-bulk-inserter"].extension_speed = inserter.stats.green.extension_speed
  data.raw.inserter["bob-express-bulk-inserter"].rotation_speed = inserter.stats.green.rotation_speed
  data.raw.inserter["bob-express-bulk-inserter"].energy_per_movement = inserter.stats.green.bulk.energy_per_movement
  data.raw.inserter["bob-express-bulk-inserter"].energy_per_rotation = inserter.stats.green.bulk.energy_per_rotation
  data.raw.inserter["bob-express-bulk-inserter"].energy_source.drain = inserter.stats.green.bulk.drain
  data.raw.inserter["bob-express-bulk-inserter"].hand_base_picture = inserter.graphics.green.hand_base_picture()
  data.raw.inserter["bob-express-bulk-inserter"].hand_closed_picture =
    inserter.graphics.green.bulk.hand_closed_picture()
  data.raw.inserter["bob-express-bulk-inserter"].hand_open_picture = inserter.graphics.green.bulk.hand_open_picture()
  data.raw.inserter["bob-express-bulk-inserter"].platform_picture = inserter.graphics.green.platform_picture()
end
