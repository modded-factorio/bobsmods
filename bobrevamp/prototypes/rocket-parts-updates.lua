-- Rocket silo overhaul

bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "steel-plate", amount = 500 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "concrete", amount = 200 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "pipe", amount = 50 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "processing-unit", amount = 50 })
bobmods.lib.recipe.set_ingredient("rocket-silo", { type = "item", name = "electric-engine-unit", amount = 100 })

if data.raw.item["bob-titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "pipe", "bob-titanium-pipe")
end
if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("rocket-part", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("cargo-landing-pad", "processing-unit", "bob-advanced-processing-unit")
end
if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.tech.add_prerequisite("rocket-silo", "bob-nitinol-processing")
  bobmods.lib.recipe.replace_ingredient("rocket-silo", "steel-plate", "bob-nitinol-alloy")
end

bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "low-density-structure", amount = 50 })
bobmods.lib.recipe.add_ingredient("rocket-silo", { type = "item", name = "bob-heat-shield-tile", amount = 100 })
bobmods.lib.recipe.add_ingredient("cargo-landing-pad", { type = "item", name = "bob-heat-shield-tile", amount = 100 })
bobmods.lib.recipe.add_ingredient("cargo-landing-pad", { type = "item", name = "electric-engine-unit", amount = 40 })

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

if data.raw.recipe["satellite"] then
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

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("satellite", "processing-unit", "bob-advanced-processing-unit")
  end
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "low-density-structure",
    "bob-heat-shield-tile",
    "rocket-silo",
    "cargo-landing-pad",
  })
  if data.raw.recipe["satellite"] then
    bobmods.lib.recipe.update_recycling_recipe("satellite")
  end
end
