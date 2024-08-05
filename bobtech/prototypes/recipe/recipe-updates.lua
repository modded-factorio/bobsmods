if data.raw.item["sodium-hydroxide"] then
  bobmods.lib.recipe.add_ingredient("chemical-science-pack", { type = "item", name = "sodium-hydroxide", amount = 2 })
end
data.raw.recipe["chemical-science-pack"].energy_required = 14

bobmods.lib.recipe.remove_ingredient("production-science-pack", "productivity-module")
bobmods.lib.recipe.remove_ingredient("production-science-pack", "rail")
bobmods.lib.recipe.add_ingredient("production-science-pack", { type = "item", name = "assembling-machine-2", amount = 1 })
bobmods.lib.recipe.add_ingredient("production-science-pack", { type = "item", name = "chemical-plant", amount = 1 })

if bobmods.tech.advanced_logistic_science then
  if data.raw.item["brass-chest"] then
    bobmods.lib.recipe.replace_ingredient("advanced-logistic-science-pack", "steel-chest", "brass-chest")
    bobmods.lib.tech.add_prerequisite("advanced-logistic-science-pack", "zinc-processing")
  end
else
  bobmods.lib.recipe.hide("advanced-logistic-science-pack")
end

bobmods.lib.recipe.replace_ingredient("utility-science-pack", "flying-robot-frame", "electric-engine-unit")
bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "processing-unit", amount = 4 })
if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "lithium-ion-battery", amount = 4 })
else
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "battery", amount = 4 })
end
if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "silicon-nitride", amount = 4 })
end
if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "titanium-bearing", amount = 4 })
end

data.raw.recipe["utility-science-pack"].energy_required = 28
bobmods.lib.recipe.set_result("utility-science-pack", { type = "item", name = "utility-science-pack", amount = 4 })

if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.recipe.add_new_ingredient("lab", { type = "item", name = "burner-lab", amount = 1 })
end
