data.raw["storage-tank"]["storage-tank"].icon = "__boblogistics__/graphics/icons/storage-tank-1.png"
data.raw["storage-tank"]["storage-tank"].next_upgrade = "bob-storage-tank-2"

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")
local storagetankbase = settings.startup["bobmods-logistics-storagetankbase"].value * 1000
data.raw["storage-tank"]["storage-tank"].fluid_box.volume = storagetankbase
table.insert(data.raw["storage-tank"]["storage-tank"].pictures.picture.sheets, 2, {
  filename = "__boblogistics__/graphics/entity/storage-tank/storage-tank-mask.png",
  priority = "extra-high",
  frames = 2,
  width = 219,
  height = 215,
  shift = util.by_pixel(-0.25, 3.75),
  scale = 0.5,
  tint = { r = 0.65, g = 0.2, b = 0.15 },
})

local function storage_tank_pictures(tint)
  local graphics = {
    picture = {
      sheets = {
        {
          filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
          priority = "extra-high",
          frames = 2,
          width = 219,
          height = 235,
          shift = util.by_pixel(-0.25, -1.25),
          scale = 0.5,
        },
        {
          filename = "__boblogistics__/graphics/entity/storage-tank/storage-tank-mask.png",
          priority = "extra-high",
          frames = 2,
          width = 219,
          height = 215,
          shift = util.by_pixel(-0.25, 3.75),
          scale = 0.5,
          tint = tint,
        },
        {
          filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
          priority = "extra-high",
          frames = 2,
          width = 291,
          height = 153,
          shift = util.by_pixel(29.75, 22.25),
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    fluid_background = {
      filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 15,
    },
    window_background = {
      filename = "__base__/graphics/entity/storage-tank/window-background.png",
      priority = "extra-high",
      width = 34,
      height = 48,
      scale = 0.5,
    },
    flow_sprite = {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 20,
    },
    gas_flow = {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 48,
      height = 30,
      frame_count = 60,
      animation_speed = 0.25,
      scale = 0.5,
    },
  }
  return graphics
end

local function storage_tank_all_pictures(tint)
  local graphics = {
    picture = {
      sheets = {
        {
          filename = "__boblogistics__/graphics/entity/storage-tank/storage-tank.png",
          priority = "extra-high",
          frames = 1,
          width = 219,
          height = 215,
          shift = util.by_pixel(-0.25, 3.75),
          scale = 0.5,
        },
        {
          filename = "__boblogistics__/graphics/entity/storage-tank/storage-tank-all-mask.png",
          priority = "extra-high",
          frames = 1,
          width = 219,
          height = 215,
          shift = util.by_pixel(-0.25, 3.75),
          scale = 0.5,
          tint = tint,
        },
        {
          filename = "__boblogistics__/graphics/entity/storage-tank/storage-tank-shadow.png",
          priority = "extra-high",
          frames = 1,
          width = 291,
          height = 153,
          shift = util.by_pixel(29.75, 22.25),
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    fluid_background = {
      filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 15,
    },
    window_background = {
      filename = "__base__/graphics/entity/storage-tank/window-background.png",
      priority = "extra-high",
      width = 34,
      height = 48,
      scale = 0.5,
    },
    flow_sprite = {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 20,
    },
    gas_flow = {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 48,
      height = 30,
      frame_count = 60,
      animation_speed = 0.25,
      scale = 0.5,
    },
  }

  return graphics
end

data:extend({
  {
    type = "storage-tank",
    name = "bob-storage-tank-2",
    icon = "__boblogistics__/graphics/icons/storage-tank-2.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-2" },
    max_health = 600,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase * 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
      },
    },
    two_direction_only = true,
    next_upgrade = "bob-storage-tank-3",
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_pictures({ r = 0.25, g = 0.45, b = 0.6 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = 10,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },

  {
    type = "storage-tank",
    name = "bob-storage-tank-3",
    icon = "__boblogistics__/graphics/icons/storage-tank-3.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-3" },
    max_health = 700,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase * 3,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
      },
    },
    two_direction_only = true,
    next_upgrade = "bob-storage-tank-4",
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_pictures({ r = 0.7, g = 0.3, b = 0.68 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = 12.5,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },

  {
    type = "storage-tank",
    name = "bob-storage-tank-4",
    icon = "__boblogistics__/graphics/icons/storage-tank-4.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-4" },
    max_health = 800,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase * 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
      },
    },
    two_direction_only = true,
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_pictures({ r = 0.2, g = 0.55, b = 0.2 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = 15,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },
})

data:extend({
  {
    type = "storage-tank",
    name = "bob-storage-tank-all-corners",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-1.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-all-corners" },
    max_health = 500,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
      },
    },
    next_upgrade = "bob-storage-tank-all-corners-2",
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_all_pictures({ r = 0.65, g = 0.2, b = 0.15 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },
  {
    type = "storage-tank",
    name = "bob-storage-tank-all-corners-2",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-2.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-all-corners-2" },
    max_health = 600,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase * 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
      },
    },
    next_upgrade = "bob-storage-tank-all-corners-3",
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_all_pictures({ r = 0.25, g = 0.45, b = 0.6 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = 10,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },

  {
    type = "storage-tank",
    name = "bob-storage-tank-all-corners-3",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-3.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-all-corners-3" },
    max_health = 700,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase * 3,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
      },
    },
    next_upgrade = "bob-storage-tank-all-corners-4",
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_all_pictures({ r = 0.7, g = 0.3, b = 0.68 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = 12.5,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },

  {
    type = "storage-tank",
    name = "bob-storage-tank-all-corners-4",
    icon = "__boblogistics__/graphics/icons/storage-tank-all-corners-4.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-storage-tank-all-corners-4" },
    max_health = 800,
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = { { -1.3, -1.3 }, { 1.3, 1.3 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "storage-tank",
    damaged_trigger_effect = hit_effects.entity(),
    icon_draw_specification = { scale = 1.5, shift = { 0, -0.3 } },
    fluid_box = {
      volume = storagetankbase * 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = { -1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.north, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.south, hide_connection_info = true },
        { position = { -1, -1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { -1, 1 }, direction = defines.direction.west, hide_connection_info = true },
        { position = { 1, -1 }, direction = defines.direction.east, hide_connection_info = true },
        { position = { 1, 1 }, direction = defines.direction.east, hide_connection_info = true },
      },
    },
    window_bounding_box = { { -0.125, 0.6875 }, { 0.1875, 1.1875 } },
    pictures = storage_tank_all_pictures({ r = 0.2, g = 0.55, b = 0.2 }),
    flow_length_in_ticks = 360,
    impact_category = "metal-large",
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    working_sound = {
      sound = { filename = "__base__/sound/storage-tank.ogg", volume = 0.6, audible_distance_modifier = 0.5 },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = 15,
    default_fluid_temperature_signal = { type = "virtual", name = "signal-T" },
    water_reflection = {
      pictures = {
        filename = "__base__/graphics/entity/storage-tank/storage-tank-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(5, 35),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
  },
})

if feature_flags["freezing"] then
  data.raw["storage-tank"]["bob-storage-tank-2"].heating_energy = "100kW"
  data.raw["storage-tank"]["bob-storage-tank-3"].heating_energy = "100kW"
  data.raw["storage-tank"]["bob-storage-tank-4"].heating_energy = "100kW"
  data.raw["storage-tank"]["bob-storage-tank-all-corners"].heating_energy = "100kW"
  data.raw["storage-tank"]["bob-storage-tank-all-corners-2"].heating_energy = "100kW"
  data.raw["storage-tank"]["bob-storage-tank-all-corners-3"].heating_energy = "100kW"
  data.raw["storage-tank"]["bob-storage-tank-all-corners-4"].heating_energy = "100kW"
  if mods["space-age"] then
    local function frozenpatch()
      local result = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"].pictures.frozen_patch)
      return result
    end
    data.raw["storage-tank"]["bob-storage-tank-2"].pictures.frozen_patch = frozenpatch()
    data.raw["storage-tank"]["bob-storage-tank-3"].pictures.frozen_patch = frozenpatch()
    data.raw["storage-tank"]["bob-storage-tank-4"].pictures.frozen_patch = frozenpatch()
    local function frozenpatchall()
      return {
        sheets = {
          {
            filename = "__space-age__/graphics/entity/frozen/storage-tank/storage-tank.png",
            frames = 1,
            width = 219,
            height = 215,
            priority = "extra-high",
            scale = 0.5,
            shift = { -0.0078125, 0.1171875 },
          },
        },
      }
    end
    data.raw["storage-tank"]["bob-storage-tank-all-corners"].pictures.frozen_patch = frozenpatchall()
    data.raw["storage-tank"]["bob-storage-tank-all-corners-2"].pictures.frozen_patch = frozenpatchall()
    data.raw["storage-tank"]["bob-storage-tank-all-corners-3"].pictures.frozen_patch = frozenpatchall()
    data.raw["storage-tank"]["bob-storage-tank-all-corners-4"].pictures.frozen_patch = frozenpatchall()
    local function frozenpatchcovers()
      local result = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"].fluid_box.pipe_covers_frozen)
      return result
    end
    data.raw["storage-tank"]["bob-storage-tank-2"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
    data.raw["storage-tank"]["bob-storage-tank-3"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
    data.raw["storage-tank"]["bob-storage-tank-4"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
    data.raw["storage-tank"]["bob-storage-tank-all-corners"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
    data.raw["storage-tank"]["bob-storage-tank-all-corners-2"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
    data.raw["storage-tank"]["bob-storage-tank-all-corners-3"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
    data.raw["storage-tank"]["bob-storage-tank-all-corners-4"].fluid_box.pipe_covers_frozen = frozenpatchcovers()
  end
end
