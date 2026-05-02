if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  data.raw.recipe["transport-belt"].ingredients = {
    { type = "item", name = "iron-plate", amount = 2 },
    { type = "item", name = "iron-gear-wheel", amount = 2 },
  }
  data.raw.recipe["fast-transport-belt"].ingredients = {
    { type = "item", name = "steel-plate", amount = 2 },
    { type = "item", name = "iron-gear-wheel", amount = 4 },
  }
  data.raw.recipe["express-transport-belt"].ingredients = {
    { type = "item", name = "steel-plate", amount = 2 },
    { type = "item", name = "iron-gear-wheel", amount = 4 },
  }

  data:extend({
    {
      type = "recipe",
      name = "bob-basic-transport-belt",
      ingredients = {
        { type = "item", name = "iron-plate", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 1 },
      },
      results = { { type = "item", name = "bob-basic-transport-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "bob-turbo-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
      },
      results = { { type = "item", name = "bob-turbo-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-ultimate-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
      },
      results = { { type = "item", name = "bob-ultimate-transport-belt", amount = 1 } },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-basic-underground-belt",
      enabled = false,
      energy_required = 0.5,
      ingredients = {
        { type = "item", name = "bob-basic-transport-belt", amount = 5 },
        { type = "item", name = "stone", amount = 2 },
      },
      results = { { type = "item", name = "bob-basic-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "bob-basic-splitter",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "bob-basic-transport-belt", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 2 },
        { type = "item", name = "copper-cable", amount = 4 },
      },
      results = { { type = "item", name = "bob-basic-splitter", amount = 1 } },
    },
  })

  if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
    bobmods.lib.recipe.add_ingredient("fast-transport-belt", { type = "item", name = "transport-belt", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "express-transport-belt",
      { type = "item", name = "fast-transport-belt", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-transport-belt",
      { type = "item", name = "express-transport-belt", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-transport-belt",
      { type = "item", name = "bob-turbo-transport-belt", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "transport-belt",
      { type = "item", name = "bob-basic-transport-belt", amount = 1 }
    )

    data.raw.recipe["underground-belt"].ingredients = {
      { type = "item", name = "bob-basic-underground-belt", amount = 2 },
      { type = "item", name = "iron-plate", amount = 14 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
    }
    data.raw.recipe["fast-underground-belt"].ingredients = {
      { type = "item", name = "underground-belt", amount = 2 },
      { type = "item", name = "steel-plate", amount = 14 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
    }
    data.raw.recipe["express-underground-belt"].ingredients = {
      { type = "item", name = "fast-underground-belt", amount = 2 },
      { type = "item", name = "steel-plate", amount = 14 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
    }

    data.raw.recipe["splitter"].ingredients = {
      { type = "item", name = "bob-basic-splitter", amount = 1 },
      { type = "item", name = "iron-plate", amount = 8 },
      { type = "item", name = "iron-gear-wheel", amount = 14 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    }
    data.raw.recipe["fast-splitter"].ingredients = {
      { type = "item", name = "splitter", amount = 1 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "iron-gear-wheel", amount = 14 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    }
    data.raw.recipe["express-splitter"].ingredients = {
      { type = "item", name = "fast-splitter", amount = 1 },
      { type = "item", name = "steel-plate", amount = 8 },
      { type = "item", name = "iron-gear-wheel", amount = 14 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    }

    data:extend({
      {
        type = "recipe",
        name = "bob-turbo-underground-belt",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "express-underground-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "bob-turbo-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "bob-ultimate-underground-belt",
        energy_required = 5,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-turbo-underground-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 14 },
          { type = "item", name = "iron-gear-wheel", amount = 20 },
        },
        results = { { type = "item", name = "bob-ultimate-underground-belt", amount = 2 } },
      },

      {
        type = "recipe",
        name = "bob-turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "express-splitter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "processing-unit", amount = 5 },
        },
        results = { { type = "item", name = "bob-turbo-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "bob-ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "bob-turbo-splitter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 8 },
          { type = "item", name = "iron-gear-wheel", amount = 14 },
          { type = "item", name = "processing-unit", amount = 5 },
        },
        results = { { type = "item", name = "bob-ultimate-splitter", amount = 1 } },
      },
    })
  else
    data.raw.recipe["underground-belt"].ingredients = {
      { type = "item", name = "transport-belt", amount = 5 },
      { type = "item", name = "iron-plate", amount = 4 },
    }
    data.raw.recipe["fast-underground-belt"].ingredients = {
      { type = "item", name = "fast-transport-belt", amount = 5 },
      { type = "item", name = "steel-plate", amount = 4 },
    }
    data.raw.recipe["express-underground-belt"].ingredients = {
      { type = "item", name = "express-transport-belt", amount = 5 },
      { type = "item", name = "steel-plate", amount = 4 },
    }

    data.raw.recipe["splitter"].ingredients = {
      { type = "item", name = "transport-belt", amount = 2 },
      { type = "item", name = "iron-plate", amount = 4 },
      { type = "item", name = "iron-gear-wheel", amount = 4 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    }
    data.raw.recipe["fast-splitter"].ingredients = {
      { type = "item", name = "fast-transport-belt", amount = 2 },
      { type = "item", name = "steel-plate", amount = 4 },
      { type = "item", name = "iron-gear-wheel", amount = 4 },
      { type = "item", name = "electronic-circuit", amount = 5 },
    }
    data.raw.recipe["express-splitter"].ingredients = {
      { type = "item", name = "express-transport-belt", amount = 2 },
      { type = "item", name = "steel-plate", amount = 4 },
      { type = "item", name = "iron-gear-wheel", amount = 4 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    }

    data:extend({
      {
        type = "recipe",
        name = "bob-turbo-underground-belt",
        energy_required = 4,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-turbo-transport-belt", amount = 5 },
          { type = "item", name = "steel-plate", amount = 4 },
        },
        results = { { type = "item", name = "bob-turbo-underground-belt", amount = 2 } },
      },
      {
        type = "recipe",
        name = "bob-ultimate-underground-belt",
        energy_required = 5,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-ultimate-transport-belt", amount = 5 },
          { type = "item", name = "steel-plate", amount = 4 },
        },
        results = { { type = "item", name = "bob-ultimate-underground-belt", amount = 2 } },
      },

      {
        type = "recipe",
        name = "bob-turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "bob-turbo-transport-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "processing-unit", amount = 5 },
        },
        results = { { type = "item", name = "bob-turbo-splitter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "bob-ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients = {
          { type = "item", name = "bob-ultimate-transport-belt", amount = 2 },
          { type = "item", name = "steel-plate", amount = 4 },
          { type = "item", name = "iron-gear-wheel", amount = 4 },
          { type = "item", name = "processing-unit", amount = 5 },
        },
        results = { { type = "item", name = "bob-ultimate-splitter", amount = 1 } },
      },
    })
  end

  if mods["space-age"] then
    data.raw.recipe["bob-basic-transport-belt"].category = "pressing"
    data.raw.recipe["bob-basic-underground-belt"].category = "pressing"
    data.raw.recipe["bob-basic-splitter"].category = "pressing"
    data.raw.recipe["express-transport-belt"].category = "pressing"
    data.raw.recipe["express-underground-belt"].category = "pressing"
    data.raw.recipe["express-splitter"].category = "pressing"
  else
    data.raw.recipe["express-transport-belt"].category = "crafting"
    data.raw.recipe["express-underground-belt"].category = "crafting"
    data.raw.recipe["express-splitter"].category = "crafting"
  end
else
  data:extend({
    {
      type = "recipe",
      name = "bob-turbo-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "express-transport-belt", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "bob-turbo-transport-belt", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-turbo-underground-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "express-underground-belt", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 100 },
      },
      results = { { type = "item", name = "bob-turbo-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "bob-turbo-splitter",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "express-splitter", amount = 1 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
      },
      results = { { type = "item", name = "bob-turbo-splitter", amount = 2 } },
    },

    {
      type = "recipe",
      name = "bob-ultimate-transport-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-turbo-transport-belt", amount = 1 },
        { type = "item", name = "iron-gear-wheel", amount = 20 },
      },
      results = { { type = "item", name = "bob-ultimate-transport-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "bob-ultimate-underground-belt",
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-turbo-underground-belt", amount = 2 },
        { type = "item", name = "iron-gear-wheel", amount = 120 },
      },
      results = { { type = "item", name = "bob-ultimate-underground-belt", amount = 2 } },
    },
    {
      type = "recipe",
      name = "bob-ultimate-splitter",
      enabled = false,
      energy_required = 2,
      ingredients = {
        { type = "item", name = "bob-turbo-splitter", amount = 1 },
        { type = "item", name = "processing-unit", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 10 },
      },
      results = { { type = "item", name = "bob-ultimate-splitter", amount = 1 } },
    },
  })
end

if mods["space-age"] then
  data.raw.recipe["bob-turbo-transport-belt"].category = "pressing"
  data.raw.recipe["bob-turbo-underground-belt"].category = "pressing"
  data.raw.recipe["bob-turbo-splitter"].category = "pressing"
  data.raw.recipe["bob-ultimate-transport-belt"].category = "pressing"
  data.raw.recipe["bob-ultimate-underground-belt"].category = "pressing"
  data.raw.recipe["bob-ultimate-splitter"].category = "pressing"
end
