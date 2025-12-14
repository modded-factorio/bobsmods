function bobmods.logistics.pipe_distance(level)
  local range = ((level - 1) * settings.startup["bobmods-logistics-pipeperlevel"].value)
    + settings.startup["bobmods-logistics-pipestarting"].value
  return range
end

bobmods.logistics.maxPipeTier = 4

function bobmods.logistics.set_pipe_distance(pipe, level)
  if data.raw["pipe-to-ground"][pipe] then
    for index, connection in pairs(data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections) do
      if connection.max_underground_distance then
        data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections[index].max_underground_distance =
          bobmods.logistics.pipe_distance(level)
      end
    end
  end
end

--- @param i integer
local function make_visualization(i)
  return {
    filename = "__base__/graphics/entity/pipe/visualization.png",
    priority = "extra-high",
    x = i * 64,
    size = 64,
    scale = 0.5,
    flags = { "icon" },
  }
end

--- @param i integer
local function make_disabled_visualization(i)
  return {
    filename = "__base__/graphics/entity/pipe/disabled-visualization.png",
    priority = "extra-high",
    x = i * 64,
    size = 64,
    scale = 0.5,
    flags = { "icon" },
  }
end

local function bob_pipepictures(pipe_type)
  local pipepictures = {
    straight_vertical_single = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 160,
      height = 160,
      scale = 0.5,
    },
    straight_vertical = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    straight_vertical_window = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    straight_horizontal_window = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    straight_horizontal = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    corner_up_right = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-up-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    corner_up_left = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-up-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    corner_down_right = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-down-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    corner_down_left = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-down-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    t_up = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-up.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    t_down = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-down.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    t_right = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    t_left = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    cross = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cross.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    ending_up = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-up.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    ending_down = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-down.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    ending_right = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    ending_left = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    horizontal_window_background = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    vertical_window_background = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    fluid_background = {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 64,
      height = 40,
      scale = 0.5,
    },
    low_temperature_flow = {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18,
    },
    middle_temperature_flow = {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18,
    },
    high_temperature_flow = {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18,
    },
    gas_flow = {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 48,
      height = 30,
      frame_count = 60,
    },
    straight_vertical_single_visualization = make_visualization(0),
    straight_vertical_visualization = make_visualization(5),
    straight_vertical_window_visualization = make_visualization(5),
    straight_horizontal_window_visualization = make_visualization(10),
    straight_horizontal_visualization = make_visualization(10),
    corner_up_right_visualization = make_visualization(3),
    corner_up_left_visualization = make_visualization(9),
    corner_down_right_visualization = make_visualization(6),
    corner_down_left_visualization = make_visualization(12),
    t_up_visualization = make_visualization(11),
    t_down_visualization = make_visualization(14),
    t_right_visualization = make_visualization(7),
    t_left_visualization = make_visualization(13),
    cross_visualization = make_visualization(15),
    ending_up_visualization = make_visualization(1),
    ending_down_visualization = make_visualization(4),
    ending_right_visualization = make_visualization(2),
    ending_left_visualization = make_visualization(8),
    straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
    straight_vertical_disabled_visualization = make_disabled_visualization(5),
    straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
    straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
    straight_horizontal_disabled_visualization = make_disabled_visualization(10),
    corner_up_right_disabled_visualization = make_disabled_visualization(3),
    corner_up_left_disabled_visualization = make_disabled_visualization(9),
    corner_down_right_disabled_visualization = make_disabled_visualization(6),
    corner_down_left_disabled_visualization = make_disabled_visualization(12),
    t_up_disabled_visualization = make_disabled_visualization(11),
    t_down_disabled_visualization = make_disabled_visualization(14),
    t_right_disabled_visualization = make_disabled_visualization(7),
    t_left_disabled_visualization = make_disabled_visualization(13),
    cross_disabled_visualization = make_disabled_visualization(15),
    ending_up_disabled_visualization = make_disabled_visualization(1),
    ending_down_disabled_visualization = make_disabled_visualization(4),
    ending_right_disabled_visualization = make_disabled_visualization(2),
    ending_left_disabled_visualization = make_disabled_visualization(8),
  }

  if feature_flags["freezing"] and mods["space-age"] then
    pipepictures.corner_down_left_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-down-left.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.corner_down_right_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-down-right.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.corner_up_left_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-up-left.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.corner_up_right_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-corner-up-right.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.cross_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-cross.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.ending_down_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-down.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.ending_left_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-left.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.ending_right_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-right.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.ending_up_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-ending-up.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.straight_horizontal_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-horizontal.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.straight_horizontal_window_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-horizontal-window.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.straight_vertical_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.straight_vertical_single_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical-single.png",
      width = 160,
      height = 160,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.straight_vertical_window_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-straight-vertical-window.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.t_down_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-down.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.t_left_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-left.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.t_right_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-right.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
    pipepictures.t_up_frozen = {
      filename = "__space-age__/graphics/entity/frozen/pipe/pipe-t-up.png",
      width = 128,
      height = 128,
      priority = "extra-high",
      scale = 0.5,
    }
  end

  return pipepictures
end

local function bob_pipetogroundpictures(pipe_type)
  return {
    north = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-to-ground-up.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    south = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-to-ground-down.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    east = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-to-ground-right.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
    west = {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-to-ground-left.png",
      priority = "extra-high",
      width = 128,
      height = 128,
      scale = 0.5,
    },
  }
end

local function bob_pipecoverspictures(pipe_type)
  return {
    north = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-north.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    east = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-east.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    south = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-south.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
    west = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-west.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          scale = 0.5,
          draw_as_shadow = true,
        },
      },
    },
  }
end

function bob_pipetoground_visualization()
  return {
    north = {
      filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 64,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
    south = {
      filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 192,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
    west = {
      filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 256,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
    east = {
      filename = "__base__/graphics/entity/pipe-to-ground/visualization.png",
      priority = "extra-high",
      x = 128,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
  }
end

function bob_pipetoground_disabled_visualizaton()
  return {
    north = {
      filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
      priority = "extra-high",
      x = 64,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
    south = {
      filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
      priority = "extra-high",
      x = 192,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
    west = {
      filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
      priority = "extra-high",
      x = 256,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
    east = {
      filename = "__base__/graphics/entity/pipe-to-ground/disabled-visualization.png",
      priority = "extra-high",
      x = 128,
      size = 64,
      scale = 0.5,
      flags = { "icon" },
    },
  }
end

data.raw["pipe"]["pipe"].pictures = bob_pipepictures("iron")
data.raw["pipe-to-ground"]["pipe-to-ground"]["fluid_box"].pipe_covers = bob_pipecoverspictures("iron")
data.raw["pipe-to-ground"]["pipe-to-ground"].pictures = bob_pipetogroundpictures("iron")

data:extend({
  {
    type = "pipe",
    name = "bob-stone-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "bob-stone-pipe" },
    max_health = 100,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 90,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        { position = { 0, 0 }, direction = defines.direction.east },
        { position = { 0, 0 }, direction = defines.direction.south },
        { position = { 0, 0 }, direction = defines.direction.west },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipepictures("stone"),
    impact_category = "stone",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65,
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
    vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
  },

  {
    type = "pipe-to-ground",
    name = "bob-stone-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "bob-stone-pipe-to-ground" },
    max_health = 150,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = bob_pipecoverspictures("stone"),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        {
          position = { 0, 0 },
          direction = defines.direction.south,
          connection_type = "underground",
          max_underground_distance = 10,
        },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipetogroundpictures("stone"),
    visualization = bob_pipetoground_visualization(),
    disabled_visualization = bob_pipetoground_disabled_visualizaton(),
    impact_category = "stone",
  },

  {
    type = "pipe",
    name = "bob-copper-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "bob-copper-pipe" },
    max_health = 100,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 90,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        { position = { 0, 0 }, direction = defines.direction.east },
        { position = { 0, 0 }, direction = defines.direction.south },
        { position = { 0, 0 }, direction = defines.direction.west },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipepictures("copper"),
    impact_category = "metal",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65,
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
    vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
  },

  {
    type = "pipe-to-ground",
    name = "bob-copper-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe-to-ground.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "bob-copper-pipe-to-ground" },
    max_health = 150,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = bob_pipecoverspictures("copper"),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        {
          position = { 0, 0 },
          direction = defines.direction.south,
          connection_type = "underground",
          max_underground_distance = 10,
        },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipetogroundpictures("copper"),
    visualization = bob_pipetoground_visualization(),
    disabled_visualization = bob_pipetoground_disabled_visualizaton(),
    impact_category = "metal",
  },

  {
    type = "pipe",
    name = "bob-steel-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "bob-steel-pipe" },
    max_health = 150,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 90,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        { position = { 0, 0 }, direction = defines.direction.east },
        { position = { 0, 0 }, direction = defines.direction.south },
        { position = { 0, 0 }, direction = defines.direction.west },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipepictures("steel"),
    impact_category = "metal",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65,
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
    vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
  },

  {
    type = "pipe-to-ground",
    name = "bob-steel-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe-to-ground.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.3, result = "bob-steel-pipe-to-ground" },
    max_health = 200,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = bob_pipecoverspictures("steel"),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        {
          position = { 0, 0 },
          direction = defines.direction.south,
          connection_type = "underground",
          max_underground_distance = 15,
        },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipetogroundpictures("steel"),
    visualization = bob_pipetoground_visualization(),
    disabled_visualization = bob_pipetoground_disabled_visualizaton(),
    impact_category = "metal",
  },

  {
    type = "pipe",
    name = "bob-plastic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-plastic-pipe" },
    max_health = 200,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 90,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        { position = { 0, 0 }, direction = defines.direction.east },
        { position = { 0, 0 }, direction = defines.direction.south },
        { position = { 0, 0 }, direction = defines.direction.west },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipepictures("plastic"),
    impact_category = "stone", --Closest approximation for sound of hitting plastic
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65,
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
    vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
  },

  {
    type = "pipe-to-ground",
    name = "bob-plastic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
    icon_size = 64,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "bob-plastic-pipe-to-ground" },
    max_health = 250,
    corpse = "small-remnants",
    icon_draw_specification = { scale = 0.5 },
    resistances = {
      {
        type = "fire",
        percent = 80,
      },
    },
    fast_replaceable_group = "pipe",
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    fluid_box = {
      volume = 100,
      pipe_covers = bob_pipecoverspictures("plastic"),
      pipe_connections = {
        { position = { 0, 0 }, direction = defines.direction.north },
        {
          position = { 0, 0 },
          direction = defines.direction.south,
          connection_type = "underground",
          max_underground_distance = 20,
        },
      },
      hide_connection_info = true,
    },
    pictures = bob_pipetogroundpictures("plastic"),
    visualization = bob_pipetoground_visualization(),
    disabled_visualization = bob_pipetoground_disabled_visualizaton(),
    impact_category = "stone",
  },
})

if feature_flags["freezing"] and mods["space-age"] then
  data.raw.pipe["bob-copper-pipe"].heating_energy = "1kW"
  data.raw.pipe["bob-plastic-pipe"].heating_energy = "1kW"
  data.raw.pipe["bob-steel-pipe"].heating_energy = "1kW"
  data.raw.pipe["bob-stone-pipe"].heating_energy = "1kW"
  data.raw["pipe-to-ground"]["pipe-to-ground"].heating_energy = "100kW"
  data.raw["pipe-to-ground"]["bob-copper-pipe-to-ground"].heating_energy = "100kW"
  data.raw["pipe-to-ground"]["bob-stone-pipe-to-ground"].heating_energy = "100kW"
  data.raw["pipe-to-ground"]["bob-steel-pipe-to-ground"].heating_energy = "150kW"
  data.raw["pipe-to-ground"]["bob-plastic-pipe-to-ground"].heating_energy = "200kW"
  local ptgfrozenpatch = data.raw["pipe-to-ground"]["pipe-to-ground"].frozen_patch
  data.raw["pipe-to-ground"]["bob-copper-pipe-to-ground"].frozen_patch = ptgfrozenpatch
  data.raw["pipe-to-ground"]["bob-stone-pipe-to-ground"].frozen_patch = ptgfrozenpatch
  data.raw["pipe-to-ground"]["bob-steel-pipe-to-ground"].frozen_patch = ptgfrozenpatch
  data.raw["pipe-to-ground"]["bob-plastic-pipe-to-ground"].frozen_patch = ptgfrozenpatch
  local pcfrozenpatch = data.raw.pipe.pipe.fluid_box.pipe_covers_frozen
  data.raw.pipe["bob-copper-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw.pipe["bob-plastic-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw.pipe["bob-steel-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw.pipe["bob-stone-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw["pipe-to-ground"]["bob-copper-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw["pipe-to-ground"]["bob-stone-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw["pipe-to-ground"]["bob-steel-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  data.raw["pipe-to-ground"]["bob-plastic-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
end

if mods["bobplates"] then
  data:extend({
    {
      type = "pipe",
      name = "bob-bronze-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.3, result = "bob-bronze-pipe" },
      max_health = 150,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("bronze"),
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-bronze-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.3, result = "bob-bronze-pipe-to-ground" },
      max_health = 200,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("bronze"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 15,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("bronze"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "metal",
    },

    {
      type = "pipe",
      name = "bob-brass-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/brass-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "bob-brass-pipe" },
      max_health = 200,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("brass"),
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-brass-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/brass-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.1, result = "bob-brass-pipe-to-ground" },
      max_health = 250,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("brass"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 20,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("brass"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "metal",
    },

    {
      type = "pipe",
      name = "bob-ceramic-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-ceramic-pipe" },
      max_health = 250,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("ceramic"),
      impact_category = "stone",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-ceramic-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.2, result = "bob-ceramic-pipe-to-ground" },
      max_health = 300,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("ceramic"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 25,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("ceramic"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "stone",
    },

    {
      type = "pipe",
      name = "bob-titanium-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.4, result = "bob-titanium-pipe" },
      max_health = 250,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("titanium"),
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-titanium-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.4, result = "bob-titanium-pipe-to-ground" },
      max_health = 300,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("titanium"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 25,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("titanium"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "metal",
    },

    {
      type = "pipe",
      name = "bob-tungsten-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.4, result = "bob-tungsten-pipe" },
      max_health = 250,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("tungsten"),
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-tungsten-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.4, result = "bob-tungsten-pipe-to-ground" },
      max_health = 300,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("tungsten"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 25,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("tungsten"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "metal",
    },

    {
      type = "pipe",
      name = "bob-nitinol-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-nitinol-pipe" },
      max_health = 300,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("nitinol"),
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-nitinol-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-nitinol-pipe-to-ground" },
      max_health = 350,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("nitinol"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 30,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("nitinol"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "metal",
    },

    {
      type = "pipe",
      name = "bob-copper-tungsten-pipe",
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.5, result = "bob-copper-tungsten-pipe" },
      max_health = 300,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 90,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          { position = { 0, 0 }, direction = defines.direction.east },
          { position = { 0, 0 }, direction = defines.direction.south },
          { position = { 0, 0 }, direction = defines.direction.west },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipepictures("copper-tungsten"),
      impact_category = "metal",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/pipe.ogg",
            volume = 0.65,
          },
        },
        match_volume_to_activity = true,
        max_sounds_per_prototype = 3,
      },
      horizontal_window_bounding_box = { { -0.25, -0.25 }, { 0.25, 0.15625 } },
      vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },

    {
      type = "pipe-to-ground",
      name = "bob-copper-tungsten-pipe-to-ground",
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe-to-ground.png",
      icon_size = 64,
      flags = { "placeable-neutral", "player-creation" },
      minable = { mining_time = 0.4, result = "bob-copper-tungsten-pipe-to-ground" },
      max_health = 350,
      corpse = "small-remnants",
      icon_draw_specification = { scale = 0.5 },
      resistances = {
        {
          type = "fire",
          percent = 80,
        },
      },
      fast_replaceable_group = "pipe",
      collision_box = { { -0.29, -0.29 }, { 0.29, 0.2 } },
      selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      fluid_box = {
        volume = 100,
        pipe_covers = bob_pipecoverspictures("copper-tungsten"),
        pipe_connections = {
          { position = { 0, 0 }, direction = defines.direction.north },
          {
            position = { 0, 0 },
            direction = defines.direction.south,
            connection_type = "underground",
            max_underground_distance = 30,
          },
        },
        hide_connection_info = true,
      },
      pictures = bob_pipetogroundpictures("copper-tungsten"),
      visualization = bob_pipetoground_visualization(),
      disabled_visualization = bob_pipetoground_disabled_visualizaton(),
      impact_category = "metal",
    },
  })

  if feature_flags["freezing"] and mods["space-age"] then
    data.raw.pipe["bob-brass-pipe"].heating_energy = "1kW"
    data.raw.pipe["bob-bronze-pipe"].heating_energy = "1kW"
    data.raw.pipe["bob-ceramic-pipe"].heating_energy = "1kW"
    data.raw.pipe["bob-copper-tungsten-pipe"].heating_energy = "1kW"
    data.raw.pipe["bob-nitinol-pipe"].heating_energy = "1kW"
    data.raw.pipe["bob-titanium-pipe"].heating_energy = "1kW"
    data.raw.pipe["bob-tungsten-pipe"].heating_energy = "1kW"
    data.raw["pipe-to-ground"]["bob-bronze-pipe-to-ground"].heating_energy = "150kW"
    data.raw["pipe-to-ground"]["bob-brass-pipe-to-ground"].heating_energy = "200kW"
    data.raw["pipe-to-ground"]["bob-ceramic-pipe-to-ground"].heating_energy = "250kW"
    data.raw["pipe-to-ground"]["bob-titanium-pipe-to-ground"].heating_energy = "250kW"
    data.raw["pipe-to-ground"]["bob-tungsten-pipe-to-ground"].heating_energy = "250kW"
    data.raw["pipe-to-ground"]["bob-copper-tungsten-pipe-to-ground"].heating_energy = "300kW"
    data.raw["pipe-to-ground"]["bob-nitinol-pipe-to-ground"].heating_energy = "300kW"
    local ptgfrozenpatch = data.raw["pipe-to-ground"]["pipe-to-ground"].frozen_patch
    data.raw["pipe-to-ground"]["bob-bronze-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    data.raw["pipe-to-ground"]["bob-brass-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    data.raw["pipe-to-ground"]["bob-ceramic-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    data.raw["pipe-to-ground"]["bob-titanium-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    data.raw["pipe-to-ground"]["bob-tungsten-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    data.raw["pipe-to-ground"]["bob-copper-tungsten-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    data.raw["pipe-to-ground"]["bob-nitinol-pipe-to-ground"].frozen_patch = ptgfrozenpatch
    local pcfrozenpatch = data.raw.pipe.pipe.fluid_box.pipe_covers_frozen
    data.raw.pipe["bob-brass-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw.pipe["bob-bronze-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw.pipe["bob-ceramic-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw.pipe["bob-copper-tungsten-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw.pipe["bob-nitinol-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw.pipe["bob-titanium-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw.pipe["bob-tungsten-pipe"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-bronze-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-brass-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-ceramic-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-titanium-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-tungsten-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-copper-tungsten-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
    data.raw["pipe-to-ground"]["bob-nitinol-pipe-to-ground"].fluid_box.pipe_covers_frozen = pcfrozenpatch
  end
end

if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
  bobmods.logistics.set_pipe_distance("pipe-to-ground", 1)
  bobmods.logistics.set_pipe_distance("bob-stone-pipe-to-ground", 1)
  bobmods.logistics.set_pipe_distance("bob-copper-pipe-to-ground", 1)
  bobmods.logistics.set_pipe_distance("bob-steel-pipe-to-ground", 2)
  bobmods.logistics.set_pipe_distance("bob-bronze-pipe-to-ground", 2)
  bobmods.logistics.set_pipe_distance("bob-plastic-pipe-to-ground", 3)
  bobmods.logistics.set_pipe_distance("bob-brass-pipe-to-ground", 3)
  bobmods.logistics.set_pipe_distance("bob-ceramic-pipe-to-ground", 4)
  bobmods.logistics.set_pipe_distance("bob-titanium-pipe-to-ground", 4)
  bobmods.logistics.set_pipe_distance("bob-tungsten-pipe-to-ground", 4)
  bobmods.logistics.set_pipe_distance("bob-nitinol-pipe-to-ground", 5)
  bobmods.logistics.set_pipe_distance("bob-copper-tungsten-pipe-to-ground", 5)
end
