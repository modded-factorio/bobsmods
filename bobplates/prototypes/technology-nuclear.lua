data:extend({
  {
    type = "technology",
    name = "bobingabout-enrichment-process",
    icon_size = 128,
    icon = "__bobplates__/graphics/icons/technology/bobingabout-enrichment-process.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bobingabout-enrichment-process",
      },
    },
    prerequisites = {
      "kovarex-enrichment-process",
    },
    unit = {
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
      count = 500,
    },
    order = "e-p-b-d3",
  },
})

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  bobmods.lib.tech.add_recipe_unlock("uranium-processing", "bob-empty-nuclear-fuel-cell")
  bobmods.lib.tech.add_prerequisite("uranium-processing", "bob-lead-processing")

  bobmods.lib.tech.add_prerequisite("bobingabout-enrichment-process", "nuclear-fuel-reprocessing")
  bobmods.lib.tech.add_recipe_unlock("bobingabout-enrichment-process", "bob-plutonium-nucleosynthesis")
  data.raw.technology["bobingabout-enrichment-process"].localised_name = { "technology-name.bob-plutonium-synthesis" }
  data.raw.technology["bobingabout-enrichment-process"].icon = "__bobplates__/graphics/icons/nuclear/plutonium-239.png"
  data.raw.technology["bobingabout-enrichment-process"].icon_size = 64

  data:extend({
    {
      type = "technology",
      name = "bob-plutonium-fuel-cell",
      icon = "__bobplates__/graphics/icons/nuclear/plutonium-fuel-cell.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-plutonium-fuel-cell",
        },
      },
      prerequisites = {
        "nuclear-fuel-reprocessing",
      },
      unit = {
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
        count = 50,
      },
      order = "e-p-b-c5",
    },
  })
end

if data.raw.item["bob-thorium-ore"] then
  data:extend({
    {
      type = "technology",
      name = "bob-thorium-processing",
      icon = "__bobplates__/graphics/icons/technology/thorium-processing.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-thorium-processing",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-thorium-fuel-cell",
        },
      },
      prerequisites = {
        "nuclear-power",
      },
      unit = {
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
        count = 200,
      },
      order = "e-p-b-d1",
    },
    {
      type = "technology",
      name = "bob-thorium-fuel-reprocessing",
      icon = "__bobplates__/graphics/icons/technology/thorium-nuclear-fuel-reprocessing.png",
      icon_size = 128,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-thorium-fuel-reprocessing",
        },
      },
      prerequisites = {
        "bob-thorium-processing",
        "production-science-pack",
      },
      unit = {
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
        count = 50,
      },
      order = "e-p-b-d2",
    },
  })

  if settings.startup["bobmods-plates-nuclearupdate"].value == true then
    data:extend({
      {
        type = "technology",
        name = "bob-thorium-plutonium-fuel-cell",
        icon = "__bobplates__/graphics/icons/nuclear/thorium-plutonium-fuel-cell.png",
        icon_size = 64,
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-thorium-plutonium-fuel-cell",
          },
        },
        prerequisites = {
          "bob-thorium-processing",
          "nuclear-fuel-reprocessing",
          "production-science-pack",
        },
        unit = {
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
          },
          time = 30,
          count = 50,
        },
        order = "e-p-b-d5",
      },
    })

    data.raw.technology["bob-thorium-fuel-reprocessing"].icon =
      "__bobplates__/graphics/icons/technology/thorium-nuclear-fuel-reprocessing-new.png"
  else
    bobmods.lib.tech.add_recipe_unlock("bob-thorium-fuel-reprocessing", "bob-thorium-plutonium-fuel-cell")
    bobmods.lib.tech.add_prerequisite("bobingabout-enrichment-process", "bob-thorium-fuel-reprocessing")
  end
end

data:extend({
  {
    type = "technology",
    name = "bob-heavy-water-processing",
    icon = "__bobplates__/graphics/icons/technology/heavy-water.png",
    icon_size = 128,
    order = "e-p-b-e1",
    prerequisites = {
      "sulfur-processing",
      "production-science-pack",
    },
    unit = {
      count = 350,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-heavy-water",
      },
    },
  },
  {
    type = "technology",
    name = "bob-deuterium-processing",
    icon = "__bobplates__/graphics/icons/technology/deuterium.png",
    icon_size = 128,
    order = "e-p-b-e2",
    prerequisites = {
      "bob-heavy-water-processing",
      "bob-electrolysis-1",
      "nuclear-fuel-reprocessing",
    },
    unit = {
      count = 350,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-heavy-water-electrolysis",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-deuterium-fuel-cell",
      },
    },
  },

  {
    type = "technology",
    name = "bob-deuterium-fuel-reprocessing",
    icon = "__bobplates__/graphics/icons/technology/deuterium-nuclear-fuel-reprocessing.png",
    icon_size = 128,
    order = "e-p-b-e3",
    prerequisites = {
      "bob-deuterium-processing",
      "uranium-processing",
      "utility-science-pack",
    },
    unit = {
      count = 50,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-deuterium-fuel-reprocessing",
      },
    },
  },
})

if settings.startup["bobmods-plates-nuclearupdate"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-deuterium-fuel-cell-2",
      icon = "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-2.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-deuterium-fuel-cell-2",
        },
      },
      prerequisites = {
        "bob-deuterium-processing",
        "utility-science-pack",
      },
      unit = {
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
        count = 50,
      },
      order = "e-p-b-e5",
    },
  })
  if settings.startup["bobmods-plates-bluedeuterium"].value == true then
    data.raw.technology["bob-deuterium-fuel-reprocessing"].icon =
      "__bobplates__/graphics/icons/technology/deuterium-nuclear-fuel-reprocessing-blue-new.png"
    data.raw.technology["bob-deuterium-fuel-cell-2"].icon =
      "__bobplates__/graphics/icons/nuclear/deuterium-fuel-cell-2-blue.png"
  else
    data.raw.technology["bob-deuterium-fuel-reprocessing"].icon =
      "__bobplates__/graphics/icons/technology/deuterium-nuclear-fuel-reprocessing-new.png"
  end
else
  if settings.startup["bobmods-plates-bluedeuterium"].value == true then
    data.raw.technology["bob-deuterium-fuel-reprocessing"].icon =
      "__bobplates__/graphics/icons/technology/deuterium-nuclear-fuel-reprocessing-blue.png"
  end
end
