if settings.startup["bobmods-mining-waterminers"].value == true and data.raw["resource-category"]["water"] then
  data:extend({{
    type = "item",
    name = "water-miner-1",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    subgroup = "extraction-machine",
    order = "b[fluids]-c[water-miner-1]",
    place_result = "water-miner-1",
    stack_size = 20
  }, {
    type = "item",
    name = "water-miner-2",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    subgroup = "extraction-machine",
    order = "b[fluids]-c[water-miner-2]",
    place_result = "water-miner-2",
    stack_size = 20
  }, {
    type = "item",
    name = "water-miner-3",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    subgroup = "extraction-machine",
    order = "b[fluids]-c[water-miner-3]",
    place_result = "water-miner-3",
    stack_size = 20
  }, {
    type = "item",
    name = "water-miner-4",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    subgroup = "extraction-machine",
    order = "b[fluids]-c[water-miner-4]",
    place_result = "water-miner-4",
    stack_size = 20
  }, {
    type = "item",
    name = "water-miner-5",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    subgroup = "extraction-machine",
    order = "b[fluids]-c[water-miner-5]",
    place_result = "water-miner-5",
    stack_size = 20
  }})

  data:extend({{
    type = "recipe",
    name = "water-miner-1",
    energy_required = 2,
    ingredients = {
      {"iron-plate", 10},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 5},
      {"pipe", 10}
    },
    result = "water-miner-1",
    enabled = false
  }, {
    type = "recipe",
    name = "water-miner-2",
    energy_required = 2,
    ingredients = {
      {"water-miner-1", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 5},
      {"pipe", 10}
    },
    result = "water-miner-2",
    enabled = false
  }, {
    type = "recipe",
    name = "water-miner-3",
    energy_required = 2,
    ingredients = {
      {"water-miner-2", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"advanced-circuit", 5},
      {"pipe", 10}
    },
    result = "water-miner-3",
    enabled = false
  }, {
    type = "recipe",
    name = "water-miner-4",
    energy_required = 2,
    ingredients = {
      {"water-miner-3", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"processing-unit", 5},
      {"pipe", 10}
    },
    result = "water-miner-4",
    enabled = false
  }, {
    type = "recipe",
    name = "water-miner-5",
    energy_required = 2,
    ingredients = {
      {"water-miner-4", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 10},
      {"processing-unit", 5},
      {"pipe", 10}
    },
    result = "water-miner-5",
    enabled = false
  }})

  data:extend({{
    type = "mining-drill",
    name = "water-miner-1",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      result = "water-miner-1"
    },
    resource_categories = {"water"},
    max_health = 100,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      usage_priority = "secondary-input"
    },
    output_fluid_box = {
      base_area = 1,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {{
        type = "output",
        positions = {{1, -2}, {2, -1}, {-1, 2}, {-2, 1}}
      }}
    },
    energy_usage = "45kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification = {module_slots = 1},
    radius_visualisation_picture = {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {
      r = 78,
      g = 173,
      b = 255
    },
    base_picture = data.raw["mining-drill"].pumpjack.base_picture,
    animations = {
      north = {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
        tint = {
          r = 0.2,
          g = 0.8,
          b = 1
        },
        frame_count = 40,
        animation_speed = 0.5
      }
    },
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    working_sound = {
      sound = {filename = "__base__/sound/pumpjack.ogg"},
      apparent_volume = 1.5
    },
    fast_replaceable_group = "pumpjack",
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 7.5
  }, {
    type = "mining-drill",
    name = "water-miner-2",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      result = "water-miner-2"
    },
    resource_categories = {"water"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      usage_priority = "secondary-input"
    },
    output_fluid_box = {
      base_area = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {{
        type = "output",
        positions = {{1, -2}, {2, -1}, {-1, 2}, {-2, 1}}
      }}
    },
    energy_usage = "85kW",
    mining_speed = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture = {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {
      r = 78,
      g = 173,
      b = 255
    },
    base_picture = data.raw["mining-drill"].pumpjack.base_picture,
    animations = {
      north = {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
        tint = {
          r = 0.2,
          g = 0.8,
          b = 1
        },
        frame_count = 40,
        animation_speed = 1
      }
    },
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    working_sound = {
      sound = {filename = "__base__/sound/pumpjack.ogg"},
      apparent_volume = 1.5
    },
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 10
  }, {
    type = "mining-drill",
    name = "water-miner-3",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      result = "water-miner-3"
    },
    resource_categories = {"water"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      usage_priority = "secondary-input"
    },
    output_fluid_box = {
      base_area = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {{
        type = "output",
        positions = {{1, -2}, {2, -1}, {-1, 2}, {-2, 1}}
      }}
    },
    energy_usage = "121kW",
    mining_speed = 3,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification = {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture = {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
      width = 12,
      height = 12
    },
    base_picture = data.raw["mining-drill"].pumpjack.base_picture,
    monitor_visualization_tint = {
      r = 78,
      g = 173,
      b = 255
    },
    animations = {
      north = {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
        tint = {
          r = 0.2,
          g = 0.8,
          b = 1
        },
        frame_count = 40,
        animation_speed = 1.5
      }
    },
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    working_sound = {
      sound = {filename = "__base__/sound/pumpjack.ogg"},
      apparent_volume = 1.5
    },
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 12.5
  }, {
    type = "mining-drill",
    name = "water-miner-4",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      result = "water-miner-4"
    },
    resource_categories = {"water"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      usage_priority = "secondary-input"
    },
    output_fluid_box = {
      base_area = 2.5,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {{
        type = "output",
        positions = {{1, -2}, {2, -1}, {-1, 2}, {-2, 1}}
      }}
    },
    energy_usage = "153kW",
    mining_speed = 4,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification = {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture = {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {
      r = 78,
      g = 173,
      b = 255
    },
    base_picture = data.raw["mining-drill"].pumpjack.base_picture,
    animations = {
      north = {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
        tint = {
          r = 0.2,
          g = 0.8,
          b = 1
        },
        frame_count = 40,
        animation_speed = 2
      }
    },
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    working_sound = {
      sound = {filename = "__base__/sound/pumpjack.ogg"},
      apparent_volume = 1.5
    },
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 15
  }, {
    type = "mining-drill",
    name = "water-miner-5",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 1,
      result = "water-miner-5"
    },
    resource_categories = {"water"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      usage_priority = "secondary-input"
    },
    output_fluid_box = {
      base_area = 3,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {{
        type = "output",
        positions = {{1, -2}, {2, -1}, {-1, 2}, {-2, 1}}
      }}
    },
    energy_usage = "180kW",
    mining_speed = 5,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification = {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture = {
      filename = "__bobmining__/graphics/entity/water-miner/water-miner-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {
      r = 78,
      g = 173,
      b = 255
    },
    base_picture = data.raw["mining-drill"].pumpjack.base_picture,
    animations = {
      north = {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__bobmining__/graphics/entity/water-miner/water-miner-animation.png",
        tint = {
          r = 0.2,
          g = 0.8,
          b = 1
        },
        frame_count = 40,
        animation_speed = 2.5
      }
    },
    vehicle_impact_sound = {
      filename = "__base__/sound/car-metal-impact.ogg",
      volume = 0.65
    },
    working_sound = {
      sound = {filename = "__base__/sound/pumpjack.ogg"},
      apparent_volume = 1.5
    },
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = 17.5
  }})

  data:extend({{
    type = "technology",
    name = "water-miner-1",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    order = "d-a-d-1",
    prerequisites = {},
    unit = {
      count = 10,
      time = 30,
      ingredients = {{"automation-science-pack", 1}}
    },
    effects = {{
      type = "unlock-recipe",
      recipe = "water-miner-1"
    }}
  }, {
    type = "technology",
    name = "water-miner-2",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    order = "d-a-d-2",
    prerequisites = {"water-miner-1", "steel-processing", "electronics"},
    unit = {
      count = 30,
      time = 30,
      ingredients = {{"automation-science-pack", 1}}
    },
    effects = {{
      type = "unlock-recipe",
      recipe = "water-miner-2"
    }}
  }, {
    type = "technology",
    name = "water-miner-3",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    order = "d-a-d-3",
    prerequisites = {"water-miner-2", "advanced-electronics"},
    unit = {
      count = 50,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      }
    },
    effects = {{
      type = "unlock-recipe",
      recipe = "water-miner-3"
    }}
  }, {
    type = "technology",
    name = "water-miner-4",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    order = "d-a-d-4",
    prerequisites = {"water-miner-3", "advanced-electronics-2"},
    unit = {
      count = 75,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      }
    },
    effects = {{
      type = "unlock-recipe",
      recipe = "water-miner-4"
    }}
  }, {
    type = "technology",
    name = "water-miner-5",
    icon = "__bobmining__/graphics/icons/waterdrill.png",
    icon_size = 128,
    order = "d-a-d-5",
    prerequisites = {"water-miner-4"},
    unit = {
      count = 100,
      time = 30,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      }
    },
    effects = {{
      type = "unlock-recipe",
      recipe = "water-miner-5"
    }}
  }})
end