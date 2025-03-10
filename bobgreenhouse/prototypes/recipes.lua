data:extend({
  {
    type = "recipe",
    name = "bob-fertiliser",
    category = "chemistry",
    energy_required = 3,
    enabled = false,
    ingredients = {
      { type = "fluid", name = "petroleum-gas", amount = 10 },
      { type = "item", name = "sulfur", amount = 1 },
      { type = "item", name = "stone", amount = 1 },
    },
    results = { { type = "item", name = "bob-fertiliser", amount = 1 } },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-seedling",
    main_product = "bob-seedling",
    enabled = false,
    always_show_products = true,
    ingredients = {
      { type = "item", name = "wood", amount = 1 },
    },
    results = {
      { type = "item", name = "bob-seedling", amount_min = 1, amount_max = 9 },
    },
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-greenhouse",
    energy_required = 5,
    enabled = false,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 5 },
      { type = "item", name = "copper-plate", amount = 4 },
      { type = "item", name = "stone", amount = 2 },
    },
    results = { { type = "item", name = "bob-greenhouse", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-basic-greenhouse-cycle",
    subgroup = "bob-greenhouse-items",
    order = "g[greenhouse-cycle-1]",
    category = "bob-greenhouse",
    energy_required = 60,
    enabled = false,
    always_show_products = true,
    ingredients = {
      { type = "item", name = "bob-seedling", amount = 10 },
      { type = "fluid", name = "water", amount = 20 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 10, amount_max = 20 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-advanced-greenhouse-cycle",
    subgroup = "bob-greenhouse-items",
    order = "g[greenhouse-cycle-2]",
    category = "bob-greenhouse",
    energy_required = 45,
    enabled = false,
    always_show_products = true,
    ingredients = {
      { type = "item", name = "bob-seedling", amount = 10 },
      { type = "fluid", name = "water", amount = 20 },
      { type = "item", name = "bob-fertiliser", amount = 5 },
    },
    results = {
      { type = "item", name = "wood", amount_min = 10, amount_max = 50 },
    },
    allow_decomposition = false,
  },

  {
    type = "recipe",
    name = "bob-wood-pellets",
    auto_recycle = false,
    ingredients = {
      { type = "item", name = "wood", amount = 5 },
    },
    results = { { type = "item", name = "bob-wood-pellets", amount = 1 } },
  },
})
