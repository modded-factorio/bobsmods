if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.add_ingredient("automation-science-pack", { type = "item", name = "bob-glass", amount = 1 })
end

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
if data.raw.item["bob-electrolyser-3"] then
  bobmods.lib.recipe.add_ingredient(
    "production-science-pack",
    { type = "item", name = "bob-electrolyser-3", amount = 1 }
  )
  data.raw.recipe["production-science-pack"].energy_required = 35
  data.raw.recipe["production-science-pack"].results =
    { { type = "item", name = "production-science-pack", amount = 5 } }
elseif data.raw.item["bob-chemical-plant-2"] then
  bobmods.lib.recipe.add_ingredient(
    "production-science-pack",
    { type = "item", name = "bob-chemical-plant-2", amount = 1 }
  )
  data.raw.recipe["production-science-pack"].energy_required = 28
  data.raw.recipe["production-science-pack"].results =
    { { type = "item", name = "production-science-pack", amount = 4 } }
else
  bobmods.lib.recipe.add_ingredient("production-science-pack", { type = "item", name = "chemical-plant", amount = 1 })
end

if bobmods.tech.advanced_logistic_science then
  if data.raw.item["bob-brass-chest"] then
    bobmods.lib.recipe.replace_ingredient("bob-advanced-logistic-science-pack", "steel-chest", "bob-brass-chest")
    bobmods.lib.tech.add_prerequisite("bob-advanced-logistic-science-pack", "bob-zinc-processing")
  end
  if
    settings.startup["bobmods-logistics-inserteroverhaul"]
    and settings.startup["bobmods-logistics-inserteroverhaul"].value == true
  then
    bobmods.lib.recipe.set_ingredient(
      "bob-advanced-logistic-science-pack",
      { type = "item", name = "fast-inserter", amount = 1 }
    )
  end
else
  bobmods.lib.recipe.hide("bob-advanced-logistic-science-pack")
end

bobmods.lib.recipe.remove_ingredient("utility-science-pack", "flying-robot-frame")
bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "electric-engine-unit", amount = 3 })
bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "processing-unit", amount = 6 })
if data.raw.item["bob-solar-panel-small"] then
  bobmods.lib.recipe.add_ingredient(
    "utility-science-pack",
    { type = "item", name = "bob-solar-panel-small", amount = 1 }
  )
else
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "solar-panel", amount = 1 })
end
bobmods.lib.tech.add_prerequisite("utility-science-pack", "solar-energy")
if data.raw.item["bob-lithium-ion-battery"] then
  bobmods.lib.recipe.add_ingredient(
    "utility-science-pack",
    { type = "item", name = "bob-lithium-ion-battery", amount = 5 }
  )
else
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "battery", amount = 7 })
end
if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient("utility-science-pack", { type = "item", name = "bob-silicon-nitride", amount = 5 })
end
if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "utility-science-pack",
    { type = "item", name = "bob-titanium-bearing", amount = 5 }
  )
end

data.raw.recipe["utility-science-pack"].energy_required = 35
bobmods.lib.recipe.set_result("utility-science-pack", { type = "item", name = "utility-science-pack", amount = 5 })

if settings.startup["bobmods-burnerphase"].value == true then
  bobmods.lib.recipe.add_new_ingredient("lab", { type = "item", name = "bob-burner-lab", amount = 1 })
end
