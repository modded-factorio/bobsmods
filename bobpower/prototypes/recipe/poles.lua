if settings.startup["bobmods-power-poles"].value == true then
  data:extend({{
    type = "recipe",
    name = "medium-electric-pole-2",
    enabled = false,
    ingredients = {
      {"medium-electric-pole", 1},
      {"steel-plate", 2},
      {"copper-plate", 2}
    },
    result = "medium-electric-pole-2"
  }, {
    type = "recipe",
    name = "medium-electric-pole-3",
    enabled = false,
    ingredients = {
      {"medium-electric-pole-2", 1},
      {"steel-plate", 2},
      {"copper-plate", 2}
    },
    result = "medium-electric-pole-3"
  }, {
    type = "recipe",
    name = "medium-electric-pole-4",
    enabled = false,
    ingredients = {
      {"medium-electric-pole-3", 1},
      {"steel-plate", 2},
      {"copper-plate", 2}
    },
    result = "medium-electric-pole-4"
  }, {
    type = "recipe",
    name = "big-electric-pole-2",
    enabled = false,
    ingredients = {
      {"big-electric-pole", 1},
      {"steel-plate", 5},
      {"copper-plate", 5}
    },
    result = "big-electric-pole-2"
  }, {
    type = "recipe",
    name = "big-electric-pole-3",
    enabled = false,
    ingredients = {
      {"big-electric-pole-2", 1},
      {"steel-plate", 5},
      {"copper-plate", 5}
    },
    result = "big-electric-pole-3"
  }, {
    type = "recipe",
    name = "big-electric-pole-4",
    enabled = false,
    ingredients = {
      {"big-electric-pole-3", 1},
      {"steel-plate", 5},
      {"copper-plate", 5}
    },
    result = "big-electric-pole-4"
  }, {
    type = "recipe",
    name = "substation-2",
    enabled = false,
    ingredients = {
      {"substation", 1},
      {"advanced-circuit", 5},
      {"steel-plate", 10},
      {"copper-plate", 5}
    },
    result = "substation-2"
  }, {
    type = "recipe",
    name = "substation-3",
    enabled = false,
    ingredients = {
      {"substation-2", 1},
      {"processing-unit", 5},
      {"steel-plate", 10},
      {"copper-plate", 5}
    },
    result = "substation-3"
  }, {
    type = "recipe",
    name = "substation-4",
    enabled = false,
    ingredients = {
      {"substation-3", 1},
      {"processing-unit", 5},
      {"steel-plate", 10},
      {"copper-plate", 5}
    },
    result = "substation-4"
  }})
end