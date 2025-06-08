data.raw.technology["toolbelt"].upgrade = true

data:extend({
  {
    type = "technology",
    name = "toolbelt-2",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10,
      },
    },
    prerequisites = {
      "toolbelt",
    },
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    upgrade = true,
    order = "c-k-m-a",
  },

  {
    type = "technology",
    name = "toolbelt-3",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10,
      },
    },
    prerequisites = {
      "toolbelt-2",
    },
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
    order = "c-k-m-b",
  },
  {
    type = "technology",
    name = "toolbelt-4",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10,
      },
    },
    prerequisites = {
      "toolbelt-3",
    },
    unit = {
      count = 250,
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
    order = "c-k-m-c",
  },
  {
    type = "technology",
    name = "toolbelt-5",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10,
      },
    },
    prerequisites = {
      "toolbelt-4",
      "space-science-pack",
    },
    unit = {
      count_formula = "2^(L-4)*150",
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
      time = 30,
    },
    upgrade = true,
    max_level = 13,
    order = "c-k-m-d",
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-infinite-character-logistic-trash-slots-1",
    icon = "__boblogistics__/graphics/icons/technology/character-logistic-trash-slots.png",
    icon_size = 128,
    order = "c-k-f-f",
    upgrade = true,
    prerequisites = {
      "logistic-robotics",
      "space-science-pack",
    },
    effects = {
      {
        type = "character-logistic-trash-slots",
        modifier = 6,
      },
    },
    max_level = "infinite",
    unit = {
      count_formula = "2^(L)*500",
      time = 60,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
    },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-infinite-worker-robots-storage-4",
    localised_name = { "technology-name.worker-robots-storage" },
    localised_description = { "technology-description.worker-robots-storage" },
    icons = util.technology_icon_constant_capacity("__base__/graphics/technology/worker-robots-storage.png"),
    effects = {
      {
        type = "worker-robot-storage",
        modifier = 1,
      },
    },
    prerequisites = {
      "worker-robots-storage-3",
      "space-science-pack",
    },
    unit = {
      count_formula = "2^(L-4)*800",
      time = 60,
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
    order = "c-k-g-d",
  },
})
