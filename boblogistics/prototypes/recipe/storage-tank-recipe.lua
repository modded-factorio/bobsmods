data:extend({
  {
    type = "recipe",
    name = "storage-tank-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { "storage-tank", 1 },
      { "steel-plate", 20 },
    },
    results = { { type = "item", name = "storage-tank-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "storage-tank-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "storage-tank-2", 1 },
      { "steel-plate", 20 },
    },
    results = { { type = "item", name = "storage-tank-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "storage-tank-4",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { "storage-tank-3", 1 },
      { "steel-plate", 20 },
    },
    results = { { type = "item", name = "storage-tank-4", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { "iron-plate", 20 },
      { "steel-plate", 5 },
      { "pipe", 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { "bob-storage-tank-all-corners", 1 },
      { "steel-plate", 20 },
      { "pipe", 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { "bob-storage-tank-all-corners-2", 1 },
      { "steel-plate", 20 },
      { "pipe", 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners-4",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { "bob-storage-tank-all-corners-3", 1 },
      { "steel-plate", 20 },
      { "pipe", 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners-4", amount = 1 } },
  },
})
