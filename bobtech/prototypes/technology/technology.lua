data:extend(
{
  {
    type = "technology",
    name = "advanced-research",
    icon = "__bobtech__/graphics/icons/lab2-technology.png",
    icon_size = 128,
    order = "c-k-m-a",
    prerequisites =
    {
      "advanced-electronics",
      "logistics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lab-2"
      },
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
    },
  },

  {
    type = "technology",
    name = "advanced-logistic-science-pack",
    localised_name = {"technology-name.logistic-science-pack"},
    icon = "__bobtech__/graphics/icons/logistic-science-pack-technology.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-logistic-science-pack"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    prerequisites =
    {
      "logistics-3",
      "robotics"
    },
    order = "c-a"
  },
}
)

data.raw.technology["logistic-science-pack"].localised_name = {"technology-name.transport-science-pack"}


if settings.startup["bobmods-burnerphase"].value == true then
data:extend(
{
  {
    type = "technology",
    name = "automation-science-pack",
    icon = "__bobtech__/graphics/icons/red-science-pack-technology.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "automation-science-pack"
      },
    },
    unit =
    {
      count = 25,
      ingredients =
      {
        {"steam-science-pack", 1},
      },
      time = 5
    },
    order = "c-a"
  },

  {
    type = "technology",
    name = "steam-power",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    icon_mipmaps = 4,
    prerequisites =
    {
    },
    effects =
    {
    },
    unit =
    {
      count = 10,
      ingredients =
      {
        {"steam-science-pack", 1},
      },
      time = 10
    },
    order = "c-a"
  },

  {
    type = "technology",
    name = "electricity",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites =
    {
      "steam-power"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "electric-mining-drill"
      },
      {
        type = "unlock-recipe",
        recipe = "radar"
      },
    },
    unit =
    {
      count = 25,
      ingredients =
      {
        {"steam-science-pack", 1},
      },
      time = 10
    },
    order = "c-a"
  },

  {
    type = "technology",
    name = "lab",
    icon = "__bobtech__/graphics/icons/lab-technology.png",
    icon_size = 128,
    order = "c-k-m-a",
    prerequisites =
    {
      "automation-science-pack",
      "electricity",
    },
    effects =
    {
    },
    unit =
    {
      count = 20,
      time = 10,
      ingredients =
      {
        {"steam-science-pack", 1},
        {"automation-science-pack", 1},
      },
    },
  },
}
)

bobmods.lib.recipe.enabled("automation-science-pack", false)
bobmods.lib.recipe.enabled("boiler", false)
bobmods.lib.recipe.enabled("steam-engine", false)
bobmods.lib.recipe.enabled("inserter", false)
bobmods.lib.recipe.enabled("small-electric-pole", false)
bobmods.lib.recipe.enabled("electric-mining-drill", false)
bobmods.lib.recipe.enabled("radar", false)
bobmods.lib.recipe.enabled("lab", false)
bobmods.lib.recipe.enabled("offshore-pump", false)
end
