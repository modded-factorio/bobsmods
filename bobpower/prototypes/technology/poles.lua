if settings.startup["bobmods-power-poles"].value == true then

data:extend(
{
  {
    type = "technology",
    name = "electric-pole-2",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-2"
      }
    },
    prerequisites =
    {
      "electric-energy-distribution-1",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    order = "c-e-b-2",
  },

  {
    type = "technology",
    name = "electric-pole-3",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-3"
      }
    },
    prerequisites =
    {
      "electric-pole-2",
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
    order = "c-e-b-3",
  },

  {
    type = "technology",
    name = "electric-pole-4",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-4"
      }
    },
    prerequisites =
    {
      "electric-pole-3",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-e-b-4",
  },


  {
    type = "technology",
    name = "electric-substation-2",
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation-2"
      }
    },
    prerequisites =
    {
      "electric-energy-distribution-2",
      "advanced-electronics",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45
    },
    order = "c-e-c-2",
  },

  {
    type = "technology",
    name = "electric-substation-3",
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation-3"
      }
    },
    prerequisites =
    {
      "electric-substation-2",
      "advanced-electronics-2",
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 45
    },
    order = "c-e-c-3",
  },

  {
    type = "technology",
    name = "electric-substation-4",
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation-4"
      }
    },
    prerequisites =
    {
      "electric-substation-3",
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 45
    },
    order = "c-e-c-4",
  },
}
)

end

