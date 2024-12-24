require("prototypes.recipe.recipe-updates")
require("prototypes.technology.technology-updates")
require("prototypes.item.item-updates")

if bobmods.tech.advanced_logistic_science then
  bobmods.lib.safe_insert(data.raw["lab"]["lab"].inputs, "advanced-logistic-science-pack", 5)
  bobmods.lib.safe_insert(data.raw["lab"]["lab-2"].inputs, "advanced-logistic-science-pack", 5)
end

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe_single("lab")
end
