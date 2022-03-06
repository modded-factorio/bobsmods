if settings.startup["bobmods-power-steam"].value == true then

data:extend(
{
  {
    type = "technology",
    name = "bob-steam-engine-2",
    prerequisites =
    {
      "steel-processing",
    },
    icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
      },
      time = 30
    },
    order = "[steam-engine]-2",
  },

  {
    type = "technology",
    name = "bob-steam-engine-3",
    prerequisites =
    {
      "bob-steam-engine-2",
    },
    icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "[steam-engine]-3",
  },

  {
    type = "technology",
    name = "bob-steam-engine-4",
    prerequisites =
    {
      "bob-steam-engine-3",
    },
    icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-4"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "[steam-engine]-4",
  },

  {
    type = "technology",
    name = "bob-steam-engine-5",
    prerequisites =
    {
      "bob-steam-engine-4",
    },
    icon = "__bobpower__/graphics/icons/technology/steam-engine.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-5"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 30
    },
    order = "[steam-engine]-5",
  },
}
)

end
