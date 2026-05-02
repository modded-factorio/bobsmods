data:extend({
  {
    type = "recipe",
    name = "bob-bronze-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 3 },
      { type = "item", name = "bob-tin-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "bob-bronze-alloy", amount = 5 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "bob-brass-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 3 },
      { type = "item", name = "bob-zinc-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "bob-brass-alloy", amount = 5 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "bob-copper-tungsten-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 2 },
      { type = "item", name = "bob-powdered-tungsten", amount = 3 },
    },
    results = {
      { type = "item", name = "bob-copper-tungsten-alloy", amount = 5 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "bob-gunmetal-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 32,
    ingredients = {
      { type = "item", name = "copper-plate", amount = 8 },
      { type = "item", name = "bob-tin-plate", amount = 1 },
      { type = "item", name = "bob-zinc-plate", amount = 1 },
    },
    results = {
      { type = "item", name = "bob-gunmetal-alloy", amount = 10 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-invar-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "bob-nickel-plate", amount = 2 },
      { type = "item", name = "iron-plate", amount = 3 },
    },
    results = {
      { type = "item", name = "bob-invar-alloy", amount = 5 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
  {
    type = "recipe",
    name = "bob-nitinol-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 16,
    ingredients = {
      { type = "item", name = "bob-nickel-plate", amount = 3 },
      { type = "item", name = "bob-titanium-plate", amount = 2 },
    },
    results = {
      { type = "item", name = "bob-nitinol-alloy", amount = 5 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },

  {
    type = "recipe",
    name = "bob-cobalt-steel-alloy",
    enabled = false,
    auto_recycle = false,
    category = "bob-mixing-furnace",
    energy_required = 32,
    ingredients = {
      { type = "item", name = "iron-plate", amount = 14 },
      { type = "item", name = "bob-cobalt-plate", amount = 1 },
    },
    results = { { type = "item", name = "bob-cobalt-steel-alloy", amount = 10 } },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

if not mods["space-age"] then
  data:extend({
    {
      type = "recipe",
      name = "tungsten-carbide",
      enabled = false,
      auto_recycle = false,
      category = "bob-mixing-furnace",
      energy_required = 6.4,
      ingredients = {
        { type = "item", name = "carbon", amount = 1 },
        { type = "item", name = "bob-powdered-tungsten", amount = 1 },
      },
      results = {
        { type = "item", name = "tungsten-carbide", amount = 2 },
      },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
else
  bobmods.lib.recipe.replace_ingredient("tungsten-carbide", "tungsten-ore", "bob-powdered-tungsten")

  bobmods.lib.recipe.set_category("bob-copper-tungsten-alloy", "metallurgy")
  bobmods.lib.recipe.replace_ingredient("bob-copper-tungsten-alloy", "copper-plate", "molten-copper")
end
