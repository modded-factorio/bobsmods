data.raw.item["burner-inserter"].order = "e[inserter]-a[burner]"
data.raw.item["inserter"].order = "e[inserter]-b[standard]"
data.raw.item["long-handed-inserter"].order = "e[inserter]-c[fast]"
data.raw.item["fast-inserter"].order = "e[inserter]-d[express]"
data.raw.item["bulk-inserter"].order = "e[inserter]-d[express]-c[bulk]"

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
    name = "express-bulk-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/dark-green-inserter.png",
    icon_size = 32,
    subgroup = "inserter",
    order = "e[inserter]-f[ultimate]-c[bulk]",
    place_result = "express-bulk-inserter",
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
      name = "red-bulk-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/red-bulk-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-2",
      order = "e[inserter]-c[fast]-c[bulk]",
      place_result = "red-bulk-inserter",
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
      name = "bulk-inserter",
      localised_name = { "entity-name.express-bulk-inserter" },
      icon = "__boblogistics__/graphics/icons/inserter/blue-bulk-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-3",
      order = "e[inserter]-d[express]-c[bulk]",
      place_result = "bulk-inserter",
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
      name = "turbo-bulk-inserter",
      icon = "__boblogistics__/graphics/icons/inserter/purple-bulk-inserter.png",
      icon_size = 32,
      subgroup = "bob-logistic-tier-4",
      order = "e[inserter]-e[turbo]-c[bulk]",
      place_result = "turbo-bulk-inserter",
      stack_size = 50,
    },
  })

  data.raw.item["express-inserter"].localised_name = { "entity-name.ultimate-inserter" }
  data.raw.item["express-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-inserter.png"
  data.raw.item["express-inserter"].subgroup = "bob-logistic-tier-5"


  data.raw.item["express-bulk-inserter"].localised_name = { "entity-name.ultimate-bulk-inserter" }
  data.raw.item["express-bulk-inserter"].icon = "__boblogistics__/graphics/icons/inserter/green-bulk-inserter.png"
  data.raw.item["express-bulk-inserter"].subgroup = "bob-logistic-tier-5"

end
