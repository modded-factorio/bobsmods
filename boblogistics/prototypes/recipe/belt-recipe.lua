if settings.startup["bobmods-logistics-beltoverhaul"].value == true then

  data:extend(
  {
    {
      type = "recipe",
      name = "basic-transport-belt",
      ingredients =
      {
        {"iron-plate", 1},
        {"iron-gear-wheel", 1}
      },
      result = "basic-transport-belt",
      result_count = 2
    },
    {
      type = "recipe",
      name = "transport-belt",
      enabled = false,
      ingredients =
      {
        {"iron-plate", 2},
        {"iron-gear-wheel", 2}
      },
      result = "transport-belt",
    },
    {
      type = "recipe",
      name = "fast-transport-belt",
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2},
        {"iron-gear-wheel", 4},
      },
      result = "fast-transport-belt"
    },
    {
      type = "recipe",
      name = "express-transport-belt",
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2},
        {"iron-gear-wheel", 4},
      },
      result = "express-transport-belt"
    },
    {
      type = "recipe",
      name = "turbo-transport-belt",
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2},
        {"iron-gear-wheel", 4},
      },
      result = "turbo-transport-belt"
    },
    {
      type = "recipe",
      name = "ultimate-transport-belt",
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2},
        {"iron-gear-wheel", 4},
      },
      result = "ultimate-transport-belt"
    },
  }
  )

  data:extend(
  {
    {
      type = "recipe",
      name = "basic-underground-belt",
      enabled = false,
      energy_required = 1,
      ingredients =
      {
        {"basic-transport-belt", 5},
        {"stone", 2},
        {"wood", 2},
      },
      result_count = 2,
      result = "basic-underground-belt",
    },
    {
      type = "recipe",
      name = "basic-splitter",
      enabled = false,
      energy_required = 1,
      ingredients =
      {
        {"basic-transport-belt", 5},
        {"wood", 4},
        {"iron-gear-wheel", 2},
        {"copper-cable", 4}
      },
      result = "basic-splitter",
    },
  }
  )


  if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
    bobmods.lib.recipe.add_ingredient("fast-transport-belt", {"transport-belt", 1})
    bobmods.lib.recipe.add_ingredient("express-transport-belt", {"fast-transport-belt", 1})
    bobmods.lib.recipe.add_ingredient("turbo-transport-belt", {"express-transport-belt", })
    bobmods.lib.recipe.add_ingredient("ultimate-transport-belt", {"turbo-transport-belt", })
    bobmods.lib.recipe.add_ingredient("transport-belt", {"basic-transport-belt", 1})

    data:extend(
    {
      {
        type = "recipe",
        name = "underground-belt",
        enabled = false,
        energy_required = 1,
        ingredients =
        {
          {"basic-underground-belt", 2},
          {"iron-plate", 14},
          {"iron-gear-wheel", 20},
        },
        result_count = 2,
        result = "underground-belt",
      },
      {
        type = "recipe",
        name = "fast-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {"underground-belt", 2},
          {"steel-plate", 14},
          {"iron-gear-wheel", 20},
        },
        result_count = 2,
        result = "fast-underground-belt",
      },
      {
        type = "recipe",
        name = "express-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {"fast-underground-belt", 2},
          {"steel-plate", 14},
          {"iron-gear-wheel", 20},
        },
        result_count = 2,
        result = "express-underground-belt"
      },
      {
        type = "recipe",
        name = "turbo-underground-belt",
        enabled = false,
        ingredients =
        {
          {"express-underground-belt", 2},
          {"steel-plate", 14},
          {"iron-gear-wheel", 20},
        },
        result_count = 2,
        result = "turbo-underground-belt"
      },
      {
        type = "recipe",
        name = "ultimate-underground-belt",
        enabled = false,
        ingredients =
        {
          {"turbo-underground-belt", 2},
          {"steel-plate", 14},
          {"iron-gear-wheel", 20},
        },
        result_count = 2,
        result = "ultimate-underground-belt"
      },


      {
        type = "recipe",
        name = "splitter",
        enabled = false,
        energy_required = 1,
        ingredients =
        {
          {"basic-splitter", 1},
          {"iron-plate", 8},
          {"iron-gear-wheel", 14},
          {"electronic-circuit", 5},
        },
        result = "splitter",
      },
      {
        type = "recipe",
        name = "fast-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"splitter", 1},
          {"steel-plate", 8},
          {"iron-gear-wheel", 14},
          {"electronic-circuit", 5},
        },
        result = "fast-splitter",
      },
      {
        type = "recipe",
        name = "express-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"fast-splitter", 1},
          {"steel-plate", 8},
          {"iron-gear-wheel", 14},
          {"advanced-circuit", 5},
        },
        result = "express-splitter"
      },
      {
        type = "recipe",
        name = "turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"express-splitter", 1},
          {"steel-plate", 8},
          {"iron-gear-wheel", 14},
          {"processing-unit", 5},
        },
        result = "turbo-splitter"
      },
      {
        type = "recipe",
        name = "ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"turbo-splitter", 1},
          {"steel-plate", 8},
          {"iron-gear-wheel", 14},
          {"processing-unit", 5},
        },
        result = "ultimate-splitter"
      },
    }
    )
  else
    data:extend(
    {
      {
        type = "recipe",
        name = "underground-belt",
        enabled = false,
        energy_required = 1,
        ingredients =
        {
          {"transport-belt", 5},
          {"iron-plate", 4},
        },
        result_count = 2,
        result = "underground-belt",
      },
      {
        type = "recipe",
        name = "fast-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {"fast-transport-belt", 5},
          {"steel-plate", 4},
        },
        result_count = 2,
        result = "fast-underground-belt",
      },
      {
        type = "recipe",
        name = "express-underground-belt",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {"express-transport-belt", 5},
          {"steel-plate", 4},
        },
        result_count = 2,
        result = "express-underground-belt"
      },
      {
        type = "recipe",
        name = "turbo-underground-belt",
        enabled = false,
        ingredients =
        {
          {"turbo-transport-belt", 5},
          {"steel-plate", 4},
        },
        result_count = 2,
        result = "turbo-underground-belt"
      },
      {
        type = "recipe",
        name = "ultimate-underground-belt",
        enabled = false,
        ingredients =
        {
          {"ultimate-transport-belt", 5},
          {"steel-plate", 4},
        },
        result_count = 2,
        result = "ultimate-underground-belt"
      },


      {
        type = "recipe",
        name = "splitter",
        enabled = false,
        energy_required = 1,
        ingredients =
        {
          {"transport-belt", 2},
          {"iron-plate", 4},
          {"iron-gear-wheel", 4},
          {"electronic-circuit", 5},
        },
        result = "splitter",
      },
      {
        type = "recipe",
        name = "fast-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"fast-transport-belt", 2},
          {"steel-plate", 4},
          {"iron-gear-wheel", 4},
          {"electronic-circuit", 5},
        },
        result = "fast-splitter",
      },
      {
        type = "recipe",
        name = "express-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"express-transport-belt", 2},
          {"steel-plate", 4},
          {"iron-gear-wheel", 4},
          {"advanced-circuit", 5},
        },
        result = "express-splitter"
      },
      {
        type = "recipe",
        name = "turbo-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"turbo-transport-belt", 2},
          {"steel-plate", 4},
          {"iron-gear-wheel", 4},
          {"processing-unit", 5},
        },
        result = "turbo-splitter"
      },
      {
        type = "recipe",
        name = "ultimate-splitter",
        enabled = false,
        energy_required = 2,
        ingredients =
        {
          {"ultimate-transport-belt", 2},
          {"steel-plate", 4},
          {"iron-gear-wheel", 4},
          {"processing-unit", 5},
        },
        result = "ultimate-splitter"
      },
    }
    )
  end
else
  data:extend(
  {
    {
      type = "recipe",
      name = "turbo-transport-belt",
      enabled = false,
      ingredients =
      {
        {"express-transport-belt", 1},
        {"iron-gear-wheel", 20},
      },
      result = "turbo-transport-belt"
    },
    {
      type = "recipe",
      name = "turbo-underground-belt",
      enabled = false,
      ingredients =
      {
        {"express-underground-belt", 2},
        {"iron-gear-wheel", 100},
      },
      result_count = 2,
      result = "turbo-underground-belt"
    },
    {
      type = "recipe",
      name = "turbo-splitter",
      enabled = false,
      energy_required = 2,
      ingredients =
      {
        {"express-splitter", 1},
        {"processing-unit", 10},
        {"iron-gear-wheel", 10},
      },
      result = "turbo-splitter"
    },

    {
      type = "recipe",
      name = "ultimate-transport-belt",
      enabled = false,
      ingredients =
      {
        {"turbo-transport-belt", 1},
        {"iron-gear-wheel", 20},
      },
      result = "ultimate-transport-belt"
    },
    {
      type = "recipe",
      name = "ultimate-underground-belt",
      enabled = false,
      ingredients =
      {
        {"turbo-underground-belt", 2},
        {"iron-gear-wheel", 120},
      },
      result_count = 2,
      result = "ultimate-underground-belt"
    },
    {
      type = "recipe",
      name = "ultimate-splitter",
      enabled = false,
      energy_required = 2,
      ingredients =
      {
        {"turbo-splitter", 1},
        {"processing-unit", 10},
        {"iron-gear-wheel", 10},
      },
      result = "ultimate-splitter"
    },
  }
  )
end
