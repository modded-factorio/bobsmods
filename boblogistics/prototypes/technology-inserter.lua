data:extend({
  {
    type = "technology",
    name = "bob-express-inserter",
    icon = "__boblogistics__/graphics/icons/technology/express-inserter.png",
    icon_size = 128,
    effects = {},
    prerequisites = {
      "fast-inserter",
      "chemical-science-pack",
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-bulk-inserter-2",
    localised_name = { "", { "technology-name.bulk-inserter" }, " 2" },
    icon = "__base__/graphics/technology/bulk-inserter.png",
    icon_size = 256,
    effects = {},
    prerequisites = {
      "bulk-inserter",
      "bob-express-inserter",
    },
    unit = {
      count = 250,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data.raw.technology["fast-inserter"].icon = "__boblogistics__/graphics/icons/technology/long-inserters.png"
  data.raw.technology["fast-inserter"].icon_size = 128

  data.raw.technology["bob-express-inserter"].icon = "__boblogistics__/graphics/icons/technology/blue-inserter.png"
  data.raw.technology["bob-express-inserter"].icon_size = 128

  bobmods.lib.tech.remove_prerequisite("fast-inserter", "electronics")
  bobmods.lib.tech.add_prerequisite("fast-inserter", "logistics-2")
  bobmods.lib.tech.remove_prerequisite("bulk-inserter", "advanced-circuit")

  bobmods.lib.tech.add_recipe_unlock("bob-bulk-inserter-2", "bulk-inserter")
  bobmods.lib.tech.add_prerequisite("bob-express-inserter", "logistics-3")

  data:extend({
    {
      type = "technology",
      name = "bob-turbo-inserter",
      icon = "__boblogistics__/graphics/icons/technology/magenta-inserters.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-turbo-inserter",
        },
      },
      prerequisites = {
        "bob-express-inserter",
        "logistics-4",
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
    },
    {
      type = "technology",
      name = "bob-ultimate-inserter",
      icon = "__boblogistics__/graphics/icons/technology/green-inserter.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-express-inserter",
        },
      },
      prerequisites = {
        "bob-turbo-inserter",
        "logistics-5",
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
    {
      type = "technology",
      name = "bob-bulk-inserter-3",
      localised_name = { "", { "technology-name.bulk-inserter" }, " 3" },
      icon = "__base__/graphics/technology/bulk-inserter.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-turbo-bulk-inserter",
        },
      },
      prerequisites = {
        "bob-turbo-inserter",
        "bob-bulk-inserter-2",
      },
      unit = {
        count = 350,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
    },

    {
      type = "technology",
      name = "bob-bulk-inserter-4",
      localised_name = { "", { "technology-name.bulk-inserter" }, " 4" },
      icon = "__base__/graphics/technology/bulk-inserter.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-express-bulk-inserter",
        },
      },
      prerequisites = {
        "bob-ultimate-inserter",
        "bob-bulk-inserter-3",
      },
      unit = {
        count = 450,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
  })
else
  bobmods.lib.tech.add_recipe_unlock("bob-bulk-inserter-2", "bob-express-bulk-inserter")

  bobmods.lib.tech.add_recipe_unlock("bob-express-inserter", "bob-express-inserter")
  bobmods.lib.tech.add_prerequisite("bob-express-inserter", "advanced-circuit")
end

data:extend({
  {
    type = "technology",
    name = "inserter-stack-size-bonus-1",
    icons = bobmods.lib.tech.technology_icon_constant(
      { icon = "__base__/graphics/technology/inserter-capacity.png", icon_size = 256 },
      "__boblibrary__/graphics/constants/constant-capacity.png"
    ),
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1,
      },
    },
    prerequisites = {
      "logistic-science-pack",
      "logistics",
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "inserter-stack-size-bonus-2",
    icons = bobmods.lib.tech.technology_icon_constant(
      { icon = "__base__/graphics/technology/inserter-capacity.png", icon_size = 256 },
      "__boblibrary__/graphics/constants/constant-capacity.png"
    ),
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1,
      },
    },
    prerequisites = { "inserter-stack-size-bonus-1" },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "inserter-stack-size-bonus-3",
    icons = bobmods.lib.tech.technology_icon_constant(
      { icon = "__base__/graphics/technology/inserter-capacity.png", icon_size = 256 },
      "__boblibrary__/graphics/constants/constant-capacity.png"
    ),
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1,
      },
    },
    prerequisites = { "inserter-stack-size-bonus-2" },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    upgrade = true,
  },
  {
    type = "technology",
    name = "inserter-stack-size-bonus-4",
    icons = bobmods.lib.tech.technology_icon_constant(
      { icon = "__base__/graphics/technology/inserter-capacity.png", icon_size = 256 },
      "__boblibrary__/graphics/constants/constant-capacity.png"
    ),
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1,
      },
    },
    prerequisites = { "inserter-stack-size-bonus-3" },
    unit = {
      count = 300,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
    upgrade = true,
  },
})

data:extend({
  {
    type = "technology",
    name = "inserter-capacity-bonus-8",
    icons = bobmods.lib.tech.technology_icon_constant(
      { icon = "__boblogistics__/graphics/icons/technology/green-inserter.png", icon_size = 128 },
      "__boblibrary__/graphics/constants/constant-capacity.png"
    ),
    icon_size = 128,
    effects = {
      {
        type = "inserter-stack-size-bonus",
        modifier = 1,
      },
      {
        type = "bulk-inserter-capacity-bonus",
        modifier = 3,
      },
    },
    prerequisites = {
      "inserter-capacity-bonus-7",
      "inserter-stack-size-bonus-4",
      "space-science-pack",
    },
    unit = {
      count_formula = "2^(L-8)*1000",
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
    },
    max_level = "infinite",
    upgrade = true,
  },
})

if not data.raw.technology["bob-long-inserters-1"] then
  data:extend({
    {
      type = "technology",
      name = "bob-long-inserters-1",
      icon = "__boblogistics__/graphics/icons/technology/long-inserters.png",
      icon_size = 128,
      effects = {},
      prerequisites = {
        "logistics",
      },
      unit = {
        count = 20,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 15,
      },
    },
  })
end
