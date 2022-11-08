data.raw["repair-tool"]["repair-pack"].icon = "__boblogistics__/graphics/icons/repair-pack.png"
data.raw["repair-tool"]["repair-pack"].icon_size = 32
data.raw["repair-tool"]["repair-pack"].icon_mipmaps = nil
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
      { "electronic-circuit", 2 },
      { "iron-gear-wheel", 2 },
    },
    result = "repair-pack-2",
  },
  {
    type = "recipe",
    name = "repair-pack-3",
    enabled = false,
    ingredients = {
      { "advanced-circuit", 2 },
      { "iron-gear-wheel", 2 },
      { "steel-plate", 2 },
    },
    result = "repair-pack-3",
  },
  {
    type = "recipe",
    name = "repair-pack-4",
    enabled = false,
    ingredients = {
      { "processing-unit", 2 },
      { "iron-gear-wheel", 2 },
      { "steel-plate", 2 },
    },
    result = "repair-pack-4",
  },
  {
    type = "recipe",
    name = "repair-pack-5",
    enabled = false,
    ingredients = {
      { "processing-unit", 2 },
      { "iron-gear-wheel", 2 },
      { "steel-plate", 2 },
    },
    result = "repair-pack-5",
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
      "advanced-electronics",
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
      "advanced-electronics-2",
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
