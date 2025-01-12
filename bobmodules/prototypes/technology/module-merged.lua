if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-green-module-1",
      icon = "__bobmodules__/graphics/icons/green/green_01.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-green-module-1",
        },
      },
      prerequisites = {
        "efficiency-module",
        "bob-pollution-clean-module-1",
      },
      unit = {
        count = 50,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
    },
    {
      type = "technology",
      name = "bob-green-module-2",
      icon = "__bobmodules__/graphics/icons/green/green_02.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-green-module-2",
        },
      },
      prerequisites = {
        "bob-green-module-1",
        "efficiency-module-2",
        "bob-pollution-clean-module-2",
      },
      unit = {
        count = 100,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
    },
    {
      type = "technology",
      name = "bob-green-module-3",
      icon = "__bobmodules__/graphics/icons/green/green_03.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-green-module-3",
        },
      },
      prerequisites = {
        "bob-green-module-2",
        "efficiency-module-3",
        "bob-pollution-clean-module-3",
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 60,
      },
    },
    {
      type = "technology",
      name = "bob-green-module-4",
      icon = "__bobmodules__/graphics/icons/green/green_04.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-green-module-4",
        },
      },
      prerequisites = {
        "bob-green-module-3",
        "bob-efficiency-module-4",
        "bob-pollution-clean-module-4",
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 60,
      },
    },
    {
      type = "technology",
      name = "bob-green-module-5",
      icon = "__bobmodules__/graphics/icons/green/green_05.png",
      icon_size = 64,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-green-module-5",
        },
      },
      prerequisites = {
        "bob-green-module-4",
        "bob-efficiency-module-5",
        "bob-pollution-clean-module-5",
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 60,
      },
    },
  })
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-god-module",
      icon = "__bobmodules__/graphics/icons/god-module.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-god-module",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-god-module-productivity",
        },
      },
      prerequisites = {
        "bob-speed-module-5",
        "bob-productivity-module-5",
        "bob-efficiency-module-5",
        "bob-pollution-clean-module-5",
      },
      unit = {
        count = 2000,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 30,
      },
    },
  })
  if mods["quality"] then
    bobmods.lib.tech.add_recipe_unlock("bob-god-module", "bob-god-module-quality")
    bobmods.lib.tech.add_prerequisite("bob-god-module", "bob-quality-module-5")
  end
end
