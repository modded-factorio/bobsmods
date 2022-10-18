data.raw.item["burner-inserter"].order = "e[inserter]-a[burner]"
data.raw.item["inserter"].order = "e[inserter]-b[standard]"
data.raw.item["long-handed-inserter"].order = "e[inserter]-c[fast]"
data.raw.item["fast-inserter"].order = "e[inserter]-d[express]"
data.raw.item["filter-inserter"].order = "e[inserter]-d[express]-b[filter]"
data.raw.item["stack-inserter"].order = "e[inserter]-d[express]-c[stack]"
data.raw.item["stack-filter-inserter"].order = "e[inserter]-d[express]-d[stack-filter]"

data:extend({
  {
    type = "item",
    name = "steam-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/white-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-a[steam]",
    place_result = "steam-inserter",
    stack_size = 50,
  },
  {
    type = "item",
    name = "express-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/cyan-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]",
    place_result = "express-inserter",
    stack_size = 50,
  },
  {
    type = "item",
    name = "express-filter-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/magenta-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]-b[filter]",
    place_result = "express-filter-inserter",
    stack_size = 50,
  },
  {
    type = "item",
    name = "express-stack-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/dark-green-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]-c[stack]",
    place_result = "express-stack-inserter",
    stack_size = 50,
  },
  {
    type = "item",
    name = "express-stack-filter-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/stripe-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]-d[stack-filter]",
    place_result = "express-stack-filter-inserter",
    stack_size = 50,
  },
})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data.raw.item["burner-inserter"].subgroup = "bob-logistic-tier-0"
  data.raw.item["steam-inserter"].subgroup = "bob-logistic-tier-0"
  data.raw.item["inserter"].subgroup = "bob-logistic-tier-1"

  data:extend({
    {
      type = "item",
      name = "yellow-filter-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/yellow-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-1",
      order = "e[inserter]-b[standard]-b[filter]",
      place_result = "yellow-filter-inserter",
      stack_size = 50,
    },

    {
      type = "item",
      name = "long-handed-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]",
      place_result = "red-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "red-filter-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]-b[filter]",
      place_result = "red-filter-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "red-stack-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-stack-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]-c[stack]",
      place_result = "red-stack-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "red-stack-filter-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-stack-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]-d[stack-filter]",
      place_result = "red-stack-filter-inserter",
      stack_size = 50,
    },

    {
      type = "item",
      name = "fast-inserter",
      localised_name = { "entity-name.express-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]",
      place_result = "fast-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "filter-inserter",
      localised_name = { "entity-name.express-filter-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]-b[filter]",
      place_result = "filter-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "stack-inserter",
      localised_name = { "entity-name.express-stack-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-stack-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]-c[stack]",
      place_result = "stack-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "stack-filter-inserter",
      localised_name = { "entity-name.express-stack-filter-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-stack-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]-d[stack-filter]",
      place_result = "stack-filter-inserter",
      stack_size = 50,
    },

    {
      type = "item",
      name = "turbo-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]",
      place_result = "turbo-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "turbo-filter-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]-b[filter]",
      place_result = "turbo-filter-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "turbo-stack-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-stack-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]-c[stack]",
      place_result = "turbo-stack-inserter",
      stack_size = 50,
    },
    {
      type = "item",
      name = "turbo-stack-filter-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-stack-filter-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]-d[stack-filter]",
      place_result = "turbo-stack-filter-inserter",
      stack_size = 50,
    },
  })

  data.raw.item["express-inserter"].localised_name = { "entity-name.ultimate-inserter" }
  data.raw.item["express-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-inserter.png"
  data.raw.item["express-inserter"].subgroup = "bob-logistic-tier-5"

  data.raw.item["express-filter-inserter"].localised_name = { "entity-name.ultimate-filter-inserter" }
  data.raw.item["express-filter-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-filter-inserter.png"
  data.raw.item["express-filter-inserter"].subgroup = "bob-logistic-tier-5"

  data.raw.item["express-stack-inserter"].localised_name = { "entity-name.ultimate-stack-inserter" }
  data.raw.item["express-stack-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-stack-inserter.png"
  data.raw.item["express-stack-inserter"].subgroup = "bob-logistic-tier-5"

  data.raw.item["express-stack-filter-inserter"].localised_name = { "entity-name.ultimate-stack-filter-inserter" }
  data.raw.item["express-stack-filter-inserter"].icon =
    "__boblogistics__/graphics/icons/inserter/green-stack-filter-inserter.png"
  data.raw.item["express-stack-filter-inserter"].subgroup = "bob-logistic-tier-5"
end
