if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "basic-transport-belt",
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 1 },
      },
      results = { { type = "item", name = "basic-transport-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "iron-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 2 },
      },
      results = { { type = "item", name = "transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "fast-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
      },
      results = { { type = "item", name = "fast-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "express-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
      },
      results = { { type = "item", name = "express-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "turbo-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
      },
      results = { { type = "item", name = "turbo-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "ultimate-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
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
        { type = "item", name = "basic-transport-belt", amount = 5 },
        { type = "item", name = "stone", amount = 2 },
        { type = "item", name = "wood", amount = 2 },
      },
      results = { { type = "item", name = "basic-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "basic-splitter",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "basic-transport-belt", amount = 5 },
        { type = "item", name = "wood", amount = 4 },
        { type = "item", name = "iron-gear-wheel", amount = 2 },
        { type = "item", name = "copper-cable", amount = 4 },
      },
      results = { { type = "item", name = "basic-splitter", amount = 1 } },
    },
  })

  if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
    bobmods.lib.recipe.add_ingredient("fast-transport-belt", { type = "item", name = "transport-belt", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "express-transport-belt",
      { type = "item", name = "fast-transport-belt", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "turbo-transport-belt",
      { type = "item", name = "express-transport-belt", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "ultimate-transport-belt",
      { type = "item", name = "turbo-transport-belt", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient("transport-belt", { type = "item", name = "basic-transport-belt", amount = 1 })

    data:extend({
      {
        type = "recipe",
        name = "underground-belt",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { type = "item", name = "basic-underground-belt", amount = 2 },
          { type = "item", name = "iron-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "fast-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "underground-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "fast-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "express-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "fast-underground-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "express-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "turbo-underground-belt",
        enabled = false,
        ingredients = {
          { type = "item", name = "express-underground-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "turbo-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "ultimate-underground-belt",
        enabled = false,
        ingredients = {
          { type = "item", name = "turbo-underground-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "ultimate-underground-belt", amount = 2 } },
      },

      {
        type = "recipe",
        name = "splitter",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { type = "item", name = "basic-splitter", amount = 1 },
          { type = "item", name = "iron-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "electronic-circuit", amount = 5 },
        },
        results = { { type = "item", name = "splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "fast-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "splitter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "electronic-circuit", amount = 5 },
        },
        results = { { type = "item", name = "fast-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "express-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "fast-splitter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "advanced-circuit", amount = 5 },
        },
        results = { { type = "item", name = "express-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "express-splitter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "processing-unit", amount = 5 },
        },
        results = { { type = "item", name = "turbo-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "turbo-splitter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "processing-unit", amount = 5 },
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
          { type = "item", name = "transport-belt", amount = 5 },
          { type = "item", name = "iron-plate", amount = 4 },
        },
        results = { { type = "item", name = "underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "fast-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "fast-transport-belt", amount = 5 },
          { type = "item", name = "steel-plate", amount = 4 },
        },
        results = { { type = "item", name = "fast-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "express-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "express-transport-belt", amount = 5 },
          { type = "item", name = "steel-plate", amount = 4 },
        },
        results = { { type = "item", name = "express-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "turbo-underground-belt",
        enabled = false,
        ingredients = {
          { type = "item", name = "turbo-transport-belt", amount = 5 },
          { type = "item", name = "steel-plate", amount = 4 },
        },
        results = { { type = "item", name = "turbo-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "ultimate-underground-belt",
        enabled = false,
        ingredients = {
          { type = "item", name = "ultimate-transport-belt", amount = 5 },
          { type = "item", name = "steel-plate", amount = 4 },
        },
        results = { { type = "item", name = "ultimate-underground-belt", amount = 2 } },
      },

      {
        type = "recipe",
        name = "splitter",
        enabled = false,
        energy_required = 1,
        ingredients = {
          { type = "item", name = "transport-belt", amount = 2 },
          { type = "item", name = "iron-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "electronic-circuit", amount = 5 },
        },
        results = { { type = "item", name = "splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "fast-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "fast-transport-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "electronic-circuit", amount = 5 },
        },
        results = { { type = "item", name = "fast-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "express-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "express-transport-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "advanced-circuit", amount = 5 },
        },
        results = { { type = "item", name = "express-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "turbo-transport-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "processing-unit", amount = 5 },
        },
        results = { { type = "item", name = "turbo-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "ultimate-transport-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "processing-unit", amount = 5 },
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
        { type = "item", name = "express-transport-belt", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "turbo-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "turbo-underground-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "express-underground-belt", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 100 },
      },
      results = { { type = "item", name = "turbo-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "turbo-splitter",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "express-splitter", amount = 1 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
      },
      results = { { type = "item", name = "turbo-splitter", amount = 2 } },
    },

    {
      type = "recipe",
      name = "ultimate-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "turbo-transport-belt", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "ultimate-transport-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "ultimate-underground-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "turbo-underground-belt", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 120 },
      },
      results = { { type = "item", name = "ultimate-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "ultimate-splitter",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "turbo-splitter", amount = 1 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
      },
      results = { { type = "item", name = "ultimate-splitter", amount = 1 } },
    },
  })
end
