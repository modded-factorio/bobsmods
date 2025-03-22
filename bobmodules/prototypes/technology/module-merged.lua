if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  data:extend({
    {
      type = "technology",
      name = "bob-god-module",
      icon = "__bobmodules__/graphics/technology/god-module/god-module_01.png",
      icon_size = 256,
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
