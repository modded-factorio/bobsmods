require("prototypes.recipe.recipe-updates")
require("prototypes.technology.technology-updates")
require("prototypes.item.item-updates")

if bobmods.tech.advanced_logistic_science then
  bobmods.lib.safe_insert(data.raw["lab"]["lab"].inputs, "bob-advanced-logistic-science-pack", 5)
  bobmods.lib.safe_insert(data.raw["lab"]["bob-lab-2"].inputs, "bob-advanced-logistic-science-pack", 5)
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe_single("lab")
  if data.raw.recipe["bob-burner-lab"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-burner-lab")
  end
end
