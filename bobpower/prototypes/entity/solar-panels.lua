if settings.startup["bobmods-power-solar"].value == true then
  data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
  data.raw["solar-panel"]["solar-panel"].next_upgrade = "solar-panel-2"

  data:extend({{
    type = "solar-panel",
    name = "solar-panel-small",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-small"
    },
    max_health = 100,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-s.png",
      priority = "high",
      width = 71,
      height = 66
    },
    production = "26.67kW",
    fast_replaceable_group = "solar-panel",
    next_upgrade = "solar-panel-small-2"
  }, {
    type = "solar-panel",
    name = "solar-panel-large",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-large"
    },
    max_health = 300,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-l.png",
      priority = "high",
      width = 128,
      height = 123
    },
    production = "106.67kW",
    fast_replaceable_group = "solar-panel",
    next_upgrade = "solar-panel-large-2"
  }, {
    type = "solar-panel",
    name = "solar-panel-small-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-small-2"
    },
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-s2.png",
      priority = "high",
      width = 72,
      height = 69
    },
    production = "40kW",
    fast_replaceable_group = "solar-panel",
    next_upgrade = "solar-panel-small-3"
  }, {
    type = "solar-panel",
    name = "solar-panel-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-2"
    },
    max_health = 300,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-2.png",
      priority = "high",
      width = 104,
      height = 97
    },
    production = "90kW",
    fast_replaceable_group = "solar-panel",
    next_upgrade = "solar-panel-3"
  }, {
    type = "solar-panel",
    name = "solar-panel-large-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-large-2"
    },
    max_health = 450,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-l2.png",
      priority = "high",
      width = 136,
      height = 126
    },
    production = "160kW",
    fast_replaceable_group = "solar-panel",
    next_upgrade = "solar-panel-large-3"
  }, {
    type = "solar-panel",
    name = "solar-panel-small-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-small-3"
    },
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-s2.png",
      priority = "high",
      width = 72,
      height = 69
    },
    production = "60kW",
    fast_replaceable_group = "solar-panel"
  }, {
    type = "solar-panel",
    name = "solar-panel-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-3"
    },
    max_health = 400,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-2.png",
      priority = "high",
      width = 104,
      height = 97
    },
    production = "135kW",
    fast_replaceable_group = "solar-panel"
  }, {
    type = "solar-panel",
    name = "solar-panel-large-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {
      mining_time = 0.5,
      result = "solar-panel-large-3"
    },
    max_health = 600,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    energy_source = {
      type = "electric",
      usage_priority = "solar"
    },
    picture = {
      filename = "__bobpower__/graphics/solar-panel/solar-panel-l2.png",
      priority = "high",
      width = 136,
      height = 126
    },
    production = "240kW",
    fast_replaceable_group = "solar-panel"
  }})
end