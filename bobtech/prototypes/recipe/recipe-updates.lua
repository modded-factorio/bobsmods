if data.raw.item["sodium-hydroxide"] then
  bobmods.lib.recipe.add_ingredient("chemical-science-pack", {"sodium-hydroxide", 2})
end
data.raw.recipe["chemical-science-pack"].energy_required = 14

bobmods.lib.recipe.remove_ingredient("production-science-pack", "productivity-module")
bobmods.lib.recipe.remove_ingredient("production-science-pack", "rail")
if data.raw.item["electronics-assembling-machine-3"] then
  bobmods.lib.recipe.add_ingredient("production-science-pack", {"electronics-assembling-machine-3", 1})
  bobmods.lib.tech.add_prerequisite ("production-science-pack", "electronics-assembling machine-3")
else
  bobmods.lib.recipe.add_ingredient("production-science-pack", {"assembling-machine-2", 1})
  bobmods.lib.recipe.add_ingredient("production-science-pack", {"processing-unit", 3})
  bobmods.lib.tech.add_prerequisite ("production-science-pack", "advanced-electronics-2")
end
bobmods.lib.recipe.add_ingredient("production-science-pack", {"chemical-plant", 1})

if data.raw.item["brass-chest"] then
  bobmods.lib.recipe.replace_ingredient("advanced-logistic-science-pack", "steel-chest", "brass-chest")
  bobmods.lib.tech.add_prerequisite ("advanced-logistic-science-pack", "zinc-processing")
end

bobmods.lib.tech.add_prerequisite ("utility-science-pack", "production-science-pack")
bobmods.lib.tech.add_prerequisite ("utility-science-pack", "advanced-logistic-science-pack")
if data.raw.item["flying-robot-frame-3"] then
  bobmods.lib.recipe.replace_ingredient("utility-science-pack", "flying-robot-frame", "flying-robot-frame-3")
  bobmods.lib.tech.add_prerequisite ("utility-science-pack", "robotics-3")
end
if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("utility-science-pack", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite ("utility-science-pack", "advanced-electronics-3")
if data.raw.item["small-solar-panel-2"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"small-solar-panel-2", 1})
  bobmods.lib.tech.add_prerequisite ("utility-science-pack", "solar-energy-3")
else
  bobmods.lib.recipe.add_ingredient("utility-science-pack", {"solar-panel", 1})
  bobmods.lib.tech.add_prerequisite ("utility-science-pack", "solar-energy")
end
data.raw.recipe["utility-science-pack"].energy_required = 28
data.raw.recipe["utility-science-pack"].result_count = 4

if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.recipe.add_new_ingredient("lab", {"burner-lab", 1})
end

