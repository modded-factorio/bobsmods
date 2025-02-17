if settings.startup["bobmods-power-nuclear"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("nuclear-power", "heat-pipe")
  bobmods.lib.tech.add_prerequisite("nuclear-power", "bob-heat-pipe-2")

  data:extend({
    {
      type = "technology",
      name = "bob-nuclear-power-2",
      icon_size = 256,
      icon = "__base__/graphics/technology/nuclear-power.png",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-nuclear-reactor-2",
        },
      },
      prerequisites = {
        "nuclear-power",
        "processing-unit",
        "production-science-pack",
        "bob-heat-pipe-3",
      },
      unit = {
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
        count = 800,
      },
      order = "e-p-b-d",
    },
    {
      type = "technology",
      name = "bob-nuclear-power-3",
      icon_size = 256,
      icon = "__base__/graphics/technology/nuclear-power.png",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-nuclear-reactor-3",
        },
      },
      prerequisites = {
        "bob-nuclear-power-2",
        "utility-science-pack",
        "bob-heat-pipe-4",
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
        count = 800,
      },
      order = "e-p-b-e",
    },
  })

  if settings.startup["bobmods-power-steam"].value == true then
    data.raw.technology["nuclear-power"].icon = "__bobpower__/graphics/icons/technology/nuclear-power.png"
    data.raw.technology["nuclear-power"].icon_size = 128
    data.raw.technology["bob-nuclear-power-2"].icon = "__bobpower__/graphics/icons/technology/nuclear-power.png"
    data.raw.technology["bob-nuclear-power-2"].icon_size = 128
    data.raw.technology["bob-nuclear-power-3"].icon = "__bobpower__/graphics/icons/technology/nuclear-power.png"
    data.raw.technology["bob-nuclear-power-3"].icon_size = 128
  end
end
