data:extend({
  {
    type = "recipe",
    name = "bob-storage-tank-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "storage-tank", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-storage-tank-2", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-storage-tank-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-storage-tank-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-storage-tank-3", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-storage-tank-4",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-storage-tank-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-storage-tank-4", amount = 1 } },
  },
})

data:extend({
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 20 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "pipe", amount = 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners-2",
    energy_required = 4,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-storage-tank-all-corners", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "pipe", amount = 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners-3",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-storage-tank-all-corners-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "pipe", amount = 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-storage-tank-all-corners-4",
    energy_required = 6,
    enabled = false,
    ingredients = {
      { type = "item", name = "bob-storage-tank-all-corners-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "pipe", amount = 4 },
    },
    results = { { type = "item", name = "bob-storage-tank-all-corners-4", amount = 1 } },
  },
})
