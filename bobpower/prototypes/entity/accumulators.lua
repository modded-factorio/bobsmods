local sounds = require("__base__.prototypes.entity.sounds")
--local hit_effects = require ("__base__.prototypes.entity.hit-effects")

if settings.startup["bobmods-power-accumulators"].value == true then
  local accumulator = data.raw["accumulator"]["accumulator"]
  accumulator.fast_replaceable_group = "accumulator"
  accumulator.next_upgrade = "large-accumulator-2"
  accumulator.energy_source = {
    type = "electric",
    buffer_capacity = "10MJ",
    usage_priority = "tertiary",
    input_flow_limit = "600kW",
    output_flow_limit = "600kW"
  }
  accumulator.localised_name = {"entity-name.large-accumulator"}
  accumulator.localised_description = {"entity-description.large-accumulator"}

  function bobmods.power.large_accumulator_picture(tint, repeat_count)
    return {
      layers = {{
        filename = "__bobpower__/graphics/accumulator/large-accumulator.png",
        priority = "high",
        width = 66,
        height = 110,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -18),
        tint = tint,
        animation_speed = 0.5,
        hr_version = {
          filename = "__bobpower__/graphics/accumulator/hr-large-accumulator.png",
          priority = "high",
          width = 130,
          height = 221,
          repeat_count = repeat_count,
          shift = util.by_pixel(0, -19),
          tint = tint,
          animation_speed = 0.5,
          scale = 0.5
        }
      }, {
        filename = "__bobpower__/graphics/accumulator/large-accumulator-shadow.png",
        priority = "high",
        width = 140,
        height = 54,
        repeat_count = repeat_count,
        shift = util.by_pixel(48, 6),
        draw_as_shadow = true,
        hr_version = {
          filename = "__bobpower__/graphics/accumulator/hr-large-accumulator-shadow.png",
          priority = "high",
          width = 274,
          height = 106,
          repeat_count = repeat_count,
          shift = util.by_pixel(49, 6),
          draw_as_shadow = true,
          scale = 0.5
        }
      }}
    }
  end

  function bobmods.power.large_accumulator_charge()
    return {
      layers = {bobmods.power.large_accumulator_picture(
        {
          r = 1,
          g = 1,
          b = 1,
          a = 1
        },
        24
      ), {
        filename = "__base__/graphics/entity/accumulator/accumulator-charge.png",
        priority = "high",
        width = 90,
        height = 100,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(0, -38),
        hr_version = {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(0, -38),
          scale = 0.5
        }
      }}
    }
  end

  function bobmods.power.large_accumulator_discharge()
    return {
      layers = {bobmods.power.large_accumulator_picture(
        {
          r = 1,
          g = 1,
          b = 1,
          a = 1
        },
        24
      ), {
        filename = "__base__/graphics/entity/accumulator/accumulator-discharge.png",
        priority = "high",
        width = 88,
        height = 104,
        line_length = 6,
        frame_count = 24,
        blend_mode = "additive",
        shift = util.by_pixel(-2, -38),
        hr_version = {
          filename = "__base__/graphics/entity/accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(-1, -38),
          scale = 0.5
        }
      }}
    }
  end

  data:extend({{
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
  --    damaged_trigger_effect = hit_effects.entity(),
    type = "accumulator",
    name = "fast-accumulator",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "fast-accumulator"
    },
    max_health = 150,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "4MJ",
      usage_priority = "tertiary",
      input_flow_limit = "240kW",
      output_flow_limit = "960kW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    next_upgrade = "fast-accumulator-2",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 9,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "slow-accumulator",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "slow-accumulator"
    },
    max_health = 150,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "4MJ",
      usage_priority = "tertiary",
      input_flow_limit = "240kW",
      output_flow_limit = "30kW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    next_upgrade = "slow-accumulator-2",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 9,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "large-accumulator-2",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "large-accumulator-2"
    },
    max_health = 250,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "15MJ",
      usage_priority = "tertiary",
      input_flow_limit = "900kW",
      output_flow_limit = "900kW"
    },
    picture = bobmods.power.large_accumulator_picture(),
    charge_animation = bobmods.power.large_accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = bobmods.power.large_accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    next_upgrade = "large-accumulator-3",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 10,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "fast-accumulator-2",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "fast-accumulator-2"
    },
    max_health = 250,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "6MJ",
      usage_priority = "tertiary",
      input_flow_limit = "360kW",
      output_flow_limit = "1440kW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    next_upgrade = "fast-accumulator-3",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 10,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "slow-accumulator-2",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "slow-accumulator-2"
    },
    max_health = 250,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "6MJ",
      usage_priority = "tertiary",
      input_flow_limit = "360kW",
      output_flow_limit = "45kW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    next_upgrade = "slow-accumulator-3",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 10,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "large-accumulator-3",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "large-accumulator-3"
    },
    max_health = 350,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "22.5MJ",
      usage_priority = "tertiary",
      input_flow_limit = "1350kW",
      output_flow_limit = "1350kW"
    },
    picture = bobmods.power.large_accumulator_picture(),
    charge_animation = bobmods.power.large_accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = bobmods.power.large_accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 12.5,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "fast-accumulator-3",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "fast-accumulator-3"
    },
    max_health = 350,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "9MJ",
      usage_priority = "tertiary",
      input_flow_limit = "540kW",
      output_flow_limit = "2160kW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 12.5,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }, {
    type = "accumulator",
    name = "slow-accumulator-3",
    icon = "__base__/graphics/icons/accumulator.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "slow-accumulator-3"
    },
    max_health = 350,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -1.5}, {1, 1}},
    energy_source = {
      type = "electric",
      buffer_capacity = "9MJ",
      usage_priority = "tertiary",
      input_flow_limit = "540kW",
      output_flow_limit = "65kW"
    },
    picture = accumulator_picture(),
    charge_animation = accumulator_charge(),
    water_reflection = accumulator_reflection(),
    charge_cooldown = 30,
    charge_light = {
      intensity = 0.3,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    discharge_animation = accumulator_discharge(),
    discharge_cooldown = 60,
    discharge_light = {
      intensity = 0.7,
      size = 7,
      color = {
        r = 1.0,
        g = 1.0,
        b = 1.0
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    working_sound = {
      sound = {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3,
      fade_in_ticks = 10,
      fade_out_ticks = 30
    },
    fast_replaceable_group = "accumulator",
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = 12.5,
    default_output_signal = {
      type = "virtual",
      name = "signal-A"
    }
  }})
end