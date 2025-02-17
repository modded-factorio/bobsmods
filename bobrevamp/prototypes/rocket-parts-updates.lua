if data.raw.item["bob-rocket-engine"] then
  bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "bob-rocket-engine", amount = 10 })
  bobmods.lib.tech.add_recipe_unlock("rocket-silo", "bob-rocket-engine")
end

bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-heat-shield")
bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "bob-heat-shield-tile", amount = 10 })
if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("bob-heat-shield-tile", "steel-plate", "bob-silicon-nitride")
  bobmods.lib.tech.replace_prerequisite("bob-heat-shield", "steel-processing", "bob-ceramics")
end
if data.raw.item["bob-tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-heat-shield-tile", "plastic-bar", "bob-tungsten-carbide")
  bobmods.lib.tech.replace_prerequisite("bob-heat-shield", "plastics", "bob-tungsten-alloy-processing")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("low-density-structure", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("low-density-structure", "bob-titanium-processing")
end
if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("low-density-structure", "copper-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("low-density-structure", "bob-aluminium-processing")
end
bobmods.lib.tech.remove_prerequisite("low-density-structure", "advanced-material-processing")

bobmods.lib.tech.remove_prerequisite("rocket-silo", "productivity-module-3")
if data.raw.technology["bob-advanced-processing-unit"] then
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-advanced-processing-unit")
  bobmods.lib.tech.remove_prerequisite("rocket-silo", "processing-unit")
  bobmods.lib.tech.remove_prerequisite("rocket-silo", "speed-module-3")
end

if data.raw.item["bob-rtg"] then
  bobmods.lib.recipe.set_ingredient("satellite", { type = "item", name = "accumulator", amount = 50 })
  bobmods.lib.recipe.remove_ingredient("satellite", "solar-panel")
  bobmods.lib.tech.remove_prerequisite("rocket-silo", "solar-energy")
  bobmods.lib.recipe.add_ingredient("satellite", { type = "item", name = "bob-rtg", amount = 10 })
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-rtg")
elseif data.raw.item["bob-solar-panel-3"] then
  bobmods.lib.recipe.replace_ingredient("satellite", "solar-panel", "bob-solar-panel-3")
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-solar-energy-3")
  bobmods.lib.tech.remove_prerequisite("rocket-silo", "solar-energy")
end

if data.raw.item["bob-silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("satellite", "accumulator", "bob-silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-battery-3")
  bobmods.lib.tech.remove_prerequisite("rocket-silo", "electric-energy-accumulators")
end

if data.raw.item["bob-radar-5"] then
  bobmods.lib.recipe.replace_ingredient("satellite", "radar", "bob-radar-5")
  bobmods.lib.tech.replace_prerequisite("rocket-silo", "radar", "bob-radar-5")
end
