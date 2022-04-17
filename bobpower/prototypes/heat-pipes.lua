if settings.startup["bobmods-power-steam"].value == true or settings.startup["bobmods-power-nuclear"].value == true or settings.startup["bobmods-power-heatsources"].value == true then

data.raw.item["heat-pipe"].order = "f[nuclear-energy]-c[heat-pipe-1]"
data.raw["heat-pipe"]["heat-pipe"].fast_replaceable_group = "heat-pipe"

data:extend(
{
  {
    type = "item",
    name = "heat-pipe-2",
    icon = "__bobpower__/graphics/icons/heat-pipe-2.png",
    icon_size = 32,
    subgroup = "energy",
    order = "f[nuclear-energy]-c[heat-pipe-2]",
    place_result = "heat-pipe-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "heat-pipe-3",
    icon = "__bobpower__/graphics/icons/heat-pipe-3.png",
    icon_size = 32,
    subgroup = "energy",
    order = "f[nuclear-energy]-c[heat-pipe-3]",
    place_result = "heat-pipe-3",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "heat-pipe-2",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 10},
      {"copper-plate", 20}
    },
    result = "heat-pipe-2"
  },
  {
    type = "recipe",
    name = "heat-pipe-3",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 10},
      {"copper-plate", 20}
    },
    result = "heat-pipe-3"
  },

  util.merge
  {
    data.raw["heat-pipe"]["heat-pipe"],
    {
      name = "heat-pipe-2",
      icon = "__bobpower__/graphics/icons/heat-pipe-2.png",
      icon_size = 32,
      icon_mipmaps = 1,
      minable = {mining_time = 0.1, result = "heat-pipe-2"},
      max_health = 300,
      minimum_glow_temperature = 400,
      glow_alpha_modifier = 0.5,
      heat_buffer =
      {
        max_transfer = "3GW",
        max_temperature = 1250,
      },
      connection_sprites = make_heat_pipe_pictures("__bobpower__/graphics/heat-pipe-2/", "heat-pipe",
        {
          single = { name = "straight-vertical-single", ommit_number = true },
          straight_vertical = { variations = 6 },
          straight_horizontal = { variations = 6 },
          corner_right_up = { name = "corner-up-right", variations = 6 },
          corner_left_up = { name = "corner-up-left", variations = 6 },
          corner_right_down = { name = "corner-down-right", variations = 6 },
          corner_left_down = { name = "corner-down-left", variations = 6 },
          t_up = {},
          t_down = {},
          t_right = {},
          t_left = {},
          cross = { name = "t" },
          ending_up = {},
          ending_down = {},
          ending_right = {},
          ending_left = {}
        }
      ),
    }
  },
  util.merge
  {
  data.raw["heat-pipe"]["heat-pipe"],
    {
      name = "heat-pipe-3",
      icon = "__bobpower__/graphics/icons/heat-pipe-3.png",
      icon_size = 32,
      icon_mipmaps = 1,
      minable = {mining_time = 0.1, result = "heat-pipe-3"},
      max_health = 400,
      minimum_glow_temperature = 450,
      glow_alpha_modifier = 0.4,
      heat_buffer =
      {
        max_transfer = "5GW",
        max_temperature = 1500,
      },
      connection_sprites = make_heat_pipe_pictures("__bobpower__/graphics/heat-pipe-3/", "heat-pipe",
        {
          single = { name = "straight-vertical-single", ommit_number = true },
          straight_vertical = { variations = 6 },
          straight_horizontal = { variations = 6 },
          corner_right_up = { name = "corner-up-right", variations = 6 },
          corner_left_up = { name = "corner-up-left", variations = 6 },
          corner_right_down = { name = "corner-down-right", variations = 6 },
          corner_left_down = { name = "corner-down-left", variations = 6 },
          t_up = {},
          t_down = {},
          t_right = {},
          t_left = {},
          cross = { name = "t" },
          ending_up = {},
          ending_down = {},
          ending_right = {},
          ending_left = {}
        }
      ),
    }
  },


  {
    type = "technology",
    name = "bob-heat-pipe-1",
    icon = "__bobpower__/graphics/icons/technology/heat-pipe.png",
    icon_size = 256,
    prerequisites =
    {
      "logistic-science-pack",
      "steel-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-pipe"
      },
    },
    unit =
    {
      time = 30,
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
    },
    order = "[heat-pipe]-1",
  },
  {
    type = "technology",
    name = "bob-heat-pipe-2",
    icon = "__bobpower__/graphics/icons/technology/heat-pipe.png",
    icon_size = 256,
    prerequisites =
    {
      "bob-heat-pipe-1",
      "chemical-science-pack",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-pipe-2"
      },
    },
    unit =
    {
      time = 30,
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
    },
    order = "[heat-pipe]-2",
  },
  {
    type = "technology",
    name = "bob-heat-pipe-3",
    icon = "__bobpower__/graphics/icons/technology/heat-pipe.png",
    icon_size = 256,
    prerequisites =
    {
      "bob-heat-pipe-2",
      "production-science-pack"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-pipe-3"
      },
    },
    unit =
    {
      time = 30,
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
    },
    order = "[heat-pipe]-3",
  }
}
)

end
