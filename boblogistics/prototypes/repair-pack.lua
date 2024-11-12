data.raw["repair-tool"]["repair-pack"].icon = "__boblogistics__/graphics/icons/repair-pack.png"
data.raw["repair-tool"]["repair-pack"].icon_size = 32
data.raw["repair-tool"]["repair-pack"].order = "b[repair]-a[repair-pack-1]"

data:extend({
  {
    type = "repair-tool",
    name = "repair-pack-2",
    icon = "__boblogistics__/graphics/icons/repair-pack-2.png",
    icon_size = 32,
    subgroup = "tool",
    order = "b[repair]-a[repair-pack-2]",
    speed = 4,
    durability = 600,
    stack_size = 100,
  },
  {
    type = "repair-tool",
    name = "repair-pack-3",
    icon = "__boblogistics__/graphics/icons/repair-pack-3.png",
    icon_size = 32,
    subgroup = "tool",
    order = "b[repair]-a[repair-pack-3]",
    speed = 6,
    durability = 1250,
    stack_size = 100,
  },
  {
    type = "repair-tool",
    name = "repair-pack-4",
    icon = "__boblogistics__/graphics/icons/repair-pack-4.png",
    icon_size = 32,
    subgroup = "tool",
    order = "b[repair]-a[repair-pack-4]",
    speed = 8,
    durability = 2500,
    stack_size = 100,
  },
  {
    type = "repair-tool",
    name = "repair-pack-5",
    icon = "__boblogistics__/graphics/icons/repair-pack-5.png",
    icon_size = 32,
    subgroup = "tool",
    order = "b[repair]-a[repair-pack-5]",
    speed = 10,
    durability = 5000,
    stack_size = 100,
  },
})

data:extend({
  {
    type = "recipe",
    name = "repair-pack-2",
    enabled = false,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 2 },
      { type = "item", name = "iron-gear-wheel", amount = 2 },
    },
    results = { { type = "item", name = "repair-pack-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "repair-pack-3",
    enabled = false,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "steel-plate", amount = 2 },
    },
    results = { { type = "item", name = "repair-pack-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "repair-pack-4",
    enabled = false,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 2 },
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "steel-plate", amount = 2 },
    },
    results = { { type = "item", name = "repair-pack-4", amount = 1 } },
  },
  {
    type = "recipe",
    name = "repair-pack-5",
    enabled = false,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 2 },
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "steel-plate", amount = 2 },
    },
    results = { { type = "item", name = "repair-pack-5", amount = 1 } },
  },
})

data:extend({
  {
    type = "technology",
    name = "bob-repair-pack-2",
    icon = "__boblogistics__/graphics/icons/technology/repair-pack.png",
    icon_size = 32,
    prerequisites = {
      "steel-processing",
      "electronics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "repair-pack-2",
      },
    },
    unit = {
      count = 20,
      ingredients = {
        { "automation-science-pack", 1 },
      },
      time = 30,
    },
    order = "a-1",
  },
  {
    type = "technology",
    name = "bob-repair-pack-3",
    icon = "__boblogistics__/graphics/icons/technology/repair-pack.png",
    icon_size = 32,
    prerequisites = {
      "bob-repair-pack-2",
      "advanced-circuit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "repair-pack-3",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "a-1",
  },
  {
    type = "technology",
    name = "bob-repair-pack-4",
    icon = "__boblogistics__/graphics/icons/technology/repair-pack.png",
    icon_size = 32,
    prerequisites = {
      "bob-repair-pack-3",
      "processing-unit",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "repair-pack-4",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "a-1",
  },
  {
    type = "technology",
    name = "bob-repair-pack-5",
    icon = "__boblogistics__/graphics/icons/technology/repair-pack.png",
    icon_size = 32,
    prerequisites = {
      "bob-repair-pack-4",
      "production-science-pack",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "repair-pack-5",
      },
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
    order = "a-1",
  },
})
