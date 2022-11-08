data:extend({
  {
    type = "assembling-machine",
    name = "bob-greenhouse",
    icon = "__bobgreenhouse__/graphics/icons/greenhouse.png",
    icon_size = 32,
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "bob-greenhouse" },
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "bob-greenhouse",
    crafting_categories = { "bob-greenhouse" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "100kW", --"25kW",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = { { type = "input", position = { 0, -2 } } },
      },
    },
    module_specification = {
      module_slots = 0,
    },
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    animation = {
      filename = "__bobgreenhouse__/graphics/entity/greenhouse.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = { 0.2, 0.15 },
    },
    working_visualisations = {
      {
        light = { intensity = 1, size = 6 },
        animation = {
          filename = "__bobgreenhouse__/graphics/entity/greenhouse-light.png",
          width = 113,
          height = 91,
          frame_count = 1,
          shift = { 0.2, 0.15 },
        },
      },
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  },
})
