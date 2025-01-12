data:extend({
  {
    type = "technology",
    name = "bob-turrets-2",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "gun-turret",
      "military-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-gun-turret-2",
      },
    },
    unit = {
      count = 30,
      time = 15,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-turrets-3",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-turrets-2",
      "military-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-gun-turret-3",
      },
    },
    unit = {
      count = 50,
      time = 15,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-turrets-4",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-turrets-3",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-gun-turret-4",
      },
    },
    unit = {
      count = 75,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-turrets-5",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-turrets-4",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-gun-turret-5",
      },
    },
    unit = {
      count = 100,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-laser-turrets-2",
    icon = "__base__/graphics/technology/laser-turret.png",
    icon_size = 256,
    prerequisites = {
      "laser-turret",
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-turret-2",
      },
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-laser-turrets-3",
    icon = "__base__/graphics/technology/laser-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-laser-turrets-2",
      "military-3",
    },
    unit = {
      count = 200,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-turret-3",
      },
    },
  },

  {
    type = "technology",
    name = "bob-laser-turrets-4",
    icon = "__base__/graphics/technology/laser-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-laser-turrets-3",
      "processing-unit",
      "production-science-pack",
    },
    unit = {
      count = 250,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-turret-4",
      },
    },
  },

  {
    type = "technology",
    name = "bob-laser-turrets-5",
    icon = "__base__/graphics/technology/laser-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-laser-turrets-4",
      "military-4",
    },
    unit = {
      count = 300,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-turret-5",
      },
    },
  },

  {
    type = "technology",
    name = "bob-sniper-turrets-1",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "gun-turret",
      "military-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-sniper-turret-1",
      },
    },
    unit = {
      count = 25,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
  },
  {
    type = "technology",
    name = "bob-sniper-turrets-2",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-sniper-turrets-1",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-sniper-turret-2",
      },
    },
    unit = {
      count = 75,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
  },
  {
    type = "technology",
    name = "bob-sniper-turrets-3",
    icon = "__base__/graphics/technology/gun-turret.png",
    icon_size = 256,
    prerequisites = {
      "bob-sniper-turrets-2",
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-sniper-turret-3",
      },
    },
    unit = {
      count = 125,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-plasma-turrets-1",
    icon = "__bobwarfare__/graphics/icons/technology/plasma-turrets.png",
    icon_size = 128,
    prerequisites = {
      "laser-turret",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-turret-1",
      },
    },
    unit = {
      count = 500,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-plasma-turrets-2",
    icon = "__bobwarfare__/graphics/icons/technology/plasma-turrets.png",
    icon_size = 128,
    prerequisites = {
      "bob-plasma-turrets-1",
      "processing-unit",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-turret-2",
      },
    },
    unit = {
      count = 600,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-plasma-turrets-3",
    icon = "__bobwarfare__/graphics/icons/technology/plasma-turrets.png",
    icon_size = 128,
    prerequisites = {
      "bob-plasma-turrets-2",
      "military-4",
    },
    unit = {
      count = 700,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-turret-3",
      },
    },
  },

  {
    type = "technology",
    name = "bob-plasma-turrets-4",
    icon = "__bobwarfare__/graphics/icons/technology/plasma-turrets.png",
    icon_size = 128,
    prerequisites = {
      "bob-plasma-turrets-3",
      "space-science-pack",
      "efficiency-module-3",
    },
    unit = {
      count = 800,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-turret-4",
      },
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-artillery-turret-2",
    icon_size = 256,
    icon = "__base__/graphics/technology/artillery.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-artillery-turret-2",
      },
    },
    prerequisites = {
      "artillery",
      "military-4",
    },
    unit = {
      time = 30,
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },

  {
    type = "technology",
    name = "bob-artillery-turret-3",
    icon_size = 256,
    icon = "__base__/graphics/technology/artillery.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-artillery-turret-3",
      },
    },
    prerequisites = {
      "bob-artillery-turret-2",
    },
    unit = {
      time = 30,
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
  },
})
