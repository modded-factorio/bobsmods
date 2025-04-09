data.raw["assembling-machine"]["centrifuge"].graphics_set.animation = nil
data.raw["assembling-machine"]["centrifuge"].graphics_set.working_visualisations = {
  {
    -- Centrifuge C, Top.
    apply_recipe_tint = "tertiary",
    animation = {
      filename = "__bobplates__/graphics/entity/centrifuge/centrifuge-C-light.png",
      priority = "high",
      scale = 0.5,
      blend_mode = "additive", -- centrifuge
      line_length = 8,
      width = 190,
      height = 207,
      frame_count = 64,
      shift = util.by_pixel(0, -27.25),
    },
  },
  -- Centrifuge B, Bottom right.
  {
    apply_recipe_tint = "secondary",
    animation = {
      filename = "__bobplates__/graphics/entity/centrifuge/centrifuge-B-light.png",
      priority = "high",
      scale = 0.5,
      blend_mode = "additive", -- centrifuge
      line_length = 8,
      width = 131,
      height = 206,
      frame_count = 64,
      shift = util.by_pixel(16.75, 0.5),
    },
  },
  -- Centrifuge A, Bottom left.
  {
    apply_recipe_tint = "primary",
    animation = {
      filename = "__bobplates__/graphics/entity/centrifuge/centrifuge-A-light.png",
      priority = "high",
      scale = 0.5,
      blend_mode = "additive", -- centrifuge
      line_length = 8,
      width = 108,
      height = 197,
      frame_count = 64,
      shift = util.by_pixel(-23.5, -1.75),
    },
  },

  -- Centrifuge C, Top.
  {
    effect = "uranium-glow",
    apply_recipe_tint = "tertiary",
    fadeout = true,
    light = { intensity = 0.066, size = 8.9, shift = { 0, -1.2 } },
  },

  -- Centrifuge B, Bottom right.
  {
    effect = "uranium-glow",
    apply_recipe_tint = "secondary",
    fadeout = true,
    light = { intensity = 0.066, size = 8.9, shift = { 1, 0.5 } },
  },

  -- Centrifuge A, Bottom left.
  {
    effect = "uranium-glow",
    apply_recipe_tint = "primary",
    fadeout = true,
    light = { intensity = 0.066, size = 8.9, shift = { -1, 0.5 } },
  },
}
