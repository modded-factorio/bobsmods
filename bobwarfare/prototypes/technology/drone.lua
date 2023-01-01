data:extend({
  {
    type = "technology",
    name = "bob-robot-gun-drones",
    icon = "__bobwarfare__/graphics/icons/technology/gun-drone.png",
    icon_size = 128,
    prerequisites = {
      "robotics",
      "defender",
      "gun-turret",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-robot-gun-drone",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-c-c-a-a1",
  },
  {
    type = "technology",
    name = "bob-robot-laser-drones",
    icon = "__bobwarfare__/graphics/icons/technology/laser-drone.png",
    icon_size = 128,
    prerequisites = {
      "robotics",
      "defender",
      "laser-turret",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-robot-laser-drone",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-c-c-a-b1",
  },
  {
    type = "technology",
    name = "bob-robot-flamethrower-drones",
    icon = "__bobwarfare__/graphics/icons/technology/flamethrower-drone.png",
    icon_size = 128,
    prerequisites = {
      "robotics",
      "defender",
      "flamethrower",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-robot-flamethrower-drone",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-c-c-a-c1",
  },
  {
    type = "technology",
    name = "bob-robot-plasma-drones",
    icon = "__bobwarfare__/graphics/icons/technology/plasma-drone.png",
    icon_size = 128,
    prerequisites = {
      "robotics",
      "defender",
      "bob-plasma-turrets-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-robot-plasma-drone",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-c-c-a-d1",
  },
})
