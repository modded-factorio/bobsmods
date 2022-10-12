data:extend({{
  type = "recipe",
  name = "steam-inserter",
  ingredients = {{"burner-inserter", 1}, {"pipe", 1}},
  result = "steam-inserter",
  requester_paste_multiplier = 4
}, {
  type = "recipe",
  name = "express-inserter",
  enabled = false,
  ingredients = {
    {"fast-inserter", 1},
    {"iron-gear-wheel", 2},
    {"advanced-circuit", 2}
  },
  result = "express-inserter",
  requester_paste_multiplier = 4
}, {
  type = "recipe",
  name = "express-filter-inserter",
  enabled = false,
  ingredients = {
    {"filter-inserter", 1},
    {"iron-gear-wheel", 2},
    {"advanced-circuit", 4}
  },
  result = "express-filter-inserter",
  requester_paste_multiplier = 4
}, {
  type = "recipe",
  name = "express-stack-inserter",
  enabled = false,
  ingredients = {
    {"stack-inserter", 1},
    {"iron-gear-wheel", 15},
    {"advanced-circuit", 5}
  },
  result = "express-stack-inserter",
  requester_paste_multiplier = 4
}, {
  type = "recipe",
  name = "express-stack-filter-inserter",
  enabled = false,
  ingredients = {
    {"stack-filter-inserter", 1},
    {"iron-gear-wheel", 15},
    {"advanced-circuit", 5}
  },
  result = "express-stack-filter-inserter",
  requester_paste_multiplier = 4
}})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data:extend({{ --standard --fast -- replace brass -- add in steel bearings if they and brass exist --fast
    type = "recipe",
    name = "yellow-filter-inserter",
    enabled = false,
    ingredients = {{"inserter", 1}, {"electronic-circuit", 4}},
    result = "yellow-filter-inserter"
  }, {
    type = "recipe",
    name = "red-stack-inserter",
    enabled = false,
    ingredients = {
      {"long-handed-inserter", 1},
      {"steel-plate", 3},
      {"iron-gear-wheel", 5}
    },
    result = "red-stack-inserter"
  }, {
    type = "recipe",
    name = "red-stack-filter-inserter",
    enabled = false,
    ingredients = {{"red-stack-inserter", 1}, {"electronic-circuit", 5}},
    result = "red-stack-filter-inserter"
  }})

  if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
    data:extend({{ --fast inserter --optional -- replace steel gear wheel -- add in steel bearings if they and brass exist --fast -- replace steel gear wheel -- add in steel bearings if they and brass exist --express --optional -- replace aluminium -- replace brass -- add steel bearings, or brass if it exists. --express -- replace aluminium -- replace brass -- add steel bearings, or brass if it exists. --express -- replace aluminium -- replace brass -- add steel bearings, or brass if it exists. --express -- replace aluminium -- replace brass -- add steel bearings, or brass if it exists. --turbo --optional -- replace titanium --replace titanium -- add titanium bearing --turbo -- replace titanium -- replace titanium -- add titanium bearing --turbo -- replace titanium -- replace titanium--add titanium bearing --turbo -- replace titanium -- replace titanium--add titanium bearing --ultimate --optional -- replace nitinol --replace nitinol -- add nitinol bearing --replace advanced processing unit --ultimate -- replace nitinol -- replace nitinol -- add nitinol bearing --replace advanced processing unit --ultimate -- replace nitinol -- replace nitinol -- add nitinol bearing --replace advanced processing unit --ultimate -- replace nitinol -- replace nitinol -- add nitinol bearing --replace advanced processing unit
      type = "recipe",
      name = "long-handed-inserter",
      enabled = false,
      ingredients = {
        {"inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"electronic-circuit", 1}
      },
      result = "long-handed-inserter"
    }, {
      type = "recipe",
      name = "red-filter-inserter",
      enabled = false,
      ingredients = {
        {"yellow-filter-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"electronic-circuit", 1}
      },
      result = "red-filter-inserter"
    }, {
      type = "recipe",
      name = "fast-inserter",
      enabled = false,
      ingredients = {
        {"long-handed-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"advanced-circuit", 1}
      },
      result = "fast-inserter"
    }, {
      type = "recipe",
      name = "filter-inserter",
      enabled = false,
      ingredients = {
        {"red-filter-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"advanced-circuit", 5}
      },
      result = "filter-inserter"
    }, {
      type = "recipe",
      name = "stack-inserter",
      enabled = false,
      ingredients = {
        {"red-stack-inserter", 1},
        {"steel-plate", 4},
        {"iron-gear-wheel", 6},
        {"advanced-circuit", 1}
      },
      result = "stack-inserter"
    }, {
      type = "recipe",
      name = "stack-filter-inserter",
      enabled = false,
      ingredients = {
        {"red-stack-filter-inserter", 1},
        {"steel-plate", 4},
        {"iron-gear-wheel", 6},
        {"advanced-circuit", 6}
      },
      result = "stack-filter-inserter"
    }, {
      type = "recipe",
      name = "turbo-inserter",
      enabled = false,
      ingredients = {
        {"fast-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"processing-unit", 1}
      },
      result = "turbo-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "turbo-filter-inserter",
      enabled = false,
      ingredients = {
        {"filter-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"processing-unit", 5}
      },
      result = "turbo-filter-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "turbo-stack-inserter",
      enabled = false,
      ingredients = {
        {"stack-inserter", 1},
        {"steel-plate", 4},
        {"iron-gear-wheel", 6},
        {"processing-unit", 1}
      },
      result = "turbo-stack-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "turbo-stack-filter-inserter",
      enabled = false,
      ingredients = {
        {"stack-filter-inserter", 1},
        {"steel-plate", 4},
        {"iron-gear-wheel", 6},
        {"processing-unit", 6}
      },
      result = "turbo-stack-filter-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-inserter",
      enabled = false,
      ingredients = {
        {"turbo-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"processing-unit", 1}
      },
      result = "express-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-filter-inserter",
      enabled = false,
      ingredients = {
        {"turbo-filter-inserter", 1},
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"processing-unit", 5}
      },
      result = "express-filter-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-stack-inserter",
      enabled = false,
      ingredients = {
        {"turbo-stack-inserter", 1},
        {"steel-plate", 4},
        {"iron-gear-wheel", 6},
        {"processing-unit", 1}
      },
      result = "express-stack-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-stack-filter-inserter",
      enabled = false,
      ingredients = {
        {"turbo-stack-filter-inserter", 1},
        {"steel-plate", 4},
        {"iron-gear-wheel", 6},
        {"processing-unit", 6}
      },
      result = "express-stack-filter-inserter",
      requester_paste_multiplier = 4
    }}) --fast inserter -- replace steel gear wheel -- add in steel bearings if they and brass exist --fast --express -- replace aluminium -- replace brass -- add steel bearings, or brass if it exists. --express --express -- replace aluminium -- replace brass -- add steel bearings, or brass if it exists. --express --turbo -- replace titanium --replace titanium -- add titanium bearing --turbo --turbo -- replace titanium -- replace titanium--add titanium bearing --turbo --ultimate -- replace nitinol --replace nitinol -- add nitinol bearing --replace advanced processing unit --ultimate --replace advanced processing unit --ultimate -- replace nitinol -- replace nitinol -- add nitinol bearing --ultimate --replace advanced processing unit
  else
    data:extend({{
      type = "recipe",
      name = "long-handed-inserter",
      enabled = false,
      ingredients = {
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"electronic-circuit", 1}
      },
      result = "long-handed-inserter"
    }, {
      type = "recipe",
      name = "red-filter-inserter",
      enabled = false,
      ingredients = {{"long-handed-inserter", 1}, {"electronic-circuit", 4}},
      result = "red-filter-inserter"
    }, {
      type = "recipe",
      name = "fast-inserter",
      enabled = false,
      ingredients = {
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"advanced-circuit", 1}
      },
      result = "fast-inserter"
    }, {
      type = "recipe",
      name = "filter-inserter",
      enabled = false,
      ingredients = {{"fast-inserter", 1}, {"advanced-circuit", 4}},
      result = "filter-inserter"
    }, {
      type = "recipe",
      name = "stack-inserter",
      enabled = false,
      ingredients = {
        {"fast-inserter", 1},
        {"steel-plate", 3},
        {"iron-gear-wheel", 5}
      },
      result = "stack-inserter"
    }, {
      type = "recipe",
      name = "stack-filter-inserter",
      enabled = false,
      ingredients = {{"stack-inserter", 1}, {"advanced-circuit", 5}},
      result = "stack-filter-inserter"
    }, {
      type = "recipe",
      name = "turbo-inserter",
      enabled = false,
      ingredients = {
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"processing-unit", 1}
      },
      result = "turbo-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "turbo-filter-inserter",
      enabled = false,
      ingredients = {{"turbo-inserter", 1}, {"processing-unit", 4}},
      result = "turbo-filter-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "turbo-stack-inserter",
      enabled = false,
      ingredients = {
        {"turbo-inserter", 1},
        {"steel-plate", 3},
        {"iron-gear-wheel", 5}
      },
      result = "turbo-stack-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "turbo-stack-filter-inserter",
      enabled = false,
      ingredients = {{"turbo-stack-inserter", 1}, {"processing-unit", 5}},
      result = "turbo-stack-filter-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-inserter",
      enabled = false,
      ingredients = {
        {"steel-plate", 1},
        {"iron-gear-wheel", 1},
        {"processing-unit", 1}
      },
      result = "express-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-filter-inserter",
      enabled = false,
      ingredients = {{"express-inserter", 1}, {"processing-unit", 4}},
      result = "express-filter-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-stack-inserter",
      enabled = false,
      ingredients = {
        {"express-inserter", 1},
        {"steel-plate", 3},
        {"iron-gear-wheel", 5}
      },
      result = "express-stack-inserter",
      requester_paste_multiplier = 4
    }, {
      type = "recipe",
      name = "express-stack-filter-inserter",
      enabled = false,
      ingredients = {{"express-stack-inserter", 1}, {"processing-unit", 5}},
      result = "express-stack-filter-inserter",
      requester_paste_multiplier = 4
    }})
  end
end