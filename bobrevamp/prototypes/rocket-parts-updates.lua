if data.raw.item["rocket-engine"] then
  bobmods.lib.recipe.add_ingredient("rocket-part", { "rocket-engine", 10 })
  bobmods.lib.tech.add_recipe_unlock("rocket-silo", "rocket-engine")
end

bobmods.lib.tech.add_prerequisite("rocket-silo", "heat-shield")
bobmods.lib.recipe.add_ingredient("rocket-part", { "heat-shield-tile", 10 })
if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("heat-shield-tile", "steel-plate", "silicon-nitride")
  bobmods.lib.tech.replace_prerequisite("heat-shield", "steel-processing", "ceramics")
end
if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("heat-shield-tile", "plastic-bar", "tungsten-carbide")
  bobmods.lib.tech.replace_prerequisite("heat-shield", "plastics", "tungsten-alloy-processing")
end

bobmods.lib.module.add_productivity_limitation("heat-shield-tile")

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("low-density-structure", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("low-density-structure", "titanium-processing")
end
if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("low-density-structure", "copper-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("low-density-structure", "aluminium-processing")
end
bobmods.lib.tech.remove_prerequisite("low-density-structure", "advanced-material-processing")

bobmods.lib.tech.remove_prerequisite("rocket-silo", "productivity-module-3")
if data.raw.technology["advanced-electronics-3"] then
  bobmods.lib.tech.replace_prerequisite("rocket-silo", "advanced-electronics-2", "advanced-electronics-3")
  bobmods.lib.tech.remove_prerequisite("rocket-silo", "speed-module-3")
end

if
  data.raw.item["basic-electronic-components"]
  and data.raw.item["electronic-components"]
  and data.raw.item["intergrated-electronics"]
  and data.raw.item["processing-electronics"]
then
  bobmods.lib.recipe.difficulty_split("rocket-control-unit")
  data.raw.recipe["rocket-control-unit"].normal.ingredients = {
    { "basic-electronic-components", 4 },
    { "electronic-components", 6 },
    { "intergrated-electronics", 4 },
    { "processing-electronics", 8 },
  }
  data.raw.recipe["rocket-control-unit"].expensive.ingredients = {
    { "basic-electronic-components", 6 },
    { "electronic-components", 9 },
    { "intergrated-electronics", 6 },
    { "processing-electronics", 12 },
  }
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_difficulty_ingredient("rocket-control-unit", "normal", { "solder", 5 })
    bobmods.lib.recipe.add_difficulty_ingredient("rocket-control-unit", "expensive", { "solder", 10 })
  end
  if data.raw.item["multi-layer-circuit-board"] then
    bobmods.lib.recipe.add_difficulty_ingredient("rocket-control-unit", "normal", { "multi-layer-circuit-board", 2 })
    bobmods.lib.recipe.add_difficulty_ingredient("rocket-control-unit", "expensive", { "multi-layer-circuit-board", 3 })
  end
  bobmods.lib.tech.replace_prerequisite("rocket-control-unit", "speed-module", "advanced-electronics-3")
elseif data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("rocket-control-unit", "speed-module", "advanced-processing-unit")
  bobmods.lib.tech.replace_prerequisite("rocket-control-unit", "speed-module", "advanced-electronics-3")
end
bobmods.lib.tech.add_science_pack("rocket-control-unit", "production-science-pack", 1)

bobmods.lib.recipe.replace_ingredient("satellite", "processing-unit", "rocket-control-unit")

if data.raw.item.rtg then
  bobmods.lib.recipe.set_ingredient("satellite", { "accumulator", 50 })
  bobmods.lib.recipe.remove_ingredient("satellite", "solar-panel")
  bobmods.lib.tech.remove_prerequisite("space-science-pack", "solar-energy")
  bobmods.lib.recipe.add_ingredient("satellite", { "rtg", 10 })
  bobmods.lib.tech.add_prerequisite("space-science-pack", "rtg")
elseif data.raw.item["solar-panel-3"] then
  bobmods.lib.recipe.replace_ingredient("satellite", "solar-panel", "solar-panel-3")
  bobmods.lib.tech.add_prerequisite("space-science-pack", "bob-solar-energy-3")
  bobmods.lib.tech.remove_prerequisite("space-science-pack", "solar-energy")
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("satellite", "accumulator", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("space-science-pack", "battery-3")
  bobmods.lib.tech.remove_prerequisite("space-science-pack", "electric-energy-accumulators")
end

if data.raw.item["radar-5"] then
  bobmods.lib.recipe.replace_ingredient("satellite", "radar", "radar-5")
  bobmods.lib.tech.add_prerequisite("space-science-pack", "radars-5")
end
