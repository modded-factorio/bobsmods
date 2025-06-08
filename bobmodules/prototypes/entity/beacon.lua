local beacons = { "beacon", "bob-beacon-2", "bob-beacon-3" }

local module_slots_to_base_image_map = {
  [2] = 1,
  [4] = 2,
  [6] = 3,
}

for _, name in pairs(beacons) do
  ---@type data.BeaconPrototype
  local beacon = data.raw["beacon"][name]

  -- Fallback to the basic beacon if not a supported count of module slots.
  local image_index = module_slots_to_base_image_map[beacon.module_slots] or 1

  beacon.graphics_set.animation_list = {
    {
      render_layer = "floor-mechanics",
      always_draw = true,
      animation = {
        layers = {
          {
            filename = "__bobmodules__/graphics/entity/beacon/beacon-" .. image_index .. "-bottom.png",
            width = 212,
            height = 192,
            scale = 0.5,
            shift = util.by_pixel(0.5, 1),
          },
          {
            filename = "__base__/graphics/entity/beacon/beacon-shadow.png",
            width = 244,
            height = 176,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(12.5, 0.5),
          },
        },
      },
    },
    {
      render_layer = "object",
      always_draw = true,
      animation = {
        filename = "__bobmodules__/graphics/entity/beacon/beacon-" .. image_index .. "-top.png",
        width = 96,
        height = 140,
        scale = 0.5,
        repeat_count = 45,
        animation_speed = 0.5,
        shift = util.by_pixel(3, -19),
      },
    },
    {
      render_layer = "object",
      apply_tint = true,
      always_draw = false,
      animation = {
        filename = "__base__/graphics/entity/beacon/beacon-light.png",
        line_length = 9,
        width = 110,
        height = 186,
        frame_count = 45,
        animation_speed = 0.5,
        draw_as_glow = true,
        scale = 0.5,
        shift = util.by_pixel(0.5, -18),
        blend_mode = "additive",
      },
    },
  }

  if beacon.module_slots == 4 then
    table.insert(beacon.graphics_set.animation_list, {
      render_layer = "transport-belt-circuit-connector", -- Above modules, below lights
      always_draw = true,
      animation = {
        layers = {
          {
            filename = "__bobmodules__/graphics/entity/beacon/beacon-2-bottom-slot-overlay.png",
            width = 212,
            height = 192,
            scale = 0.5,
            shift = util.by_pixel(0.5, 1),
          },
        },
      },
    })
  end

  if beacon.module_slots == 6 then
    table.insert(beacon.graphics_set.animation_list, {
      render_layer = "transport-belt-circuit-connector", -- Above modules, below lights
      always_draw = true,
      animation = {
        layers = {
          {
            filename = "__bobmodules__/graphics/entity/beacon/beacon-3-bottom-slot-overlay.png",
            width = 212,
            height = 192,
            scale = 0.5,
            shift = util.by_pixel(0.5, 1),
          },
        },
      },
    })
  end
end
