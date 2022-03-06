data.raw["assembling-machine"]["centrifuge"].animation = nil
data.raw["assembling-machine"]["centrifuge"].working_visualisations =
{
  {
    -- Centrifuge C, Top.
    apply_recipe_tint = "tertiary",
    north_position = {0, 0},
    west_position = {0, 0},
    south_position = {0, 0},
    east_position = {0, 0},
    animation = 
    {
      filename = "__bobplates__/graphics/entity/centrifuge/centrifuge-C-light.png",
      priority = "high",
      blend_mode = "additive", -- centrifuge
      line_length = 8,
      width = 96,
      height = 104,
      frame_count = 64,
      shift = util.by_pixel(0, -27),
      hr_version =
      {
        filename = "__bobplates__/graphics/entity/centrifuge/hr-centrifuge-C-light.png",
        priority = "high",
        scale = 0.5,
        blend_mode = "additive", -- centrifuge
        line_length = 8,
        width = 190,
        height = 207,
        frame_count = 64,
        shift = util.by_pixel(0, -27.25)
      }
    }
  },
    -- Centrifuge B, Bottom right.
  {
    apply_recipe_tint = "secondary",
    north_position = {0, 0},
    west_position = {0, 0},
    south_position = {0, 0},
    east_position = {0, 0},
    animation = 
    {
      filename = "__bobplates__/graphics/entity/centrifuge/centrifuge-B-light.png",
      priority = "high",
      blend_mode = "additive", -- centrifuge
      line_length = 8,
      width = 65,
      height = 103,
      frame_count = 64,
      shift = util.by_pixel(16.5, 0.5),
      hr_version =
      {
        filename = "__bobplates__/graphics/entity/centrifuge/hr-centrifuge-B-light.png",
        priority = "high",
        scale = 0.5,
        blend_mode = "additive", -- centrifuge
        line_length = 8,
        width = 131,
        height = 206,
        frame_count = 64,
        shift = util.by_pixel(16.75, 0.5)
      }
    }
  },
    -- Centrifuge A, Bottom left.
  {
    apply_recipe_tint = "primary",
    north_position = {0, 0},
    west_position = {0, 0},
    south_position = {0, 0},
    east_position = {0, 0},
    animation = 
    {
      filename = "__bobplates__/graphics/entity/centrifuge/centrifuge-A-light.png",
      priority = "high",
      blend_mode = "additive", -- centrifuge
      line_length = 8,
      width = 55,
      height = 98,
      frame_count = 64,
      shift = util.by_pixel(-23.5, -2),
      hr_version =
      {
        filename = "__bobplates__/graphics/entity/centrifuge/hr-centrifuge-A-light.png",
        priority = "high",
        scale = 0.5,
        blend_mode = "additive", -- centrifuge
        line_length = 8,
        width = 108,
        height = 197,
        frame_count = 64,
        shift = util.by_pixel(-23.5, -1.75)
      }
    }
  },
  {
    apply_recipe_tint = "primary",
    effect = "uranium-glow", -- changes alpha based on energy source light intensity
    light = {intensity = 0.4, size = 8, shift = {-1.0, 0.5}, apply_recipe_tint = "primary"}
  },
  {
    apply_recipe_tint = "secondary",
    effect = "uranium-glow", -- changes alpha based on energy source light intensity
    light = {intensity = 0.4, size = 8, shift = {1.0, 0.5}, apply_recipe_tint = "secondary"}
  },
  {
    apply_recipe_tint = "tertiary",
    effect = "uranium-glow", -- changes alpha based on energy source light intensity
    light = {intensity = 0.4, size = 8, shift = {0.0, -1.2}, apply_recipe_tint = "tertiary"}
  }
}

