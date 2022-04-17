if settings.startup["bobmods-logistics-flyingrobotframes"].value == true then

data.raw.item["flying-robot-frame"].order = "j[flying-robot-frame-1]"
data.raw.item["flying-robot-frame"].subgroup = "bob-robot-parts"

data:extend(
{
  {
    type = "item",
    name = "flying-robot-frame-2",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-2.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "j[flying-robot-frame-2]",
    stack_size = 50
  },
  {
    type = "item",
    name = "flying-robot-frame-3",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-3.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "j[flying-robot-frame-3]",
    stack_size = 50
  },
  {
    type = "item",
    name = "flying-robot-frame-4",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-4.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "j[flying-robot-frame-4]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "flying-robot-frame-2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"advanced-circuit", 3}
    },
    result = "flying-robot-frame-2",
  },
  {
    type = "recipe",
    name = "flying-robot-frame-3",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"processing-unit", 3}
    },
    result = "flying-robot-frame-3",
  },
  {
    type = "recipe",
    name = "flying-robot-frame-4",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"processing-unit", 3}
    },
    result = "flying-robot-frame-4",
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-robotics-2",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-2"
      },
    },
    prerequisites =
    {
      "robotics",
      "chemical-science-pack"
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-i-a",
  },

  {
    type = "technology",
    name = "bob-robotics-3",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-3"
      },
    },
    prerequisites =
    {
      "bob-robotics-2",
      "utility-science-pack"
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-i-b",
  },

  {
    type = "technology",
    name = "bob-robotics-4",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-4"
      },
    },
    prerequisites =
    {
      "bob-robotics-3",
      "production-science-pack"
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
        {"utility-science-pack", 1}
      },
      time = 30
    },
    order = "c-i-c",
  },
}
)

end


if settings.startup["bobmods-logistics-robotparts"].value == true then

data:extend(
{
  {
    type = "item",
    name = "robot-brain-logistic",
    icon = "__boblogistics__/graphics/icons/robot-brain-logistic.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-logistic-1]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-logistic-2",
    icon = "__boblogistics__/graphics/icons/robot-brain-logistic-2.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-logistic-2]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-logistic-3",
    icon = "__boblogistics__/graphics/icons/robot-brain-logistic-3.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-logistic-3]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-logistic-4",
    icon = "__boblogistics__/graphics/icons/robot-brain-logistic-4.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-logistic-4]",
    stack_size = 100
  },


  {
    type = "item",
    name = "robot-brain-construction",
    icon = "__boblogistics__/graphics/icons/robot-brain-construction.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-construction-1]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-construction-2",
    icon = "__boblogistics__/graphics/icons/robot-brain-construction-2.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-construction-2]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-construction-3",
    icon = "__boblogistics__/graphics/icons/robot-brain-construction-3.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-construction-3]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-brain-construction-4",
    icon = "__boblogistics__/graphics/icons/robot-brain-construction-4.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-brain-construction-4]",
    stack_size = 100
  },


  {
    type = "item",
    name = "robot-tool-construction",
    icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-construction-1]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-construction-2",
    icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-construction-2]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-construction-3",
    icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-construction-3]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-construction-4",
    icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-construction-4]",
    stack_size = 100
  },


  {
    type = "item",
    name = "robot-tool-logistic",
    icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-logistic-1]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-logistic-2",
    icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-logistic-2]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-logistic-3",
    icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-logistic-3]",
    stack_size = 100
  },

  {
    type = "item",
    name = "robot-tool-logistic-4",
    icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
    icon_size = 32,
    subgroup = "bob-robot-parts",
    order = "r[robot-tool-logistic-4]",
    stack_size = 100
  },
}
)



data:extend(
{
  {
    type = "recipe",
    name = "robot-brain-logistic",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-logistic",
  },

  {
    type = "recipe",
    name = "robot-brain-logistic-2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-logistic-2",
  },

  {
    type = "recipe",
    name = "robot-brain-logistic-3",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-logistic-3",
  },

  {
    type = "recipe",
    name = "robot-brain-logistic-4",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-logistic-4",
  },


  {
    type = "recipe",
    name = "robot-brain-construction",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-construction",
  },

  {
    type = "recipe",
    name = "robot-brain-construction-2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-construction-2",
  },

  {
    type = "recipe",
    name = "robot-brain-construction-3",
    energy_required = 15,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-construction-3",
  },

  {
    type = "recipe",
    name = "robot-brain-construction-4",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-brain-construction-4",
  },


  {
    type = "recipe",
    name = "robot-tool-logistic",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-logistic",
  },

  {
    type = "recipe",
    name = "robot-tool-logistic-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-logistic-2",
  },

  {
    type = "recipe",
    name = "robot-tool-logistic-3",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-logistic-3",
  },

  {
    type = "recipe",
    name = "robot-tool-logistic-4",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-logistic-4",
  },


  {
    type = "recipe",
    name = "robot-tool-construction",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-construction",
  },

  {
    type = "recipe",
    name = "robot-tool-construction-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-construction-2",
  },

  {
    type = "recipe",
    name = "robot-tool-construction-3",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-construction-3",
  },

  {
    type = "recipe",
    name = "robot-tool-construction-4",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
    },
    result = "robot-tool-construction-4",
  },
}
)


end

