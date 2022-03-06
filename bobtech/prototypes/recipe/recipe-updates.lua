if data.raw.item["sodium-hydroxide"] then
  bobmods.lib.recipe.add_ingredient("chemical-science-pack", {"sodium-hydroxide", 2})
end
data.raw.recipe["chemical-science-pack"].energy_required = 14

bobmods.lib.recipe.remove_ingredient("production-science-pack", "productivity-module")
bobmods.lib.recipe.remove_ingredient("production-science-pack", "rail")
bobmods.lib.recipe.add_ingredient("production-science-pack", {"assembling-machine-2", 1})
bobmods.lib.recipe.add_ingredient("production-science-pack", {"chemical-plant", 1})

if data.raw.item["brass-chest"] then
  bobmods.lib.recipe.replace_ingredient("advanced-logistic-science-pack", "steel-chest", "brass-chest")
  bobmods.lib.tech.add_prerequisite ("advanced-logistic-science-pack", "zinc-processing")
end

bobmods.lib.recipe.replace_ingredient("utility-science-pack", "flying-robot-frame", "electric-engine-unit")
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"processing-unit", 4})
if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"lithium-ion-battery", 4})
else
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"battery", 4})
end
if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"silicon-nitride", 4})
end
if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"titanium-bearing", 4})
end

data.raw.recipe["utility-science-pack"].energy_required = 28
data.raw.recipe["utility-science-pack"].result_count = 4

if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.recipe.add_new_ingredient("lab", {"burner-lab", 1})
end

