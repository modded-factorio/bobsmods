if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "basic-transport-belt",
      ingredients = {
        { "iron-plate", 1 },
        { "iron-gear-wheel", 1 },
      },
      results = { { type = "item", name = "basic-transport-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "transport-belt",
      enabled = false,
      ingredients = {
        { "iron-plate", 2 },
        { "iron-gear-wheel", 2 },
      },
      results = { { type = "item", name = "transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "fast-transport-belt",
      enabled = false,
      ingredients = {
        { "steel-plate", 2 },
        { "iron-gear-wheel", 4 },
      },
      results = { { type = "item", name = "fast-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "express-transport-belt",
      enabled = false,
      ingredients = {
        { "steel-plate", 2 },
        { "iron-gear-wheel", 4 },
      },
      results = { { type = "item", name = "express-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "turbo-transport-belt",
      enabled = false,
      ingredients = {
        { "steel-plate", 2 },
        { "iron-gear-wheel", 4 },
      },
      results = { { type = "item", name = "turbo-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "ultimate-transport-belt",
      enabled = false,
      ingredients = {
        { "steel-plate", 2 },
        { "iron-gear-wheel", 4 },
      },
      results = { { type = "item", name = "ultimate-transport-belt", amount = 1 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "basic-underground-belt",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "basic-transport-belt", 5 },
        { "stone", 2 },
        { "wood", 2 },
      },
      results = { { type = "item", name = "basic-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "basic-splitter",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "basic-transport-belt", 5 },
        { "wood", 4 },
        { "iron-gear-wheel", 2 },
        { "copper-cable", 4 },
      },
      results = { { type = "item", name = "basic-splitter", amount = 1 } },
    },
  })

  if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
    bobmods.lib.recipe.add_ingredient("fast-transport-belt", { "transport-belt", 1 })
    bobmods.lib.recipe.add_ingredient("express-transport-belt", { "fast-transport-belt", 1 })
    bobmods.lib.recipe.add_ingredient("turbo-transport-belt", { "express-transport-belt" })
    bobmods.lib.recipe.add_ingredient("ultimate-transport-belt", { "turbo-transport-belt" })
    bobmods.lib.recipe.add_ingredient("transport-belt", { "basic-transport-belt", 1 })

    data:extend({
      {
        type = "recipe",
        name = "underground-belt",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { "basic-underground-belt", 2 },
          { "iron-plate", 14 },
          { "iron-gear-wheel", 20 },
        },
        results = { { type = "item", name = "underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "fast-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { "underground-belt", 2 },
          { "steel-plate", 14 },
          { "iron-gear-wheel", 20 },
        },
        results = { { type = "item", name = "fast-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "express-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { "fast-underground-belt", 2 },
          { "steel-plate", 14 },
          { "iron-gear-wheel", 20 },
        },
        results = { { type = "item", name = "express-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "turbo-underground-belt",
        enabled = false,
        ingredients = {
          { "express-underground-belt", 2 },
          { "steel-plate", 14 },
          { "iron-gear-wheel", 20 },
        },
        results = { { type = "item", name = "turbo-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "ultimate-underground-belt",
        enabled = false,
        ingredients = {
          { "turbo-underground-belt", 2 },
          { "steel-plate", 14 },
          { "iron-gear-wheel", 20 },
        },
        results = { { type = "item", name = "ultimate-underground-belt", amount = 2 } },
      },

      {
        type = "recipe",
        name = "splitter",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { "basic-splitter", 1 },
          { "iron-plate", 8 },
          { "iron-gear-wheel", 14 },
          { "electronic-circuit", 5 },
        },
        results = { { type = "item", name = "splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "fast-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "splitter", 1 },
          { "steel-plate", 8 },
          { "iron-gear-wheel", 14 },
          { "electronic-circuit", 5 },
        },
        results = { { type = "item", name = "fast-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "express-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "fast-splitter", 1 },
          { "steel-plate", 8 },
          { "iron-gear-wheel", 14 },
          { "advanced-circuit", 5 },
        },
        results = { { type = "item", name = "express-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "express-splitter", 1 },
          { "steel-plate", 8 },
          { "iron-gear-wheel", 14 },
          { "processing-unit", 5 },
        },
        results = { { type = "item", name = "turbo-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "turbo-splitter", 1 },
          { "steel-plate", 8 },
          { "iron-gear-wheel", 14 },
          { "processing-unit", 5 },
        },
        results = { { type = "item", name = "ultimate-splitter", amount = 1 } },
      },
    })
  else
    data:extend({
      {
        type = "recipe",
        name = "underground-belt",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { "transport-belt", 5 },
          { "iron-plate", 4 },
        },
        results = { { type = "item", name = "underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "fast-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { "fast-transport-belt", 5 },
          { "steel-plate", 4 },
        },
        results = { { type = "item", name = "fast-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "express-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { "express-transport-belt", 5 },
          { "steel-plate", 4 },
        },
        results = { { type = "item", name = "express-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "turbo-underground-belt",
        enabled = false,
        ingredients = {
          { "turbo-transport-belt", 5 },
          { "steel-plate", 4 },
        },
        results = { { type = "item", name = "turbo-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "ultimate-underground-belt",
        enabled = false,
        ingredients = {
          { "ultimate-transport-belt", 5 },
          { "steel-plate", 4 },
        },
        results = { { type = "item", name = "ultimate-underground-belt", amount = 2 } },
      },

      {
        type = "recipe",
        name = "splitter",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { "transport-belt", 2 },
          { "iron-plate", 4 },
          { "iron-gear-wheel", 4 },
          { "electronic-circuit", 5 },
        },
        results = { { type = "item", name = "splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "fast-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "fast-transport-belt", 2 },
          { "steel-plate", 4 },
          { "iron-gear-wheel", 4 },
          { "electronic-circuit", 5 },
        },
        results = { { type = "item", name = "fast-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "express-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "express-transport-belt", 2 },
          { "steel-plate", 4 },
          { "iron-gear-wheel", 4 },
          { "advanced-circuit", 5 },
        },
        results = { { type = "item", name = "express-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "turbo-transport-belt", 2 },
          { "steel-plate", 4 },
          { "iron-gear-wheel", 4 },
          { "processing-unit", 5 },
        },
        results = { { type = "item", name = "turbo-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { "ultimate-transport-belt", 2 },
          { "steel-plate", 4 },
          { "iron-gear-wheel", 4 },
          { "processing-unit", 5 },
        },
        results = { { type = "item", name = "ultimate-splitter", amount = 1 } },
      },
    })
  end
else
  data:extend({
    {
      type = "recipe",
      name = "turbo-transport-belt",
      enabled = false,
      ingredients = {
        { "express-transport-belt", 1 },
        { "iron-gear-wheel", 20 },
      },
      results = { { type = "item", name = "turbo-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "turbo-underground-belt",
      enabled = false,
      ingredients = {
        { "express-underground-belt", 2 },
        { "iron-gear-wheel", 100 },
      },
      results = { { type = "item", name = "turbo-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "turbo-splitter",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { "express-splitter", 1 },
        { "processing-unit", 10 },
        { "iron-gear-wheel", 10 },
      },
      results = { { type = "item", name = "turbo-splitter", amount = 2 } },
    },

    {
      type = "recipe",
      name = "ultimate-transport-belt",
      enabled = false,
      ingredients = {
        { "turbo-transport-belt", 1 },
        { "iron-gear-wheel", 20 },
      },
      results = { { type = "item", name = "ultimate-transport-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "ultimate-underground-belt",
      enabled = false,
      ingredients = {
        { "turbo-underground-belt", 2 },
        { "iron-gear-wheel", 120 },
      },
      results = { { type = "item", name = "ultimate-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "ultimate-splitter",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { "turbo-splitter", 1 },
        { "processing-unit", 10 },
        { "iron-gear-wheel", 10 },
      },
      results = { { type = "item", name = "ultimate-splitter", amount = 1 } },
    },
  })
end
