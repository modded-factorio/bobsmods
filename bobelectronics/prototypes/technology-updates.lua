bobmods.lib.tech.add_prerequisite("automation-2", "bob-electronics")
bobmods.lib.tech.add_prerequisite("logistics-2", "bob-electronics")
bobmods.lib.tech.add_prerequisite("circuit-network", "bob-electronics")
bobmods.lib.tech.add_prerequisite("solar-energy", "bob-electronics")
bobmods.lib.tech.add_prerequisite("gate", "bob-electronics")
if mods["bobassembly"] then
  bobmods.lib.tech.add_prerequisite("electrolyser-2", "bob-electronics")
end
if mods["bobmining"] then
  bobmods.lib.tech.add_prerequisite("bob-drills-1", "bob-electronics")
  bobmods.lib.tech.add_prerequisite("bob-area-drills-1", "bob-electronics")
  bobmods.lib.tech.add_prerequisite("water-miner-2", "bob-electronics")
end
if mods["bobrevamp"] then
  bobmods.lib.tech.add_prerequisite("chemical-plant", "bob-electronics")
end
if mods["bobwarfare"] then
  bobmods.lib.tech.add_prerequisite("modular-armor", "bob-electronics")
  bobmods.lib.tech.add_prerequisite("radars-2", "bob-electronics")
end

bobmods.lib.tech.add_prerequisite("advanced-circuit", "plastics")

bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-resin-oil")

bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "coal-cracking")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-oil-processing")

bobmods.lib.tech.add_recipe_unlock("plastics", "synthetic-wood")

if data.raw.recipe["solder"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "solder")
end
if data.raw.recipe["solder-alloy"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "solder-alloy")
end
if data.raw.recipe["solder-alloy-lead"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "solder-alloy-lead")
end
if data.raw.recipe["tinned-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "tinned-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("electronics", "basic-circuit-board")
bobmods.lib.tech.remove_recipe_unlock("electronics", "electronic-circuit")

if mods["bobplates"] then
  bobmods.lib.tech.add_prerequisite("bob-electronics", "chemical-processing-1")
  bobmods.lib.tech.add_prerequisite("bob-electronics", "alloy-processing")
  bobmods.lib.tech.add_prerequisite("advanced-circuit", "silicon-processing")
  bobmods.lib.tech.add_prerequisite("processing-unit", "gold-processing")
  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite("advanced-circuit", "chemical-processing-2")
  bobmods.lib.tech.add_recipe_unlock("silicon-processing", "silicon-wafer")
  bobmods.lib.tech.add_prerequisite("advanced-processing-unit", "ceramics")
  bobmods.lib.tech.replace_prerequisite("air-compressor-1", "electronics", "bob-electronics")
  bobmods.lib.tech.replace_prerequisite("water-bore-1", "electronics", "bob-electronics")
else
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite("advanced-circuit", "oil-processing")
  if data.raw.recipe["silicon-wafer"] then
    data.raw.recipe["silicon-wafer"].enabled = true
  end
end

bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "electronic-components")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "phenolic-board")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "advanced-circuit") --to re-add if it was removed in previous mod

bobmods.lib.tech.add_recipe_unlock("processing-unit", "intergrated-electronics")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "fibreglass-board")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "superior-circuit-board")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "processing-unit")

if data.raw.recipe["gilded-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("advanced-processing-unit", "gilded-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("advanced-processing-unit", "processing-electronics")
bobmods.lib.tech.add_recipe_unlock("advanced-processing-unit", "multi-layer-circuit-board")

data.raw.technology["electronics"].icon = "__bobelectronics__/graphics/icons/technology/electronics.png"
data.raw.technology["advanced-circuit"].icon = "__bobelectronics__/graphics/icons/technology/advanced-electronics.png"
data.raw.technology["processing-unit"].icon = "__bobelectronics__/graphics/icons/technology/advanced-electronics-2.png"

data.raw.technology["electronics"].icon_size = 128
data.raw.technology["advanced-circuit"].icon_size = 128
data.raw.technology["processing-unit"].icon_size = 128

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-light-oil")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-heavy-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-light-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-heavy-oil")

bobmods.lib.tech.replace_prerequisite("fast-inserter", "automation-science-pack", "bob-electronics")
