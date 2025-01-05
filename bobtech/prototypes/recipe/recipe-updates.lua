if data.raw.item["bob-sodium-hydroxide"] then
  bobmods.lib.recipe.add_ingredient(
    "chemical-science-pack",
    { type = "item", name = "bob-sodium-hydroxide", amount = 2 }
  )
end
data.raw.recipe["chemical-science-pack"].energy_required = 14

bobmods.lib.recipe.remove_ingredient("production-science-pack", "productivity-module")
bobmods.lib.recipe.remove_ingredient("production-science-pack", "rail")
bobmods.lib.recipe.add_ingredient(
  "production-science-pack",
  { type = "item", name = "assembling-machine-2", amount = 1 }
)
bobmods.lib.recipe.add_ingredient("production-science-pack", { type = "item", name = "chemical-plant", amount = 1 })

if bobmods.tech.advanced_logistic_science then
  if data.raw.item["brass-chest"] then
    bobmods.lib.recipe.replace_ingredient("advanced-logistic-science-pack", "steel-chest", "brass-chest")
    bobmods.lib.tech.add_prerequisite("advanced-logistic-science-pack", "bob-zinc-processing")
  end
  if
    settings.startup["bobmods-logistics-inserteroverhaul"]
    and settings.startup["bobmods-logistics-inserteroverhaul"].value == true
  then
    bobmods.lib.recipe.set_ingredient(
      "advanced-logistic-science-pack",
      { type = "item", name = "fast-inserter", amount = 1 }
    )
  end
else
  bobmods.lib.recipe.hide("advanced-logistic-science-pack")
end

bobmods.lib.recipe.replace_ingredient("utility-science-pack", "flying-robot-frame", "electric-engine-unit")
bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "processing-unit", amount = 4 })
if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.recipe.add_ingredient(
    "utility-science-pack",
    { type = "item", name = "bob-lithium-ion-battery", amount = 4 }
  )
else
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "battery", amount = 4 })
end
if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "bob-silicon-nitride", amount = 4 })
end
if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "utility-science-pack",
    { type = "item", name = "bob-titanium-bearing", amount = 4 }
  )
end

data.raw.recipe["utility-science-pack"].energy_required = 28
bobmods.lib.recipe.set_result("utility-science-pack", { type = "item", name = "utility-science-pack", amount = 4 })

if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.recipe.add_new_ingredient("lab", { type = "item", name = "burner-lab", amount = 1 })
end
