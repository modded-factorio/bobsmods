data:extend({
  {
    type = "recipe",
    name = "bob-steam-inserter",
    enabled = false,
    ingredients = {
      { type = "item", name = "burner-inserter", amount = 1 },
      { type = "item", name = "pipe", amount = 1 },
    },
    results = { { type = "item", name = "bob-steam-inserter", amount = 1 } },
    requester_paste_multiplier = 4,
  },
  {
    type = "recipe",
    name = "bob-express-inserter",
    enabled = false,
    ingredients = {
      { type = "item", name = "fast-inserter", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 2 },
    },
    results = { { type = "item", name = "bob-express-inserter", amount = 1 } },
    requester_paste_multiplier = 4,
  },
  {
    type = "recipe",
    name = "bob-express-bulk-inserter",
    enabled = false,
    ingredients = {
      { type = "item", name = "bulk-inserter", amount = 1 },
      { type = "item", name = "iron-gear-wheel", amount = 15 },
      { type = "item", name = "advanced-circuit", amount = 5 },
    },
    results = { { type = "item", name = "bob-express-bulk-inserter", amount = 1 } },
    requester_paste_multiplier = 4,
  },
})
bobmods.lib.tech.add_recipe_unlock("steam-power", "bob-steam-inserter")

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-red-bulk-inserter", --fast
      enabled = false,
      ingredients = {
        { type = "item", name = "long-handed-inserter", amount = 1 },
        { type = "item", name = "steel-plate", amount = 3 },
        { type = "item", name = "iron-gear-wheel", amount = 5 }, -- replace brass -- add in steel bearings if they and brass exist
      },
      results = { { type = "item", name = "bob-red-bulk-inserter", amount = 1 } },
    },
  })

  if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
    data:extend({
      {
        type = "recipe",
        name = "long-handed-inserter", --fast inserter
        enabled = false,
        ingredients = {
          { type = "item", name = "inserter", amount = 1 }, --optional
          { type = "item", name = "steel-plate", amount = 1 },
          { type = "item", name = "iron-gear-wheel", amount = 1 }, -- replace steel gear wheel -- add in steel bearings if they and brass exist
          { type = "item", name = "electronic-circuit", amount = 1 },
        },
        results = { { type = "item", name = "long-handed-inserter", amount = 1 } },
      },

      {
        type = "recipe",
        name = "fast-inserter", --express
        enabled = false,
        ingredients = {
          { type = "item", name = "long-handed-inserter", amount = 1 }, --optional
          { type = "item", name = "steel-plate", amount = 1 }, -- replace aluminium
          { type = "item", name = "iron-gear-wheel", amount = 1 }, -- replace brass -- add steel bearings, or brass if it exists.
          { type = "item", name = "advanced-circuit", amount = 1 },
        },
        results = { { type = "item", name = "fast-inserter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "bulk-inserter", --express
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-red-bulk-inserter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 4 }, -- replace aluminium
          { type = "item", name = "iron-gear-wheel", amount = 6 }, -- replace brass -- add steel bearings, or brass if it exists.
          { type = "item", name = "advanced-circuit", amount = 1 },
        },
        results = { { type = "item", name = "bulk-inserter", amount = 1 } },
      },

      {
        type = "recipe",
        name = "bob-turbo-inserter", --turbo
        enabled = false,
        ingredients = {
          { type = "item", name = "fast-inserter", amount = 1 }, --optional
          { type = "item", name = "steel-plate", amount = 1 }, -- replace titanium
          { type = "item", name = "iron-gear-wheel", amount = 1 }, --replace titanium -- add titanium bearing
          { type = "item", name = "processing-unit", amount = 1 },
        },
        results = { { type = "item", name = "bob-turbo-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "bob-turbo-bulk-inserter", --turbo
        enabled = false,
        ingredients = {
          { type = "item", name = "bulk-inserter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 4 }, -- replace titanium
          { type = "item", name = "iron-gear-wheel", amount = 6 }, -- replace titanium--add titanium bearing
          { type = "item", name = "processing-unit", amount = 1 },
        },
        results = { { type = "item", name = "bob-turbo-bulk-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "bob-express-inserter", --ultimate
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-turbo-inserter", amount = 1 }, --optional
          { type = "item", name = "steel-plate", amount = 1 }, -- replace nitinol
          { type = "item", name = "iron-gear-wheel", amount = 1 }, --replace nitinol -- add nitinol bearing
          { type = "item", name = "processing-unit", amount = 1 }, --replace advanced processing unit
        },
        results = { { type = "item", name = "bob-express-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "bob-express-bulk-inserter", --ultimate
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-turbo-bulk-inserter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 4 }, -- replace nitinol
          { type = "item", name = "iron-gear-wheel", amount = 6 }, -- replace nitinol -- add nitinol bearing
          { type = "item", name = "processing-unit", amount = 1 }, --replace advanced processing unit
        },
        results = { { type = "item", name = "bob-express-bulk-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },
    })
  else
    data:extend({
      {
        type = "recipe",
        name = "long-handed-inserter", --fast inserter
        enabled = false,
        ingredients = {
          { type = "item", name = "steel-plate", amount = 1 },
          { type = "item", name = "iron-gear-wheel", amount = 1 }, -- replace steel gear wheel -- add in steel bearings if they and brass exist
          { type = "item", name = "electronic-circuit", amount = 1 },
        },
        results = { { type = "item", name = "long-handed-inserter", amount = 1 } },
      },

      {
        type = "recipe",
        name = "fast-inserter", --express
        enabled = false,
        ingredients = {
          { type = "item", name = "steel-plate", amount = 1 }, -- replace aluminium
          { type = "item", name = "iron-gear-wheel", amount = 1 }, -- replace brass -- add steel bearings, or brass if it exists.
          { type = "item", name = "advanced-circuit", amount = 1 },
        },
        results = { { type = "item", name = "fast-inserter", amount = 1 } },
      },
      {
        type = "recipe",
        name = "bulk-inserter", --express
        enabled = false,
        ingredients = {
          { type = "item", name = "fast-inserter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 3 }, -- replace aluminium
          { type = "item", name = "iron-gear-wheel", amount = 5 }, -- replace brass -- add steel bearings, or brass if it exists.
        },
        results = { { type = "item", name = "bulk-inserter", amount = 1 } },
      },

      {
        type = "recipe",
        name = "bob-turbo-inserter", --turbo
        enabled = false,
        ingredients = {
          { type = "item", name = "steel-plate", amount = 1 }, -- replace titanium
          { type = "item", name = "iron-gear-wheel", amount = 1 }, --replace titanium -- add titanium bearing
          { type = "item", name = "processing-unit", amount = 1 },
        },
        results = { { type = "item", name = "bob-turbo-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "bob-turbo-bulk-inserter", --turbo
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-turbo-inserter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 3 }, -- replace titanium
          { type = "item", name = "iron-gear-wheel", amount = 5 }, -- replace titanium--add titanium bearing
        },
        results = { { type = "item", name = "bob-turbo-bulk-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "bob-express-inserter", --ultimate
        enabled = false,
        ingredients = {
          { type = "item", name = "steel-plate", amount = 1 }, -- replace nitinol
          { type = "item", name = "iron-gear-wheel", amount = 1 }, --replace nitinol -- add nitinol bearing
          { type = "item", name = "processing-unit", amount = 1 }, --replace advanced processing unit
        },
        results = { { type = "item", name = "bob-express-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "bob-express-bulk-inserter", --ultimate
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-express-inserter", amount = 1 },
          { type = "item", name = "steel-plate", amount = 3 }, -- replace nitinol
          { type = "item", name = "iron-gear-wheel", amount = 5 }, -- replace nitinol -- add nitinol bearing
        },
        results = { { type = "item", name = "bob-express-bulk-inserter", amount = 1 } },
        requester_paste_multiplier = 4,
      },
    })
  end
end
