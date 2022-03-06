function bobmods.logistics.pipe_distance(level)
  local range = ((level-1) * settings.startup["bobmods-logistics-pipeperlevel"].value) + settings.startup["bobmods-logistics-pipestarting"].value
  return range
end

function bobmods.logistics.set_pipe_distance(pipe, level)
  if data.raw["pipe-to-ground"][pipe] then
    for index, connection in pairs(data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections) do
      if connection.max_underground_distance then
        data.raw["pipe-to-ground"][pipe].fluid_box.pipe_connections[index].max_underground_distance = bobmods.logistics.pipe_distance(level)
      end
    end
  end
end


function bob_pipepictures(pipe_type)
  return
  {
    straight_vertical_single =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 80,
      height = 80,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 160,
        height = 160,
        scale = 0.5
      }
    },
    straight_vertical =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_vertical_window =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal_window =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-up-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-corner-up-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-up-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-corner-up-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-down-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-corner-down-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-corner-down-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-corner-down-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_up =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-t-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_down =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-t-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-t-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-t-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-t-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    cross =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cross.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-cross.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_up =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-ending-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_down =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-ending-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-ending-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-ending-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-ending-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    horizontal_window_background =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    vertical_window_background =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    fluid_background =
    {
      filename = "__base__/graphics/entity/pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5
      }
    },
    low_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow =
    {
      filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    gas_flow =
    {
      filename = "__base__/graphics/entity/pipe/steam.png",
      priority = "extra-high",
      line_length = 10,
      width = 24,
      height = 15,
      frame_count = 60,
      axially_symmetrical = false,
      direction_count = 1,
      hr_version =
      {
        filename = "__base__/graphics/entity/pipe/hr-steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1
      }
    }
  }
end

function bob_pipetogroundpictures(pipe_type)
  return
  {
    up =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/pipe-to-ground-up.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/hr-pipe-to-ground-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    down =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/pipe-to-ground-down.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/hr-pipe-to-ground-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    left =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/pipe-to-ground-left.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/hr-pipe-to-ground-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    right =
    {
      filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/pipe-to-ground-right.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version =
      {
        filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type.. "/hr-pipe-to-ground-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
  }
end

function bob_pipecoverspictures(pipe_type)
  return
  {
    north =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-north.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-cover-north.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    east =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-east.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-cover-east.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-east-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    south =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-south.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-cover-south.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-south-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    },
    west =
    {
      layers =
      {
        {
          filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/pipe-cover-west.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version =
          {
            filename = "__boblogistics__/graphics/entity/pipe/" .. pipe_type .. "/hr-pipe-cover-west.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-west-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        },
      },
    }
  }
end

data.raw["pipe"]["pipe"].pictures = bob_pipepictures("iron")
data.raw["pipe-to-ground"]["pipe-to-ground"]["fluid_box"].pipe_covers = bob_pipecoverspictures("iron")
data.raw["pipe-to-ground"]["pipe-to-ground"].pictures = bob_pipetogroundpictures("iron")


data:extend(
{
  {
    type = "pipe",
    name = "stone-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "stone-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("stone"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "stone-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "stone-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--2,
      pipe_covers = bob_pipecoverspictures("stone"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("stone"),
  },


  {
    type = "pipe",
    name = "copper-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "copper-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("copper"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "copper-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "copper-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--0.5,
      pipe_covers = bob_pipecoverspictures("copper"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("copper"),
  },


  {
    type = "pipe",
    name = "steel-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "steel-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("steel"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "steel-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "steel-pipe-to-ground"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = bob_pipecoverspictures("steel"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("steel"),
  },


  {
    type = "pipe",
    name = "plastic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "plastic-pipe"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("plastic"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "plastic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "plastic-pipe-to-ground"},
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--2,
      pipe_covers = bob_pipecoverspictures("plastic"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("plastic"),
  },
}
)


if data.raw.item["bronze-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "bronze-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "bronze-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("bronze"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "bronze-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.3, result = "bronze-pipe-to-ground"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--0.5,
      pipe_covers = bob_pipecoverspictures("bronze"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("bronze"),
  },
}
)
end


if data.raw.item["brass-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "brass-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/brass-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "brass-pipe"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("brass"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "brass-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/brass-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "brass-pipe-to-ground"},
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--0.5,
      pipe_covers = bob_pipecoverspictures("brass"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("brass"),
  },
}
)
end


if data.raw.item["silicon-nitride"] then
data:extend(
{
  {
    type = "pipe",
    name = "ceramic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "ceramic-pipe"},
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("ceramic"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "ceramic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "ceramic-pipe-to-ground"},
    max_health = 300,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,--2,
      pipe_covers = bob_pipecoverspictures("ceramic"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 25
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("ceramic"),
  },
}
)
end


if data.raw.item["titanium-plate"] then
data:extend(
{
  {
    type = "pipe",
    name = "titanium-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.4, result = "titanium-pipe"},
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("titanium"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "titanium-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.4, result = "titanium-pipe-to-ground"},
    max_health = 300,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = bob_pipecoverspictures("titanium"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 25
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("titanium"),
  },
}
)
end


if data.raw.item["tungsten-plate"] then
data:extend(
{
  {
    type = "pipe",
    name = "tungsten-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.4, result = "tungsten-pipe"},
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("tungsten"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "tungsten-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.4, result = "tungsten-pipe-to-ground"},
    max_health = 300,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = bob_pipecoverspictures("tungsten"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 25
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("tungsten"),
  },
}
)
end

if data.raw.item["nitinol-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "nitinol-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "nitinol-pipe"},
    max_health = 300,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("nitinol"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "nitinol-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/nitinol-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "nitinol-pipe-to-ground"},
    max_health = 350,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = bob_pipecoverspictures("nitinol"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("nitinol"),
  },
}
)
end

if data.raw.item["copper-tungsten-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "copper-tungsten-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "copper-tungsten-pipe"},
    max_health = 300,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = bob_pipepictures("copper-tungsten"),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "copper-tungsten-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe-to-ground.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.4, result = "copper-tungsten-pipe-to-ground"},
    max_health = 350,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = bob_pipecoverspictures("copper-tungsten"),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    underground_remove_pipes_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 0,
      scale = 0.5
    },
    pictures = bob_pipetogroundpictures("copper-tungsten"),
  },
}
)
end

if settings.startup["bobmods-logistics-ugdistanceoverhaul"].value == true then
  bobmods.logistics.set_pipe_distance("pipe-to-ground", 1)
  bobmods.logistics.set_pipe_distance("stone-pipe-to-ground", 1)
  bobmods.logistics.set_pipe_distance("copper-pipe-to-ground", 1)
  bobmods.logistics.set_pipe_distance("steel-pipe-to-ground", 2)
  bobmods.logistics.set_pipe_distance("bronze-pipe-to-ground", 2)
  bobmods.logistics.set_pipe_distance("plastic-pipe-to-ground", 3)
  bobmods.logistics.set_pipe_distance("brass-pipe-to-ground", 3)
  bobmods.logistics.set_pipe_distance("ceramic-pipe-to-ground", 4)
  bobmods.logistics.set_pipe_distance("titanium-pipe-to-ground", 4)
  bobmods.logistics.set_pipe_distance("tungsten-pipe-to-ground", 4)
  bobmods.logistics.set_pipe_distance("nitinol-pipe-to-ground", 5)
  bobmods.logistics.set_pipe_distance("copper-tungsten-pipe-to-ground", 5)
end

