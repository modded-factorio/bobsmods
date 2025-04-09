local hit_effects = require("__base__/prototypes/entity/hit-effects")

local wall_resistances = {
  {
    type = "physical",
    decrease = 3,
    percent = 40,
  },
  {
    type = "impact",
    decrease = 45,
    percent = 60,
  },
  {
    type = "explosion",
    decrease = 20,
    percent = 40,
  },
  {
    type = "fire",
    percent = 100,
  },
  {
    type = "laser",
    percent = 70,
  },
  {
    type = "poison",
    decrease = 6,
    percent = 60,
  },
  {
    type = "acid",
    decrease = 5,
    percent = 40,
  },
  {
    type = "electric",
    percent = 40,
  },
}

data.raw.wall["stone-wall"].max_health = 450
data.raw.wall["stone-wall"].resistances = wall_resistances
data.raw.gate.gate.resistances = wall_resistances
data.raw.wall["stone-wall"].is_military_target = true
data.raw.gate.gate.is_military_target = true

local reinforced_wall_resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 50,
  },
  {
    type = "impact",
    decrease = 80,
    percent = 80,
  },
  {
    type = "explosion",
    decrease = 30,
    percent = 60,
  },
  {
    type = "fire",
    percent = 100,
  },
  {
    type = "laser",
    percent = 70,
  },
  {
    type = "bob-plasma",
    percent = 100,
  },
  {
    type = "poison",
    decrease = 12,
    percent = 75,
  },
  {
    type = "acid",
    decrease = 20,
    percent = 80,
  },
  {
    type = "electric",
    percent = 60,
  },
}

data:extend({
  {
    type = "wall",
    name = "bob-reinforced-wall",
    icon = "__bobwarfare__/graphics/icons/reinforced-wall.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    damaged_trigger_effect = hit_effects.wall(),
    minable = { mining_time = 0.2, result = "bob-reinforced-wall" },
    fast_replaceable_group = "wall",
    max_health = 1250,
    repair_speed_modifier = 2,
    is_military_target = true,
    corpse = "wall-remnants",
    dying_explosion = "wall-explosion",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg" },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.5 },
    impact_category = "stone",
    -- this kind of code can be used for having walls mirror the effect
    -- there can be multiple reaction items
    --attack_reaction =
    --{
    --{
    ---- how far the mirroring works
    --range = 2,
    ---- what kind of damage triggers the mirroring
    ---- if not present then anything triggers the mirroring
    --damage_type = "physical",
    ---- caused damage will be multiplied by this and added to the subsequent damages
    --reaction_modifier = 0.1,
    --action =
    --{
    --type = "direct",
    --action_delivery =
    --{
    --type = "instant",
    --target_effects =
    --{
    --type = "damage",
    ---- always use at least 0.1 damage
    --damage = {amount = 0.1, type = "physical"}
    --}
    --}
    --},
    --}
    --},
    connected_gate_visualization = {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    resistances = reinforced_wall_resistances,
    visual_merge_group = 0, -- different walls will visually connect to each other if their merge group is same (defaults to 0)
    pictures = {
      single = {
        layers = {
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-single.png",
            priority = "extra-high",
            width = 22,
            height = 42,
            shift = { 0, -0.15625 },
          },
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 47,
            height = 32,
            shift = { 0.359375, 0.5 },
            draw_as_shadow = true,
          },
        },
      },
      straight_vertical = {
        {
          layers = {
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = { 0, -0.15625 },
            },
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = { 0.390625, 0.625 },
              draw_as_shadow = true,
            },
          },
        },
        {
          layers = {
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-vertical-2.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = { 0, -0.15625 },
            },
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = { 0.390625, 0.625 },
              draw_as_shadow = true,
            },
          },
        },
        {
          layers = {
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-vertical-3.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = { 0, -0.15625 },
            },
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = { 0.390625, 0.625 },
              draw_as_shadow = true,
            },
          },
        },
      },
      straight_horizontal = {
        {
          layers = {
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = { 0, -0.15625 },
            },
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = { 0.421875, 0.5 },
              draw_as_shadow = true,
            },
          },
        },
        {
          layers = {
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-horizontal-2.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = { 0, -0.15625 },
            },
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = { 0.421875, 0.5 },
              draw_as_shadow = true,
            },
          },
        },
        {
          layers = {
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-horizontal-3.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = { 0, -0.15625 },
            },
            {
              filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = { 0.421875, 0.5 },
              draw_as_shadow = true,
            },
          },
        },
      },
      corner_right_down = {
        layers = {
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-corner-right-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = { 0.078125, -0.15625 },
          },
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-corner-right-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 61,
            shift = { 0.484375, 0.640625 },
            draw_as_shadow = true,
          },
        },
      },
      corner_left_down = {
        layers = {
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-corner-left-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = { -0.078125, -0.15625 },
          },
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-corner-left-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 60,
            shift = { 0.328125, 0.640625 },
            draw_as_shadow = true,
          },
        },
      },
      t_up = {
        layers = {
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 42,
            shift = { 0, -0.15625 },
          },
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-t-down-shadow.png",
            priority = "extra-high",
            width = 71,
            height = 61,
            shift = { 0.546875, 0.640625 },
            draw_as_shadow = true,
          },
        },
      },
      ending_right = {
        layers = {
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-ending-right.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = { 0.078125, -0.15625 },
          },
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = { 0.484375, 0.5 },
            draw_as_shadow = true,
          },
        },
      },
      ending_left = {
        layers = {
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-ending-left.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = { -0.078125, -0.15625 },
          },
          {
            filename = "__bobwarfare__/graphics/entities/reinforced-wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = { 0.328125, 0.5 },
            draw_as_shadow = true,
          },
        },
      },
      water_connection_patch = {
        sheets = {
          {
            filename = "__base__/graphics/entity/wall/wall-patch.png",
            priority = "extra-high",
            width = 116,
            height = 128,
            line_length = 4,
            shift = util.by_pixel(0, -2),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
            priority = "extra-high",
            width = 144,
            height = 100,
            line_length = 4,
            shift = util.by_pixel(9, 15),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      gate_connection_patch = {
        sheets = {
          {
            filename = "__base__/graphics/entity/wall/wall-gate.png",
            priority = "extra-high",
            width = 82,
            height = 108,
            shift = util.by_pixel(0, -7),
            scale = 0.5,
          },
          {
            filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
            priority = "extra-high",
            width = 130,
            height = 78,
            shift = util.by_pixel(14, 18),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
    },
    wall_diode_green = {
      sheet = {
        filename = "__base__/graphics/entity/wall/wall-diode-green.png",
        priority = "extra-high",
        width = 72,
        height = 44,
        draw_as_glow = true,
        line_length = 4,
        shift = util.by_pixel(-1, -23),
        scale = 0.5,
      },
    },
    wall_diode_green_light_top = {
      minimum_darkness = 0.3,
      color = { g = 1 },
      shift = util.by_pixel(0, -30),
      size = 1,
      intensity = 0.3,
    },
    wall_diode_green_light_right = {
      minimum_darkness = 0.3,
      color = { g = 1 },
      shift = util.by_pixel(12, -23),
      size = 1,
      intensity = 0.3,
    },
    wall_diode_green_light_bottom = {
      minimum_darkness = 0.3,
      color = { g = 1 },
      shift = util.by_pixel(0, -17),
      size = 1,
      intensity = 0.3,
    },
    wall_diode_green_light_left = {
      minimum_darkness = 0.3,
      color = { g = 1 },
      shift = util.by_pixel(-12, -23),
      size = 1,
      intensity = 0.3,
    },

    wall_diode_red = {
      sheet = {
        filename = "__base__/graphics/entity/wall/wall-diode-red.png",
        priority = "extra-high",
        width = 72,
        height = 44,
        draw_as_glow = true,
        line_length = 4,
        shift = util.by_pixel(-1, -23),
        scale = 0.5,
      },
    },
    wall_diode_red_light_top = {
      minimum_darkness = 0.3,
      color = { r = 1 },
      shift = util.by_pixel(0, -30),
      size = 1,
      intensity = 0.3,
    },
    wall_diode_red_light_right = {
      minimum_darkness = 0.3,
      color = { r = 1 },
      shift = util.by_pixel(12, -23),
      size = 1,
      intensity = 0.3,
    },
    wall_diode_red_light_bottom = {
      minimum_darkness = 0.3,
      color = { r = 1 },
      shift = util.by_pixel(0, -17),
      size = 1,
      intensity = 0.3,
    },
    wall_diode_red_light_left = {
      minimum_darkness = 0.3,
      color = { r = 1 },
      shift = util.by_pixel(-12, -23),
      size = 1,
      intensity = 0.3,
    },
    circuit_connector = circuit_connector_definitions["wall"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = { type = "virtual", name = "signal-G" },
  },

  util.merge({
    data.raw.gate.gate,
    {
      name = "bob-reinforced-gate",
      minable = { mining_time = 0.1, result = "bob-reinforced-gate" },
      max_health = 750,
      opening_speed = 0.1,
    },
  }),
})

data.raw.gate["bob-reinforced-gate"].resistances = reinforced_wall_resistances
