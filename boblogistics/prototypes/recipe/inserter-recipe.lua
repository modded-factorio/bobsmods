data:extend({
  {
    type = "recipe",
    name = "steam-inserter",
    ingredients = {
      { "burner-inserter", 1 },
      { "pipe", 1 },
    },
    result = "steam-inserter",
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
    result = "express-inserter",
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
    result = "express-filter-inserter",
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
    result = "express-stack-inserter",
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
    result = "express-stack-filter-inserter",
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
      result = "yellow-filter-inserter",
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
      result = "red-stack-inserter",
    },
    {
      type = "recipe",
      name = "red-stack-filter-inserter", --fast
      enabled = false,
      ingredients = {
        { "red-stack-inserter", 1 },
        { "electronic-circuit", 5 },
      },
      result = "red-stack-filter-inserter",
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
        result = "long-handed-inserter",
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
        result = "red-filter-inserter",
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
        result = "fast-inserter",
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
        result = "filter-inserter",
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
        result = "stack-inserter",
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
        result = "stack-filter-inserter",
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
        result = "turbo-inserter",
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
        result = "turbo-filter-inserter",
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
        result = "turbo-stack-inserter",
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
        result = "turbo-stack-filter-inserter",
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
        result = "express-inserter",
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
        result = "express-filter-inserter",
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
        result = "express-stack-inserter",
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
        result = "express-stack-filter-inserter",
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
        result = "long-handed-inserter",
      },
      {
        type = "recipe",
        name = "red-filter-inserter", --fast
        enabled = false,
        ingredients = {
          { "long-handed-inserter", 1 },
          { "electronic-circuit", 4 },
        },
        result = "red-filter-inserter",
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
        result = "fast-inserter",
      },
      {
        type = "recipe",
        name = "filter-inserter", --express
        enabled = false,
        ingredients = {
          { "fast-inserter", 1 },
          { "advanced-circuit", 4 },
        },
        result = "filter-inserter",
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
        result = "stack-inserter",
      },
      {
        type = "recipe",
        name = "stack-filter-inserter", --express
        enabled = false,
        ingredients = {
          { "stack-inserter", 1 },
          { "advanced-circuit", 5 },
        },
        result = "stack-filter-inserter",
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
        result = "turbo-inserter",
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
        result = "turbo-filter-inserter",
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
        result = "turbo-stack-inserter",
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
        result = "turbo-stack-filter-inserter",
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
        result = "express-inserter",
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
        result = "express-filter-inserter",
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
        result = "express-stack-inserter",
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
        result = "express-stack-filter-inserter",
        requester_paste_multiplier = 4,
      },
    })
  end
end
