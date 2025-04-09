circuit_connector_definitions["bob-greenhouse"] =
  circuit_connector_definitions.create_vector(universal_connector_template, {
    {
      variation = 27,
      main_offset = util.by_pixel(30.5, 15.5),
      shadow_offset = util.by_pixel(37, 20.5),
      show_shadow = false,
    },
    {
      variation = 27,
      main_offset = util.by_pixel(30.5, 15.5),
      shadow_offset = util.by_pixel(37, 20.5),
      show_shadow = false,
    },
    {
      variation = 27,
      main_offset = util.by_pixel(30.5, 15.5),
      shadow_offset = util.by_pixel(37, 20.5),
      show_shadow = false,
    },
    {
      variation = 27,
      main_offset = util.by_pixel(30.5, 15.5),
      shadow_offset = util.by_pixel(37, 20.5),
      show_shadow = false,
    },
  })

data:extend({
  {
    type = "assembling-machine",
    name = "bob-greenhouse",
    icon = "__bobgreenhouse__/graphics/icons/greenhouse.png",
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
      emissions_per_minute = { pollution = -10 },
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
        pipe_picture = {
          north = {
            filename = "__bobgreenhouse__/graphics/entity/greenhouse-pipe-N.png",
            priority = "extra-high",
            width = 71,
            height = 46,
            shift = util.by_pixel(2.25, 17),
            scale = 0.5,
          },
          east = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-E.png",
            priority = "extra-high",
            width = 42,
            height = 76,
            shift = util.by_pixel(-24.5, 1),
            scale = 0.5,
          },
          south = {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-pipe-S.png",
            priority = "extra-high",
            width = 88,
            height = 61,
            shift = util.by_pixel(0, -31.25),
            scale = 0.5,
          },
          west = {
            filename = "__bobgreenhouse__/graphics/entity/greenhouse-pipe-W.png",
            priority = "extra-high",
            width = 39,
            height = 73,
            shift = util.by_pixel(25.75, 1.25),
            scale = 0.5,
          },
        },
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 0, -1 }, direction = defines.direction.north } },
        secondary_draw_orders = { north = -1 },
      },
    },
    allowed_effects = {},
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__bobgreenhouse__/graphics/entity/greenhouse.png",
            priority = "high",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 3),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/lab/lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 15),
            scale = 0.5,
            draw_as_shadow = true,
          },
        },
      },
      working_visualisations = {
        {
          light = { intensity = 1, size = 6 },
          animation = {
            filename = "__bobgreenhouse__/graphics/entity/greenhouse-light.png",
            frame_count = 1,
            width = 194,
            height = 174,
            shift = util.by_pixel(0, 3),
            scale = 0.5,
            blend_mode = "additive-soft",
          },
        },
      },
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "glass",
  },
})
