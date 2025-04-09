data:extend({
  {
    type = "technology",
    name = "bob-bullets",
    icon = "__bobwarfare__/graphics/icons/bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-cordite-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-bullet-casing",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-magazine",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-ap-bullets",
    icon = "__bobwarfare__/graphics/icons/ap-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-bullets",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-ap-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-ap-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-ap-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-electric-bullets",
    icon = "__bobwarfare__/graphics/icons/electric-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-bullets",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-electric-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-electric-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-electric-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-he-bullets",
    icon = "__bobwarfare__/graphics/icons/he-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-bullets",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-he-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-he-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-he-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-flame-bullets",
    icon = "__bobwarfare__/graphics/icons/flame-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-bullets",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-flame-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-flame-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-flame-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-acid-bullets",
    icon = "__bobwarfare__/graphics/icons/acid-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-bullets",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-acid-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-acid-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-acid-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-poison-bullets",
    icon = "__bobwarfare__/graphics/icons/poison-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "bob-bullets",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-poison-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-poison-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-poison-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-cordite-processing",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-shell-casing",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-shot",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-better-shotgun-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-ap-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-ap-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-shotgun-shells",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-ap-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-electric-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-electric-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-shotgun-shells",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-electric-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-explosive-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-explosive-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-shotgun-shells",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-explosive-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-flame-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-flame-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-shotgun-shells",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-flame-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-acid-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-acid-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-shotgun-shells",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-acid-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-shotgun-poison-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-poison-shell.png",
    icon_size = 32,
    prerequisites = {
      "bob-shotgun-shells",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-poison-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-1",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites = {
      "bob-laser-rifle",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-rifle-battery-ruby",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-2",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites = {
      "bob-laser-rifle-ammo-1",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-rifle-battery-sapphire",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-3",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites = {
      "bob-laser-rifle-ammo-2",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-rifle-battery-emerald",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-4",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites = {
      "bob-laser-rifle-ammo-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-rifle-battery-amethyst",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-5",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites = {
      "bob-laser-rifle-ammo-4",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-rifle-battery-topaz",
      },
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-6",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites = {
      "bob-laser-rifle-ammo-5",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-laser-rifle-battery-diamond",
      },
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-rocket",
    icon = "__bobwarfare__/graphics/icons/rocket.png",
    icon_size = 32,
    prerequisites = {
      "oil-processing",
      "rocketry",
      "processing-unit",
      "military-3",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-rocket-body",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-rocket-warhead",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-rocket-engine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-piercing-rocket",
    icon = "__bobwarfare__/graphics/icons/piercing-rocket.png",
    icon_size = 32,
    prerequisites = {
      "bob-rocket",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-piercing-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-piercing-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-electric-rocket",
    icon = "__bobwarfare__/graphics/icons/electric-rocket.png",
    icon_size = 32,
    prerequisites = {
      "bob-rocket",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-electric-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-electric-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-explosive-rocket",
    icon = "__bobwarfare__/graphics/icons/explosive-rocket.png",
    icon_size = 32,
    prerequisites = {
      "bob-rocket",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-explosive-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-explosive-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-acid-rocket",
    icon = "__bobwarfare__/graphics/icons/acid-rocket.png",
    icon_size = 32,
    prerequisites = {
      "bob-rocket",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-acid-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-acid-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-flame-rocket",
    icon = "__bobwarfare__/graphics/icons/flame-rocket.png",
    icon_size = 32,
    prerequisites = {
      "bob-rocket",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-flame-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-flame-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-poison-rocket",
    icon = "__bobwarfare__/graphics/icons/poison-rocket.png",
    icon_size = 32,
    prerequisites = {
      "bob-rocket",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-poison-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-poison-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-scatter-cannon-shells",
    icons = {
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        icon_size = 64,
        scale = 1,
      },
      {
        icon = "__base__/graphics/icons/shotgun-shell.png",
        icon_size = 64,
        scale = 0.5,
        shift = { -16, -16 },
      },
    },
    prerequisites = {
      "bob-shotgun-shells",
      "tank",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-scatter-cannon-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-poison-artillery-shells",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
        scale = 1,
      },
      {
        icon = "__base__/graphics/icons/poison-capsule.png",
        icon_size = 64,
        scale = 0.5,
        shift = { -16, -16 },
      },
    },
    prerequisites = {
      "artillery",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-poison-artillery-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-fire-artillery-shells",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
        scale = 1,
      },
      {
        icon = "__bobwarfare__/graphics/icons/fire-capsule.png",
        icon_size = 32,
        scale = 1,
        shift = { -16, -16 },
      },
    },
    prerequisites = {
      "artillery",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-fire-artillery-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-explosive-artillery-shells",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
        scale = 1,
      },
      {
        icon = "__base__/graphics/icons/grenade.png",
        icon_size = 64,
        scale = 0.5,
        shift = { -16, -16 },
      },
    },
    prerequisites = {
      "artillery",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-explosive-artillery-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-distractor-artillery-shells",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
        scale = 1,
      },
      {
        icon = "__bobwarfare__/graphics/icons/distractor.png",
        icon_size = 32,
        scale = 1,
        shift = { -16, -16 },
      },
    },
    prerequisites = {
      "distractor",
      "artillery",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-distractor-artillery-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
  },

  {
    type = "technology",
    name = "bob-atomic-artillery-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
        scale = 1,
      },
      {
        icon = "__base__/graphics/technology/atomic-bomb.png",
        icon_size = 256,
        scale = 0.125,
        shift = { -16, -16 },
      },
    },
    prerequisites = {
      "atomic-bomb",
      "artillery",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-atomic-artillery-shell",
      },
    },
    unit = {
      count = 5000,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 45,
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-plasma-bullets",
    icon = "__bobwarfare__/graphics/icons/plasma-bullet-magazine.png",
    icon_size = 32,
    prerequisites = {
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-bullet-projectile",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-bullet",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-bullet-magazine",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-shotgun-plasma-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-plasma-shell.png",
    icon_size = 32,
    prerequisites = {
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-shotgun-plasma-shell",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-plasma-rocket",
    icon = "__bobwarfare__/graphics/icons/plasma-rocket.png",
    icon_size = 32,
    prerequisites = {
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-rocket",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-plasma-rocket-warhead",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
  },
})
