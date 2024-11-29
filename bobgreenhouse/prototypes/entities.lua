circuit_connector_definitions["bob-greenhouse"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    { variation = 27, main_offset = util.by_pixel(30.5, 15.5), shadow_offset = util.by_pixel(37, 20.5), show_shadow = false },
    { variation = 27, main_offset = util.by_pixel(30.5, 15.5), shadow_offset = util.by_pixel(37, 20.5), show_shadow = false },
    { variation = 27, main_offset = util.by_pixel(30.5, 15.5), shadow_offset = util.by_pixel(37, 20.5), show_shadow = false },
    { variation = 27, main_offset = util.by_pixel(30.5, 15.5), shadow_offset = util.by_pixel(37, 20.5), show_shadow = false },
  })

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
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["bob-greenhouse"],
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "bob-greenhouse",
    crafting_categories = { "bob-greenhouse" },
    crafting_speed = 0.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = -10,
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
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -1 }, direction = defines.direction.north } },
        secondary_draw_orders = { north = -1 },
      },
    },
    allowed_effects = {},
    graphics_set = {
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
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "glass",
  },
})
