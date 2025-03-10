data.raw.recipe["uranium-processing"].crafting_machine_tint = {
  primary = { r = 0, g = 1, b = 0 },
  secondary = { r = 0, g = 1, b = 0 },
  tertiary = { r = 0, g = 1, b = 0 },
}
data.raw.recipe["kovarex-enrichment-process"].crafting_machine_tint = {
  primary = { r = 0, g = 1, b = 0 },
  secondary = { r = 0, g = 1, b = 0 },
  tertiary = { r = 0, g = 1, b = 0 },
}
data.raw.recipe["nuclear-fuel"].crafting_machine_tint = {
  primary = { r = 0, g = 1, b = 0 },
  secondary = { r = 0, g = 1, b = 0 },
  tertiary = { r = 0, g = 1, b = 0 },
}
data.raw.recipe["nuclear-fuel-reprocessing"].crafting_machine_tint = {
  primary = { r = 0, g = 1, b = 0 },
  secondary = { r = 0, g = 1, b = 0 },
  tertiary = { r = 0, g = 1, b = 0 },
}

data:extend({
  {
    type = "recipe",
    name = "bobingabout-enrichment-process",
    icon = "__bobplates__/graphics/icons/nuclear/bobingabout-enrichment-process.png",
    icon_size = 32,
    subgroup = "bob-nuclear",
    order = "s[plutonium-processing]-c[bobingabout-enrichment-process]",
    energy_required = 60,
    enabled = false,
    auto_recycle = false,
    category = "centrifuging",
    ingredients = {
      { type = "item", name = "bob-plutonium-239", amount = 40, ignored_by_stats = 40 },
      { type = "item", name = "uranium-238", amount = 5, ignored_by_stats = 2 },
    },
    results = {
      { type = "item", name = "bob-plutonium-239", amount = 41, ignored_by_productivity = 40, ignored_by_stats = 40 },
      { type = "item", name = "uranium-238", amount = 2, ignored_by_productivity = 2, ignored_by_stats = 2 },
    },
    crafting_machine_tint = {
      primary = { r = 1, g = 0.7, b = 0 },
      secondary = { r = 0, g = 1, b = 0 },
      tertiary = { r = 1, g = 0.7, b = 0 },
    },
    allow_decomposition = false,
    allow_productivity = true,
  },
})

if data.raw.item["bob-thorium-ore"] then
  data:extend({
    {
      type = "recipe",
      name = "bob-thorium-processing",
      icon = "__bobplates__/graphics/icons/nuclear/thorium-processing.png",
      icon_size = 32,
      subgroup = "bob-nuclear",
      order = "l[thorium-processing]",
      energy_required = 12,
      enabled = false,
      auto_recycle = false,
      category = "centrifuging",
      ingredients = {
        { type = "item", name = "bob-thorium-ore", amount = 10 },
      },
      results = { { type = "item", name = "bob-thorium-232", amount = 1 } },
      crafting_machine_tint = {
        primary = { r = 1, g = 1, b = 0 },
        secondary = { r = 1, g = 1, b = 0 },
        tertiary = { r = 1, g = 1, b = 0 },
      },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-thorium-fuel-cell",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-lead-plate", amount = 10 },
        { type = "item", name = "uranium-235", amount = 1 },
        { type = "item", name = "bob-thorium-232", amount = 19 },
      },
      results = { { type = "item", name = "bob-thorium-fuel-cell", amount = 10 } },
    },
  })

  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    bobmods.lib.recipe.remove_ingredient("bob-thorium-fuel-cell", "bob-lead-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-thorium-fuel-cell",
      { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10, ignored_by_stats = 10 }
    )
    data:extend({
      {
        type = "recipe",
        name = "bob-thorium-plutonium-fuel-cell",
        energy_required = 10,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10, ignored_by_stats = 10 },
          { type = "item", name = "bob-plutonium-239", amount = 1 },
          { type = "item", name = "bob-thorium-232", amount = 19 },
        },
        results = { { type = "item", name = "bob-thorium-plutonium-fuel-cell", amount = 10 } },
      },
      {
        type = "recipe",
        name = "bob-thorium-fuel-reprocessing",
        icon = "__bobplates__/graphics/icons/nuclear/thorium-nuclear-fuel-reprocessing.png",
        icon_size = 32,
        subgroup = "bob-fuel-cells",
        order = "s[thorium-processing]-b[thorium-fuel-reprocessing]",
        energy_required = 120,
        enabled = false,
        auto_recycle = false,
        category = "centrifuging",
        ingredients = {
          { type = "item", name = "bob-depleted-thorium-fuel-cell", amount = 10 },
        },
        results = {
          { type = "item", name = "bob-thorium-232", amount = 4, ignored_by_productivity = 3 },
          { type = "item", name = "uranium-235", amount = 3, ignored_by_productivity = 2 },
          {
            type = "item",
            name = "bob-empty-nuclear-fuel-cell",
            amount = 10,
            ignored_by_productivity = 10,
            ignored_by_stats = 10,
          },
          { type = "item", name = "bob-fusion-catalyst", amount = 1 },
        },
        crafting_machine_tint = {
          primary = { r = 1, g = 1, b = 0 },
          secondary = { r = 0, g = 1, b = 0 },
          tertiary = { r = 1, g = 1, b = 0 },
        },
        allow_decomposition = false,
        allow_productivity = true,
      },
    })
  else
    data:extend({
      {
        type = "recipe",
        name = "bob-thorium-plutonium-fuel-cell",
        energy_required = 2,
        enabled = false,
        ingredients = {
          { type = "item", name = "bob-lead-plate", amount = 2 },
          { type = "item", name = "bob-plutonium-239", amount = 2 },
          { type = "item", name = "bob-thorium-232", amount = 2 },
        },
        results = { { type = "item", name = "bob-thorium-plutonium-fuel-cell", amount = 2 } },
      },
      {
        type = "recipe",
        name = "bob-thorium-fuel-reprocessing",
        icon = "__bobplates__/graphics/icons/nuclear/thorium-nuclear-fuel-reprocessing-old.png",
        icon_size = 32,
        subgroup = "bob-fuel-cells",
        order = "s[thorium-processing]-b[bob-thorium-fuel-reprocessing]",
        energy_required = 60,
        enabled = false,
        auto_recycle = false,
        category = "centrifuging",
        ingredients = {
          { type = "item", name = "bob-depleted-thorium-fuel-cell", amount = 5 },
        },
        results = {
          { type = "item", name = "bob-thorium-232", amount = 3, ignored_by_productivity = 2 },
          { type = "item", name = "bob-plutonium-239", amount = 1, ignored_by_productivity = 1 },
          { type = "item", name = "bob-lead-plate", amount = 5, ignored_by_productivity = 5 },
          { type = "item", name = "bob-plutonium-239", amount = 1, ignored_by_productivity = 0.1 },
        },
        crafting_machine_tint = {
          primary = { r = 1, g = 1, b = 0 },
          secondary = { r = 1, g = 0.7, b = 0 },
          tertiary = { r = 1, g = 1, b = 0 },
        },
        allow_decomposition = false,
      },
    })
  end
end

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  data:extend({
    {
      type = "recipe",
      name = "bob-empty-nuclear-fuel-cell",
      energy_required = 2.5,
      enabled = false,
      ingredients = {
        { type = "item", name = "steel-plate", amount = 2 },
        { type = "item", name = "bob-lead-plate", amount = 5 },
      },
      results = { { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-plutonium-fuel-cell",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10, ignored_by_stats = 10 },
        { type = "item", name = "bob-plutonium-239", amount = 1 },
        { type = "item", name = "uranium-238", amount = 19 },
      },
      results = { { type = "item", name = "bob-plutonium-fuel-cell", amount = 10 } },
    },
    {
      type = "recipe",
      name = "bob-plutonium-nucleosynthesis",
      icon = "__bobplates__/graphics/icons/technology/plutonium-nucleosynthesis.png",
      icon_size = 128,
      subgroup = "bob-nuclear",
      order = "s[plutonium-processing]-d[plutonium-nucleosynthesis]",
      energy_required = 60,
      enabled = false,
      auto_recycle = false,
      category = "centrifuging",
      ingredients = {
        { type = "item", name = "uranium-235", amount = 5, ignored_by_stats = 3 },
        { type = "item", name = "uranium-238", amount = 15, ignored_by_stats = 10 },
      },
      results = {
        { type = "item", name = "uranium-235", amount = 3, ignored_by_productivity = 3, ignored_by_stats = 3 },
        { type = "item", name = "uranium-238", amount = 10, ignored_by_productivity = 10, ignored_by_stats = 10 },
        { type = "item", name = "bob-plutonium-239", amount = 1 },
      },
      crafting_machine_tint = {
        primary = { r = 1, g = 0.7, b = 0 },
        secondary = { r = 0, g = 1, b = 0 },
        tertiary = { r = 0.7, g = 0.5, b = 0 },
      },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-deuterium-fuel-cell",
      category = "crafting-with-fluid",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10, ignored_by_stats = 10 },
        { type = "item", name = "bob-fusion-catalyst", amount = 1 },
        { type = "fluid", name = "bob-deuterium", amount = 190 },
      },
      results = { { type = "item", name = "bob-deuterium-fuel-cell", amount = 10 } },
    },
    {
      type = "recipe",
      name = "bob-deuterium-fuel-cell-2",
      category = "crafting-with-fluid",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-empty-nuclear-fuel-cell", amount = 10, ignored_by_stats = 10 },
        { type = "item", name = "bob-fusion-catalyst", amount = 5 },
        { type = "fluid", name = "bob-deuterium", amount = 250 },
      },
      results = { { type = "item", name = "bob-deuterium-fuel-cell-2", amount = 10 } },
    },
    {
      type = "recipe",
      name = "bob-deuterium-fuel-reprocessing",
      icon = "__bobplates__/graphics/icons/nuclear/deuterium-nuclear-fuel-reprocessing-new.png",
      icon_size = 32,
      subgroup = "bob-fuel-cells",
      order = "t[deuterium-processing]-b[deuterium-fuel-reprocessing]",
      energy_required = 120,
      enabled = false,
      category = "centrifuging",
      ingredients = {
        { type = "item", name = "bob-depleted-deuterium-fuel-cell", amount = 10 },
      },
      results = {
        {
          type = "item",
          name = "bob-empty-nuclear-fuel-cell",
          amount = 10,
          ignored_by_productivity = 10,
          ignored_by_stats = 10,
        },
        { type = "item", name = "bob-lithium", amount = 1, probability = 0.1 },
        { type = "item", name = "bob-fusion-catalyst", amount = 1 },
      },
      crafting_machine_tint = {
        primary = { r = 1, g = 0, b = 0.57 },
        secondary = { r = 0, g = 1, b = 0.85 }, --Lithium
        tertiary = { r = 1, g = 0, b = 0.57 },
      },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
else
  data:extend({
    {
      type = "recipe",
      name = "bob-deuterium-fuel-cell",
      category = "crafting-with-fluid",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "bob-lead-plate", amount = 10 },
        { type = "fluid", name = "bob-deuterium", amount = 200 },
      },
      results = { { type = "item", name = "bob-deuterium-fuel-cell", amount = 10 } },
    },
    {
      type = "recipe",
      name = "bob-deuterium-fuel-reprocessing",
      icon = "__bobplates__/graphics/icons/nuclear/deuterium-nuclear-fuel-reprocessing.png",
      icon_size = 32,
      subgroup = "bob-fuel-cells",
      order = "t[deuterium-processing]-b[deuterium-fuel-reprocessing]",
      energy_required = 60,
      enabled = false,
      auto_recycle = false,
      category = "centrifuging",
      ingredients = {
        { type = "item", name = "bob-depleted-deuterium-fuel-cell", amount = 5 },
      },
      results = {
        { type = "item", name = "bob-lead-plate", amount = 5, ignored_by_productivity = 5 },
        { type = "item", name = "bob-lithium", amount = 1, probability = 0.05 },
      },
      crafting_machine_tint = {
        primary = { r = 1, g = 0, b = 0.57 },
        secondary = { r = 0, g = 1, b = 0.85 }, --Lithium
        tertiary = { r = 1, g = 0, b = 0.57 },
      },
      allow_decomposition = false,
      allow_productivity = true,
    },
  })
end

if settings.startup["bobmods-plates-bluedeuterium"].value == true then
  data.raw.recipe["bob-deuterium-fuel-reprocessing"].crafting_machine_tint = data.raw.recipe["bob-deuterium-fuel-reprocessing"].crafting_machine_tint
    or {}
  data.raw.recipe["bob-deuterium-fuel-reprocessing"].crafting_machine_tint.primary = { r = 0, g = 0.7, b = 1 }
  data.raw.recipe["bob-deuterium-fuel-reprocessing"].crafting_machine_tint.tertiary = { r = 0, g = 0.7, b = 1 }
  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    data.raw.recipe["bob-deuterium-fuel-reprocessing"].icon =
      "__bobplates__/graphics/icons/nuclear/deuterium-nuclear-fuel-reprocessing-blue-new.png"
  else
    data.raw.recipe["bob-deuterium-fuel-reprocessing"].icon =
      "__bobplates__/graphics/icons/nuclear/deuterium-nuclear-fuel-reprocessing-blue.png"
  end
end
