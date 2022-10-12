local tank_mk2_tint = {
  r = 0.7,
  g = 0.8,
  b = 1
}
local tank_mk3_tint = {
  r = 1,
  g = 0.8,
  b = 0.7
}
if settings.startup["bobmods-colorupdate"].value == true then
  tank_mk2_tint = {
    r = 1,
    g = 0.7,
    b = 1
  }
  tank_mk3_tint = {
    r = 0.7,
    g = 1,
    b = 0.7
  }
end

function bobmods.warfare.tank_animation(tint)
  return {
    layers = {{
      priority = "low",
      width = 136,
      height = 106,
      frame_count = 2,
      tint = tint,
      direction_count = 64,
      shift = util.by_pixel(0, -10),
      animation_speed = 8,
      max_advance = 1,
      stripes = {{
        filename = "__base__/graphics/entity/tank/tank-base-1.png",
        width_in_frames = 2,
        height_in_frames = 16
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-2.png",
        width_in_frames = 2,
        height_in_frames = 16
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-3.png",
        width_in_frames = 2,
        height_in_frames = 16
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-4.png",
        width_in_frames = 2,
        height_in_frames = 16
      }},
      hr_version = {
        priority = "low",
        width = 270,
        height = 212,
        frame_count = 2,
        tint = tint,
        direction_count = 64,
        shift = util.by_pixel(0, -10),
        animation_speed = 8,
        max_advance = 1,
        stripes = {{
          filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
          width_in_frames = 2,
          height_in_frames = 16
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
          width_in_frames = 2,
          height_in_frames = 16
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
          width_in_frames = 2,
          height_in_frames = 16
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
          width_in_frames = 2,
          height_in_frames = 16
        }},
        scale = 0.5
      }
    }, {
      priority = "low",
      width = 104,
      height = 83,
      frame_count = 2,
      apply_runtime_tint = true,
      direction_count = 64,
      shift = util.by_pixel(0, -21.5),
      max_advance = 1,
      line_length = 2,
      stripes = util.multiplystripes(2, {{
        filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
        width_in_frames = 1,
        height_in_frames = 22
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
        width_in_frames = 1,
        height_in_frames = 22
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
        width_in_frames = 1,
        height_in_frames = 20
      }}),
      hr_version = {
        priority = "low",
        width = 208,
        height = 166,
        frame_count = 2,
        apply_runtime_tint = true,
        direction_count = 64,
        shift = util.by_pixel(0, -21.5),
        max_advance = 1,
        line_length = 2,
        stripes = util.multiplystripes(2, {{
          filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
          width_in_frames = 1,
          height_in_frames = 22
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
          width_in_frames = 1,
          height_in_frames = 22
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
          width_in_frames = 1,
          height_in_frames = 20
        }}),
        scale = 0.5
      }
    }, {
      priority = "low",
      width = 151,
      height = 98,
      frame_count = 2,
      draw_as_shadow = true,
      direction_count = 64,
      shift = util.by_pixel(22.5, 7),
      max_advance = 1,
      stripes = util.multiplystripes(2, {{
        filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
        width_in_frames = 1,
        height_in_frames = 16
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
        width_in_frames = 1,
        height_in_frames = 16
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
        width_in_frames = 1,
        height_in_frames = 16
      }, {
        filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
        width_in_frames = 1,
        height_in_frames = 16
      }}),
      hr_version = {
        priority = "low",
        width = 302,
        height = 194,
        frame_count = 2,
        draw_as_shadow = true,
        direction_count = 64,
        shift = util.by_pixel(22.5, 7),
        max_advance = 1,
        stripes = util.multiplystripes(2, {{
          filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
          width_in_frames = 1,
          height_in_frames = 16
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
          width_in_frames = 1,
          height_in_frames = 16
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
          width_in_frames = 1,
          height_in_frames = 16
        }, {
          filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
          width_in_frames = 1,
          height_in_frames = 16
        }}),
        scale = 0.5
      }
    }}
  }
end

function bobmods.warfare.tank_turret_animation(tint)
  return {
    layers = {{
      filename = "__base__/graphics/entity/tank/tank-turret.png",
      priority = "low",
      line_length = 8,
      width = 90,
      height = 67,
      frame_count = 1,
      tint = tint,
      direction_count = 64,
      shift = util.by_pixel(0, -34.5),
      animation_speed = 8,
      hr_version = {
        filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
        priority = "low",
        line_length = 8,
        width = 179,
        height = 132,
        frame_count = 1,
        tint = tint,
        direction_count = 64,
        shift = util.by_pixel(0.25, -34.5),
        animation_speed = 8,
        scale = 0.5
      }
    }, {
      filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
      priority = "low",
      line_length = 8,
      width = 36,
      height = 33,
      frame_count = 1,
      apply_runtime_tint = true,
      direction_count = 64,
      shift = util.by_pixel(0, -35.5),
      hr_version = {
        filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
        priority = "low",
        line_length = 8,
        width = 72,
        height = 66,
        frame_count = 1,
        apply_runtime_tint = true,
        direction_count = 64,
        shift = util.by_pixel(0, -35.5),
        scale = 0.5
      }
    }, {
      filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
      priority = "low",
      line_length = 8,
      width = 97,
      height = 67,
      frame_count = 1,
      draw_as_shadow = true,
      direction_count = 64,
      shift = util.by_pixel(56.5, 6.5),
      hr_version = {
        filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
        priority = "low",
        line_length = 8,
        width = 193,
        height = 134,
        frame_count = 1,
        draw_as_shadow = true,
        direction_count = 64,
        shift = util.by_pixel(56.25, 6.5),
        scale = 0.5
      }
    }}
  }
end

data:extend({{
  type = "car",
  name = "bob-tank-2",
  icon = "__bobwarfare__/graphics/icons/tank-2.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
  minable = {
    mining_time = 1,
    result = "bob-tank-2"
  },
  max_health = 2500,
  corpse = "tank-remnants",
  dying_explosion = "medium-explosion",
  immune_to_tree_impacts = true,
  immune_to_rock_impacts = true,
  energy_per_hit_point = 0.5,
  resistances = {{
    type = "fire",
    decrease = 25,
    percent = 60
  }, {
    type = "poison",
    decrease = 25,
    percent = 60
  }, {
    type = "physical",
    decrease = 25,
    percent = 45
  }, {
    type = "impact",
    decrease = 100,
    percent = 75
  }, {
    type = "explosion",
    decrease = 25,
    percent = 45
  }, {
    type = "acid",
    decrease = 25,
    percent = 80
  }, {
    type = "plasma",
    decrease = 25,
    percent = 75
  }},
  collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
  selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
  effectivity = 0.95,
  braking_power = "1000kW",
  burner = {
    effectivity = 1.2,
    fuel_inventory_size = 3,
    smoke = {{
      name = "smoke",
      deviation = {0.25, 0.25},
      frequency = 50,
      position = {0, 1.5},
      starting_frame = 3,
      starting_frame_deviation = 5,
      starting_frame_speed = 0,
      starting_frame_speed_deviation = 5
    }}
  },
  consumption = "800kW",
  terrain_friction_modifier = 0.2,
  friction = 0.002,
  light = {{
    type = "oriented",
    minimum_darkness = 0.3,
    picture = {
      filename = "__core__/graphics/light-cone.png",
      priority = "medium",
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {-0.6, -14},
    size = 2,
    intensity = 0.6
  }, {
    type = "oriented",
    minimum_darkness = 0.3,
    picture = {
      filename = "__core__/graphics/light-cone.png",
      priority = "medium",
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {0.6, -14},
    size = 2,
    intensity = 0.6
  }},
  animation = bobmods.warfare.tank_animation(tank_mk2_tint),
  turret_animation = bobmods.warfare.tank_turret_animation(tank_mk2_tint),
  turret_rotation_speed = 0.6 / 60,
  turret_return_timeout = 240,
  stop_trigger_speed = 0.2,
  sound_no_fuel = {{
    filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
    volume = 0.6
  }},
  stop_trigger = {{
    type = "play-sound",
    sound = {{
      filename = "__base__/sound/car-breaks.ogg",
      volume = 0.6
    }}
  }},
  sound_minimum_speed = 0.15,
  vehicle_impact_sound = {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  working_sound = {
    sound = {
      filename = "__base__/sound/fight/tank-engine.ogg",
      volume = 0.6
    },
    activate_sound = {
      filename = "__base__/sound/fight/tank-engine-start.ogg",
      volume = 0.6
    },
    deactivate_sound = {
      filename = "__base__/sound/fight/tank-engine-stop.ogg",
      volume = 0.6
    },
    match_speed_to_activity = true
  },
  open_sound = {
    filename = "__base__/sound/car-door-open.ogg",
    volume = 0.7
  },
  close_sound = {
    filename = "__base__/sound/car-door-close.ogg",
    volume = 0.7
  },
  rotation_speed = 0.006,
  tank_driving = true,
  weight = 20000,
  inventory_size = 100,
  guns = {
    "tank-cannon-2",
    "gatling-gun",
    "tank-flamethrower-2",
    "tank-artillery-1"
  }
}, {
  type = "car",
  name = "bob-tank-3",
  icon = "__bobwarfare__/graphics/icons/tank-3.png",
  icon_size = 64,
  flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
  minable = {
    mining_time = 1,
    result = "bob-tank-3"
  },
  max_health = 5000,
  corpse = "tank-remnants",
  dying_explosion = "medium-explosion",
  immune_to_tree_impacts = true,
  immune_to_rock_impacts = true,
  energy_per_hit_point = 0.5,
  resistances = {{
    type = "fire",
    decrease = 35,
    percent = 75
  }, {
    type = "poison",
    decrease = 35,
    percent = 75
  }, {
    type = "physical",
    decrease = 35,
    percent = 60
  }, {
    type = "impact",
    decrease = 100,
    percent = 95
  }, {
    type = "explosion",
    decrease = 35,
    percent = 60
  }, {
    type = "acid",
    decrease = 35,
    percent = 90
  }, {
    type = "plasma",
    percent = 100
  }},
  collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
  selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
  effectivity = 1,
  braking_power = "1200kW",
  burner = {
    effectivity = 1.4,
    fuel_inventory_size = 4,
    smoke = {{
      name = "smoke",
      deviation = {0.25, 0.25},
      frequency = 50,
      position = {0, 1.5},
      starting_frame = 3,
      starting_frame_deviation = 5,
      starting_frame_speed = 0,
      starting_frame_speed_deviation = 5
    }}
  },
  consumption = "1000kW",
  terrain_friction_modifier = 0.2,
  friction = 0.002,
  light = {{
    type = "oriented",
    minimum_darkness = 0.3,
    picture = {
      filename = "__core__/graphics/light-cone.png",
      priority = "medium",
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {-0.6, -14},
    size = 2,
    intensity = 0.6
  }, {
    type = "oriented",
    minimum_darkness = 0.3,
    picture = {
      filename = "__core__/graphics/light-cone.png",
      priority = "medium",
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {0.6, -14},
    size = 2,
    intensity = 0.6
  }},
  animation = bobmods.warfare.tank_animation(tank_mk3_tint),
  turret_animation = bobmods.warfare.tank_turret_animation(tank_mk3_tint),
  turret_rotation_speed = 1 / 60,
  turret_return_timeout = 180,
  stop_trigger_speed = 0.2,
  sound_no_fuel = {{
    filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
    volume = 0.6
  }},
  stop_trigger = {{
    type = "play-sound",
    sound = {{
      filename = "__base__/sound/car-breaks.ogg",
      volume = 0.6
    }}
  }},
  sound_minimum_speed = 0.15,
  vehicle_impact_sound = {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  working_sound = {
    sound = {
      filename = "__base__/sound/fight/tank-engine.ogg",
      volume = 0.6
    },
    activate_sound = {
      filename = "__base__/sound/fight/tank-engine-start.ogg",
      volume = 0.6
    },
    deactivate_sound = {
      filename = "__base__/sound/fight/tank-engine-stop.ogg",
      volume = 0.6
    },
    match_speed_to_activity = true
  },
  open_sound = {
    filename = "__base__/sound/car-door-open.ogg",
    volume = 0.7
  },
  close_sound = {
    filename = "__base__/sound/car-door-close.ogg",
    volume = 0.7
  },
  rotation_speed = 0.01,
  tank_driving = true,
  weight = 20000,
  inventory_size = 100,
  guns = {
    "tank-cannon-3",
    "gatling-gun",
    "tank-flamethrower-3",
    "tank-artillery-2",
    "tank-laser"
  }
}})