local beacons = { "beacon", "bob-beacon-2", "bob-beacon-3" }

local empty_fill_layer = {
  pictures = {
    filename = "__core__/graphics/empty.png",
    priority = "high",
    size = 1,
    line_length = 1,
    variation_count = 1,
  },
}

local function get_shift(shift)
  local shift_x, shift_y = 0, 0
  if shift then
    shift_x = shift.x and shift.x or shift[1]
    shift_y = shift.y and shift.y or shift[2]
  end

  return shift_x, shift_y
end

local function create_tiered_module_slot_1(num_lights, shift)
  local shift_x, shift_y = get_shift(shift)

  ---@type data.BeaconModuleVisualization[]
  local slot = {
    -- Slot Base
    {
      has_empty_slot = true,
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/" .. num_lights .. "-lights/1/beacon-module-slot-1.png",
        line_length = num_lights + 1,
        width = 50,
        height = 66,
        variation_count = num_lights + 1,
        scale = 0.5,
        shift = util.by_pixel(-16 + shift_x, 14.5 + shift_y),
      },
    },
    -- Slot Mask
    {
      apply_module_tint = "primary",
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/"
          .. num_lights
          .. "-lights/1/beacon-module-mask-box-1.png",
        line_length = num_lights,
        width = 36,
        height = 32,
        variation_count = num_lights,
        scale = 0.5,
        shift = util.by_pixel(-17 + shift_x, 15 + shift_y),
      },
    },
    -- Slot Lights Count
    {
      apply_module_tint = "secondary",
      render_layer = "lower-object-above-shadow",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/"
          .. num_lights
          .. "-lights/1/beacon-module-mask-lights-1.png",
        line_length = num_lights,
        width = 26,
        height = 22,
        variation_count = num_lights,
        scale = 0.5,
        shift = util.by_pixel(-18.5 + shift_x, 13 + shift_y),
      },
    },
    -- Slot Lights Radiance
    {
      apply_module_tint = "secondary",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/"
          .. num_lights
          .. "-lights/1/beacon-module-lights-1.png",
        line_length = num_lights,
        width = 56,
        height = 42,
        variation_count = num_lights,
        draw_as_light = true,
        shift = util.by_pixel(-18 + shift_x, 13 + shift_y),
        scale = 0.5,
      },
    },
  }

  return slot
end

local function create_tiered_module_slot_2(num_lights, shift)
  local shift_x, shift_y = get_shift(shift)

  ---@type data.BeaconModuleVisualization[]
  local slot = {
    {
      has_empty_slot = true,
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/" .. num_lights .. "-lights/2/beacon-module-slot-2.png",
        line_length = num_lights + 1,
        width = 46,
        height = 44,
        variation_count = num_lights + 1,
        scale = 0.5,
        shift = util.by_pixel(19 + shift_x, -12 + shift_y),
      },
    },
    {
      apply_module_tint = "primary",
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/"
          .. num_lights
          .. "-lights/2/beacon-module-mask-box-2.png",
        line_length = num_lights,
        width = 36,
        height = 28,
        variation_count = num_lights,
        scale = 0.5,
        shift = util.by_pixel(20.5 + shift_x, -12 + shift_y),
      },
    },
    {
      apply_module_tint = "secondary",
      render_layer = "lower-object-above-shadow",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/"
          .. num_lights
          .. "-lights/2/beacon-module-mask-lights-2.png",
        line_length = num_lights,
        width = 24,
        height = 16,
        variation_count = num_lights,
        scale = 0.5,
        shift = util.by_pixel(21.5 + shift_x, -15.5 + shift_y),
      },
    },
    {
      apply_module_tint = "secondary",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/"
          .. num_lights
          .. "-lights/2/beacon-module-lights-2.png",
        line_length = num_lights,
        width = 66,
        height = 46,
        variation_count = num_lights,
        draw_as_light = true,
        shift = util.by_pixel(22 + shift_x, -16 + shift_y),
        scale = 0.5,
      },
    },
  }

  return slot
end

local function create_god_module_slot_1(type_name, shift)
  local shift_x, shift_y = get_shift(shift)

  ---@type data.BeaconModuleVisualization[]
  local slot = {
    -- Slot Base
    {
      has_empty_slot = true,
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/1/" .. type_name .. "-module-slot-1.png",
        line_length = 2,
        width = 50,
        height = 66,
        variation_count = 2,
        scale = 0.5,
        shift = util.by_pixel(-16 + shift_x, 14.5 + shift_y),
      },
    },
    -- Slot Mask
    {
      apply_module_tint = "none",
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/1/base-module-mask-box-1.png",
        line_length = 1,
        width = 36,
        height = 32,
        variation_count = 1,
        scale = 0.5,
        shift = util.by_pixel(-17 + shift_x, 15 + shift_y),
      },
    },
    -- Slot Lights Count
    {
      apply_module_tint = "none",
      render_layer = "lower-object-above-shadow",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/1/"
          .. type_name
          .. "-module-mask-lights-1.png",
        line_length = 1,
        width = 26,
        height = 22,
        variation_count = 1,
        scale = 0.5,
        shift = util.by_pixel(-18.5 + shift_x, 13 + shift_y),
      },
    },
    -- Slot Lights Radiance
    {
      apply_module_tint = "none",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/1/" .. type_name .. "-module-lights-1.png",
        line_length = 1,
        width = 56,
        height = 42,
        variation_count = 1,
        draw_as_light = true,
        shift = util.by_pixel(-18 + shift_x, 13 + shift_y),
        scale = 0.5,
      },
    },
  }

  return slot
end

local function create_god_module_slot_2(type_name, shift)
  local shift_x, shift_y = get_shift(shift)

  ---@type data.BeaconModuleVisualization[]
  local slot = {
    {
      has_empty_slot = true,
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/2/" .. type_name .. "-module-slot-2.png",
        line_length = 2,
        width = 46,
        height = 44,
        variation_count = 2,
        scale = 0.5,
        shift = util.by_pixel(19 + shift_x, -12 + shift_y),
      },
    },
    {
      apply_module_tint = "none",
      render_layer = "lower-object",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/2/base-module-mask-box-2.png",
        line_length = 1,
        width = 36,
        height = 28,
        variation_count = 1,
        scale = 0.5,
        shift = util.by_pixel(20.5 + shift_x, -12 + shift_y),
      },
    },
    {
      apply_module_tint = "none",
      render_layer = "lower-object-above-shadow",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/2/"
          .. type_name
          .. "-module-mask-lights-2.png",
        line_length = 1,
        width = 24,
        height = 16,
        variation_count = 1,
        scale = 0.5,
        shift = util.by_pixel(21.5 + shift_x, -15.5 + shift_y),
      },
    },
    {
      apply_module_tint = "none",
      pictures = {
        filename = "__bobmodules__/graphics/entity/beacon/slots/god-modules/2/" .. type_name .. "-module-lights-2.png",
        line_length = 1,
        width = 66,
        height = 46,
        variation_count = 1,
        draw_as_light = true,
        shift = util.by_pixel(22 + shift_x, -16 + shift_y),
        scale = 0.5,
      },
    },
  }

  return slot
end

local function create_vanilla_module_slot_1(shift)
  local shift_x, shift_y = get_shift(shift)

  ---@type data.BeaconModuleVisualization[]
  local slot = {
    -- Slot Base
    {
      has_empty_slot = true,
      render_layer = "lower-object",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-slot-1.png",
        line_length = 4,
        width = 50,
        height = 66,
        variation_count = 4,
        scale = 0.5,
        shift = util.by_pixel(-16 + shift_x, 14.5 + shift_y),
      },
    },
    -- Slot Mask
    {
      apply_module_tint = "primary",
      render_layer = "lower-object",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-mask-box-1.png",
        line_length = 3,
        width = 36,
        height = 32,
        variation_count = 3,
        scale = 0.5,
        shift = util.by_pixel(-17 + shift_x, 15 + shift_y),
      },
    },
    -- Slot Lights Count
    {
      apply_module_tint = "secondary",
      render_layer = "lower-object-above-shadow",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-mask-lights-1.png",
        line_length = 3,
        width = 26,
        height = 12,
        variation_count = 3,
        scale = 0.5,
        shift = util.by_pixel(-18.5 + shift_x, 13 + shift_y),
      },
    },
    -- Slot Lights Radiance
    {
      apply_module_tint = "secondary",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-lights-1.png",
        line_length = 3,
        width = 56,
        height = 42,
        variation_count = 3,
        draw_as_light = true,
        shift = util.by_pixel(-18 + shift_x, 13 + shift_y),
        scale = 0.5,
      },
    },
  }

  return slot
end

local function create_vanilla_module_slot_2(shift)
  local shift_x, shift_y = get_shift(shift)

  ---@type data.BeaconModuleVisualization[]
  local slot = {
    {
      has_empty_slot = true,
      render_layer = "lower-object",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-slot-2.png",
        line_length = 4,
        width = 46,
        height = 44,
        variation_count = 4,
        scale = 0.5,
        shift = util.by_pixel(19 + shift_x, -12 + shift_y),
      },
    },
    {
      apply_module_tint = "primary",
      render_layer = "lower-object",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-mask-box-2.png",
        line_length = 3,
        width = 36,
        height = 26,
        variation_count = 3,
        scale = 0.5,
        shift = util.by_pixel(20.5 + shift_x, -12 + shift_y),
      },
    },
    {
      apply_module_tint = "secondary",
      render_layer = "lower-object-above-shadow",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-mask-lights-2.png",
        line_length = 3,
        width = 24,
        height = 14,
        variation_count = 3,
        scale = 0.5,
        shift = util.by_pixel(22 + shift_x, -15.5 + shift_y),
      },
    },
    {
      apply_module_tint = "secondary",
      pictures = {
        filename = "__base__/graphics/entity/beacon/beacon-module-lights-2.png",
        line_length = 3,
        width = 66,
        height = 46,
        variation_count = 3,
        draw_as_light = true,
        shift = util.by_pixel(22 + shift_x, -16 + shift_y),
        scale = 0.5,
      },
    },
  }

  return slot
end

local function append_pad_layer(slot)
  -- Fixes interleaved render orders
  table.insert(slot, 1, empty_fill_layer)

  return slot
end

for _, name in pairs(beacons) do
  ---@type data.BeaconPrototype
  local beacon = data.raw["beacon"][name]

  if beacon.module_slots == 2 then
    -- 5 light modules
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-5-lights",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_tiered_module_slot_1(5),
        create_tiered_module_slot_2(5),
      },
    })

    -- Base God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-base",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("base"),
        create_god_module_slot_2("base"),
      },
    })

    -- Productivity God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-productivity",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("productivity"),
        create_god_module_slot_2("productivity"),
      },
    })

    -- Quality God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-quality",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("quality"),
        create_god_module_slot_2("quality"),
      },
    })
  elseif beacon.module_slots == 4 then
    -- Redo vanilla module slots.
    beacon.graphics_set.module_visualisations[1] = {
      art_style = "vanilla",
      use_for_empty_slots = true,
      tier_offset = 0,
      slots = {
        create_vanilla_module_slot_1({ -3, -2.5 }), -- Shifted left and up, below other module slot
        create_vanilla_module_slot_2({ -8.5, -5.5 }), -- Shifted left and up, below other module slot
        create_vanilla_module_slot_1({ 12, 5 }), -- Shifted right and down, above other module slot
        create_vanilla_module_slot_2({ 2, 5 }), -- Shifted right and down, above other module slot
      },
    }

    -- 5 light modules
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-5-lights",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_tiered_module_slot_1(5, { -3, -2.5 }), -- Shifted left and up, below other module slot
        create_tiered_module_slot_2(5, { -8.5, -5.5 }), -- Shifted left and up, below other module slot
        create_tiered_module_slot_1(5, { 12, 5 }), -- Shifted right and down, above other module slot
        create_tiered_module_slot_2(5, { 2, 5 }), -- Shifted right and down, above other module slot
      },
    })

    -- Base God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-base",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("base", { -3, -2.5 }), -- Shifted left and up, below other module slot
        create_god_module_slot_2("base", { -8.5, -5.5 }), -- Shifted left and up, below other module slot
        create_god_module_slot_1("base", { 12, 5 }), -- Shifted right and down, above other module slot
        create_god_module_slot_2("base", { 2, 5 }), -- Shifted right and down, above other module slot
      },
    })

    -- Productivity God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-productivity",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("productivity", { -3, -2.5 }), -- Shifted left and up, below other module slot
        create_god_module_slot_2("productivity", { -8.5, -5.5 }), -- Shifted left and up, below other module slot
        create_god_module_slot_1("productivity", { 12, 5 }), -- Shifted right and down, above other module slot
        create_god_module_slot_2("productivity", { 2, 5 }), -- Shifted right and down, above other module slot
      },
    })

    -- Quality God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-quality",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("quality", { -3, -2.5 }), -- Shifted left and up, below other module slot
        create_god_module_slot_2("quality", { -8.5, -5.5 }), -- Shifted left and up, below other module slot
        create_god_module_slot_1("quality", { 12, 5 }), -- Shifted right and down, above other module slot
        create_god_module_slot_2("quality", { 2, 5 }), -- Shifted right and down, above other module slot
      },
    })
  elseif beacon.module_slots == 6 then
    -- Redo vanilla module slots.
    beacon.graphics_set.module_visualisations[1] = {
      art_style = "vanilla",
      use_for_empty_slots = true,
      tier_offset = 0,
      slots = {
        create_vanilla_module_slot_1({ -10.5, -11 }), -- Slot 1, shifted left and up, below all
        create_vanilla_module_slot_2({ 7.5, -2 }), -- Slot 2, shifted right and up, below all
        create_vanilla_module_slot_1({ -1.5, 7 }), -- Slot 1, shifted left and down, middle
        create_vanilla_module_slot_2({ -11, -6.5 }), -- Slot 2, shifted left and up, middle
        create_vanilla_module_slot_1({ 17, 3 }), -- Slot 1, shifted right and down, above all
        append_pad_layer(create_vanilla_module_slot_2({ 4.5, 8 })), -- Slot 2, shifted right and down, above all
      },
    }

    -- 5 light modules
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-5-lights",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_tiered_module_slot_1(5, { -10.5, -11 }), -- Slot 1, shifted left and up, below all
        create_tiered_module_slot_2(5, { 7.5, -2 }), -- Slot 2, shifted right and up, below all
        create_tiered_module_slot_1(5, { -1.5, 7 }), -- Slot 1, shifted left and down, middle
        create_tiered_module_slot_2(5, { -11, -6.5 }), -- Slot 2, shifted left and up, middle
        create_tiered_module_slot_1(5, { 17, 3 }), -- Slot 1, shifted right and down, above all
        append_pad_layer(create_tiered_module_slot_2(5, { 4.5, 8 })), -- Slot 2, shifted right and down, above all
      },
    })

    -- Base God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-base",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("base", { -10.5, -11 }), -- Slot 1, shifted left and up, below all
        create_god_module_slot_2("base", { 7.5, -2 }), -- Slot 2, shifted right and up, below all
        create_god_module_slot_1("base", { -1.5, 7 }), -- Slot 1, shifted left and down, middle
        create_god_module_slot_2("base", { -11, -6.5 }), -- Slot 2, shifted left and up, middle
        create_god_module_slot_1("base", { 17, 3 }), -- Slot 1, shifted right and down, above all
        append_pad_layer(create_god_module_slot_2("base", { 4.5, 8 })), -- Slot 2, shifted right and down, above all
      },
    })

    -- Productivity God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-productivity",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("productivity", { -10.5, -11 }), -- Slot 1, shifted left and up, below all
        create_god_module_slot_2("productivity", { 7.5, -2 }), -- Slot 2, shifted right and up, below all
        create_god_module_slot_1("productivity", { -1.5, 7 }), -- Slot 1, shifted left and down, middle
        create_god_module_slot_2("productivity", { -11, -6.5 }), -- Slot 2, shifted left and up, middle
        create_god_module_slot_1("productivity", { 17, 3 }), -- Slot 1, shifted right and down, above all
        append_pad_layer(create_god_module_slot_2("productivity", { 4.5, 8 })), -- Slot 2, shifted right and down, above all
      },
    })

    -- Quality God Module
    table.insert(beacon.graphics_set.module_visualisations, {
      art_style = "bob-god-quality",
      use_for_empty_slots = false,
      tier_offset = 0,
      slots = {
        create_god_module_slot_1("quality", { -10.5, -11 }), -- Slot 1, shifted left and up, below all
        create_god_module_slot_2("quality", { 7.5, -2 }), -- Slot 2, shifted right and up, below all
        create_god_module_slot_1("quality", { -1.5, 7 }), -- Slot 1, shifted left and down, middle
        create_god_module_slot_2("quality", { -11, -6.5 }), -- Slot 2, shifted left and up, middle
        create_god_module_slot_1("quality", { 17, 3 }), -- Slot 1, shifted right and down, above all
        append_pad_layer(create_god_module_slot_2("quality", { 4.5, 8 })), -- Slot 2, shifted right and down, above all
      },
    })
  end
end
