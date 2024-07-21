data:extend({
  {
    type = "recipe",
    name = "steam-inserter",
    ingredients = {
      { "burner-inserter", 1 },
      { "pipe", 1 },
    },
    results = {{ type = "item", name = "steam-inserter", amount = 1 }},
    requester_paste_multiplier = 4,
  },
  {
    type = "recipe",
    name = "express-inserter",
    enabled = false,
    ingredients = {
      { "fast-inserter", 1 },
      { "iron-gear-wheel", 2 },
      { "advanced-circuit", 2 },
    },
    results = {{ type = "item", name = "express-inserter", amount = 1 }},
    requester_paste_multiplier = 4,
  },
  {
    type = "recipe",
    name = "express-filter-inserter",
    enabled = false,
    ingredients = {
      { "filter-inserter", 1 },
      { "iron-gear-wheel", 2 },
      { "advanced-circuit", 4 },
    },
    results = {{ type = "item", name = "express-filter-inserter", amount = 1 }},
    requester_paste_multiplier = 4,
  },
  {
    type = "recipe",
    name = "express-stack-inserter",
    enabled = false,
    ingredients = {
      { "stack-inserter", 1 },
      { "iron-gear-wheel", 15 },
      { "advanced-circuit", 5 },
    },
    results = {{ type = "item", name = "express-stack-inserter", amount = 1 }},
    requester_paste_multiplier = 4,
  },
  {
    type = "recipe",
    name = "express-stack-filter-inserter",
    enabled = false,
    ingredients = {
      { "stack-filter-inserter", 1 },
      { "iron-gear-wheel", 15 },
      { "advanced-circuit", 5 },
    },
    results = {{ type = "item", name = "express-stack-filter-inserter", amount = 1 }},
    requester_paste_multiplier = 4,
  },
})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "yellow-filter-inserter", --standard
      enabled = false,
      ingredients = {
        { "inserter", 1 },
        { "electronic-circuit", 4 },
      },
      results = {{ type = "item", name = "yellow-filter-inserter", amount = 1 }},
    },
    {
      type = "recipe",
      name = "red-stack-inserter", --fast
      enabled = false,
      ingredients = {
        { "long-handed-inserter", 1 },
        { "steel-plate", 3 },
        { "iron-gear-wheel", 5 }, -- replace brass -- add in steel bearings if they and brass exist
      },
      results = {{ type = "item", name = "red-stack-inserter", amount = 1 }},
    },
    {
      type = "recipe",
      name = "red-stack-filter-inserter", --fast
      enabled = false,
      ingredients = {
        { "red-stack-inserter", 1 },
        { "electronic-circuit", 5 },
      },
      results = {{ type = "item", name = "red-stack-filter-inserter", amount = 1 }},
    },
  })

  if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
    data:extend({
      {
        type = "recipe",
        name = "long-handed-inserter", --fast inserter
        enabled = false,
        ingredients = {
          { "inserter", 1 }, --optional
          { "steel-plate", 1 },
          { "iron-gear-wheel", 1 }, -- replace steel gear wheel -- add in steel bearings if they and brass exist
          { "electronic-circuit", 1 },
        },
        results = {{ type = "item", name = "long-handed-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "red-filter-inserter", --fast
        enabled = false,
        ingredients = {
          { "yellow-filter-inserter", 1 },
          { "steel-plate", 1 },
          { "iron-gear-wheel", 1 }, -- replace steel gear wheel -- add in steel bearings if they and brass exist
          { "electronic-circuit", 1 },
        },
        results = {{ type = "item", name = "red-filter-inserter", amount = 1 }},
      },

      {
        type = "recipe",
        name = "fast-inserter", --express
        enabled = false,
        ingredients = {
          { "long-handed-inserter", 1 }, --optional
          { "steel-plate", 1 }, -- replace aluminium
          { "iron-gear-wheel", 1 }, -- replace brass -- add steel bearings, or brass if it exists.
          { "advanced-circuit", 1 },
        },
        results = {{ type = "item", name = "fast-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "filter-inserter", --express
        enabled = false,
        ingredients = {
          { "red-filter-inserter", 1 },
          { "steel-plate", 1 }, -- replace aluminium
          { "iron-gear-wheel", 1 }, -- replace brass -- add steel bearings, or brass if it exists.
          { "advanced-circuit", 5 },
        },
        results = {{ type = "item", name = "filter-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "stack-inserter", --express
        enabled = false,
        ingredients = {
          { "red-stack-inserter", 1 },
          { "steel-plate", 4 }, -- replace aluminium
          { "iron-gear-wheel", 6 }, -- replace brass -- add steel bearings, or brass if it exists.
          { "advanced-circuit", 1 },
        },
        results = {{ type = "item", name = "stack-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "stack-filter-inserter", --express
        enabled = false,
        ingredients = {
          { "red-stack-filter-inserter", 1 },
          { "steel-plate", 4 }, -- replace aluminium
          { "iron-gear-wheel", 6 }, -- replace brass -- add steel bearings, or brass if it exists.
          { "advanced-circuit", 6 },
        },
        results = {{ type = "item", name = "stack-filter-inserter", amount = 1 }},
      },

      {
        type = "recipe",
        name = "turbo-inserter", --turbo
        enabled = false,
        ingredients = {
          { "fast-inserter", 1 }, --optional
          { "steel-plate", 1 }, -- replace titanium
          { "iron-gear-wheel", 1 }, --replace titanium -- add titanium bearing
          { "processing-unit", 1 },
        },
        results = {{ type = "item", name = "turbo-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "turbo-filter-inserter", --turbo
        enabled = false,
        ingredients = {
          { "filter-inserter", 1 },
          { "steel-plate", 1 }, -- replace titanium
          { "iron-gear-wheel", 1 }, -- replace titanium -- add titanium bearing
          { "processing-unit", 5 },
        },
        results = {{ type = "item", name = "turbo-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "turbo-stack-inserter", --turbo
        enabled = false,
        ingredients = {
          { "stack-inserter", 1 },
          { "steel-plate", 4 }, -- replace titanium
          { "iron-gear-wheel", 6 }, -- replace titanium--add titanium bearing
          { "processing-unit", 1 },
        },
        results = {{ type = "item", name = "turbo-stack-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "turbo-stack-filter-inserter", --turbo
        enabled = false,
        ingredients = {
          { "stack-filter-inserter", 1 },
          { "steel-plate", 4 }, -- replace titanium
          { "iron-gear-wheel", 6 }, -- replace titanium--add titanium bearing
          { "processing-unit", 6 },
        },
        results = {{ type = "item", name = "turbo-stack-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "express-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "turbo-inserter", 1 }, --optional
          { "steel-plate", 1 }, -- replace nitinol
          { "iron-gear-wheel", 1 }, --replace nitinol -- add nitinol bearing
          { "processing-unit", 1 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "express-filter-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "turbo-filter-inserter", 1 },
          { "steel-plate", 1 }, -- replace nitinol
          { "iron-gear-wheel", 1 }, -- replace nitinol -- add nitinol bearing
          { "processing-unit", 5 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "express-stack-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "turbo-stack-inserter", 1 },
          { "steel-plate", 4 }, -- replace nitinol
          { "iron-gear-wheel", 6 }, -- replace nitinol -- add nitinol bearing
          { "processing-unit", 1 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-stack-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "express-stack-filter-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "turbo-stack-filter-inserter", 1 },
          { "steel-plate", 4 }, -- replace nitinol
          { "iron-gear-wheel", 6 }, -- replace nitinol -- add nitinol bearing
          { "processing-unit", 6 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-stack-filter-inserter", amount = 1 }},
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
          { "steel-plate", 1 },
          { "iron-gear-wheel", 1 }, -- replace steel gear wheel -- add in steel bearings if they and brass exist
          { "electronic-circuit", 1 },
        },
        results = {{ type = "item", name = "long-handed-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "red-filter-inserter", --fast
        enabled = false,
        ingredients = {
          { "long-handed-inserter", 1 },
          { "electronic-circuit", 4 },
        },
        results = {{ type = "item", name = "red-filter-inserter", amount = 1 }},
      },

      {
        type = "recipe",
        name = "fast-inserter", --express
        enabled = false,
        ingredients = {
          { "steel-plate", 1 }, -- replace aluminium
          { "iron-gear-wheel", 1 }, -- replace brass -- add steel bearings, or brass if it exists.
          { "advanced-circuit", 1 },
        },
        results = {{ type = "item", name = "fast-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "filter-inserter", --express
        enabled = false,
        ingredients = {
          { "fast-inserter", 1 },
          { "advanced-circuit", 4 },
        },
        results = {{ type = "item", name = "filter-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "stack-inserter", --express
        enabled = false,
        ingredients = {
          { "fast-inserter", 1 },
          { "steel-plate", 3 }, -- replace aluminium
          { "iron-gear-wheel", 5 }, -- replace brass -- add steel bearings, or brass if it exists.
        },
        results = {{ type = "item", name = "stack-inserter", amount = 1 }},
      },
      {
        type = "recipe",
        name = "stack-filter-inserter", --express
        enabled = false,
        ingredients = {
          { "stack-inserter", 1 },
          { "advanced-circuit", 5 },
        },
        results = {{ type = "item", name = "stack-filter-inserter", amount = 1 }},
      },

      {
        type = "recipe",
        name = "turbo-inserter", --turbo
        enabled = false,
        ingredients = {
          { "steel-plate", 1 }, -- replace titanium
          { "iron-gear-wheel", 1 }, --replace titanium -- add titanium bearing
          { "processing-unit", 1 },
        },
        results = {{ type = "item", name = "turbo-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "turbo-filter-inserter", --turbo
        enabled = false,
        ingredients = {
          { "turbo-inserter", 1 },
          { "processing-unit", 4 },
        },
        results = {{ type = "item", name = "turbo-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "turbo-stack-inserter", --turbo
        enabled = false,
        ingredients = {
          { "turbo-inserter", 1 },
          { "steel-plate", 3 }, -- replace titanium
          { "iron-gear-wheel", 5 }, -- replace titanium--add titanium bearing
        },
        results = {{ type = "item", name = "turbo-stack-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "turbo-stack-filter-inserter", --turbo
        enabled = false,
        ingredients = {
          { "turbo-stack-inserter", 1 },
          { "processing-unit", 5 },
        },
        results = {{ type = "item", name = "turbo-stack-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "express-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "steel-plate", 1 }, -- replace nitinol
          { "iron-gear-wheel", 1 }, --replace nitinol -- add nitinol bearing
          { "processing-unit", 1 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "express-filter-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "express-inserter", 1 },
          { "processing-unit", 4 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },

      {
        type = "recipe",
        name = "express-stack-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "express-inserter", 1 },
          { "steel-plate", 3 }, -- replace nitinol
          { "iron-gear-wheel", 5 }, -- replace nitinol -- add nitinol bearing
        },
        results = {{ type = "item", name = "express-stack-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
      {
        type = "recipe",
        name = "express-stack-filter-inserter", --ultimate
        enabled = false,
        ingredients = {
          { "express-stack-inserter", 1 },
          { "processing-unit", 5 }, --replace advanced processing unit
        },
        results = {{ type = "item", name = "express-stack-filter-inserter", amount = 1 }},
        requester_paste_multiplier = 4,
      },
    })
  end
end
