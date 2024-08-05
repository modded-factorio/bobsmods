if data.raw.item["rocket-engine"] then
  bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "rocket-engine", amount = 10 })
  bobmods.lib.tech.add_recipe_unlock("rocket-silo", "rocket-engine")
end

bobmods.lib.tech.add_prerequisite("rocket-silo", "heat-shield")
bobmods.lib.recipe.add_ingredient("rocket-part", { type = "item", name = "heat-shield-tile", amount = 10 })
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
  data.raw.recipe["rocket-control-unit"].ingredients = {
    { type = "item", name = "basic-electronic-components", amount = 4 },
    { type = "item", name = "electronic-components", amount = 6 },
    { type = "item", name = "intergrated-electronics", amount = 4 },
    { type = "item", name = "processing-electronics", amount = 8 },
  }
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("rocket-control-unit", { type = "item", name = "solder", amount = 5 })
  end
  if data.raw.item["multi-layer-circuit-board"] then
    bobmods.lib.recipe.add_ingredient(
      "rocket-control-unit",
      { type = "item", name = "multi-layer-circuit-board", amount = 2 }
    )
  end
  bobmods.lib.tech.replace_prerequisite("rocket-control-unit", "speed-module", "advanced-electronics-3")
elseif data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("rocket-control-unit", "speed-module", "advanced-processing-unit")
  bobmods.lib.tech.replace_prerequisite("rocket-control-unit", "speed-module", "advanced-electronics-3")
end
bobmods.lib.tech.add_science_pack("rocket-control-unit", "production-science-pack", 1)

bobmods.lib.recipe.replace_ingredient("satellite", "processing-unit", "rocket-control-unit")

if data.raw.item.rtg then
  bobmods.lib.recipe.set_ingredient("satellite", { type = "item", name = "accumulator", amount = 50 })
  bobmods.lib.recipe.remove_ingredient("satellite", "solar-panel")
  bobmods.lib.tech.remove_prerequisite("space-science-pack", "solar-energy")
  bobmods.lib.recipe.add_ingredient("satellite", { type = "item", name = "rtg", amount = 10 })
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
