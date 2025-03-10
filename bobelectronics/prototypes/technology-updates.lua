bobmods.lib.tech.add_prerequisite("automation-2", "bob-electronics")
bobmods.lib.tech.add_prerequisite("logistics-2", "bob-electronics")
bobmods.lib.tech.add_prerequisite("circuit-network", "bob-electronics")
bobmods.lib.tech.add_prerequisite("solar-energy", "bob-electronics")
bobmods.lib.tech.add_prerequisite("gate", "bob-electronics")
bobmods.lib.tech.add_prerequisite("defender", "bob-electronics")
bobmods.lib.tech.replace_prerequisite("fast-inserter", "automation-science-pack", "bob-electronics")
if mods["bobassembly"] then
  bobmods.lib.tech.add_prerequisite("bob-electrolyser-2", "bob-electronics")
end
if mods["bobmining"] then
  bobmods.lib.tech.add_prerequisite("bob-drills-2", "bob-electronics")
  bobmods.lib.tech.add_prerequisite("bob-area-drills-1", "bob-electronics")
  bobmods.lib.tech.add_prerequisite("bob-water-miner-2", "bob-electronics")
end
if mods["bobrevamp"] then
  bobmods.lib.tech.add_prerequisite("bob-chemical-plant", "bob-electronics")
end
if mods["bobwarfare"] or mods["bobequipment"] then
  bobmods.lib.tech.add_prerequisite("modular-armor", "bob-electronics")
end
if mods["bobwarfare"] then
  bobmods.lib.tech.add_prerequisite("bob-radar-2", "bob-electronics")
end

bobmods.lib.tech.add_prerequisite("advanced-circuit", "plastics")

bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-resin-oil")

bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "coal-cracking")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-oil-processing")

bobmods.lib.tech.add_recipe_unlock("plastics", "bob-synthetic-wood")

if data.raw.recipe["bob-solder"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "bob-solder")
end
if data.raw.recipe["bob-solder-alloy-lead"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "bob-solder-alloy-lead")
end
if data.raw.recipe["bob-solder-alloy"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "bob-solder-alloy")
end
if data.raw.recipe["bob-tinned-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "bob-tinned-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("electronics", "bob-basic-circuit-board")
bobmods.lib.tech.remove_recipe_unlock("electronics", "electronic-circuit")

if mods["bobplates"] then
  bobmods.lib.tech.add_prerequisite("bob-electronics", "bob-chemical-processing-1")
  bobmods.lib.tech.add_prerequisite("bob-electronics", "bob-alloy-processing")
  bobmods.lib.tech.add_prerequisite("advanced-circuit", "bob-silicon-processing")
  bobmods.lib.tech.add_prerequisite("bob-advanced-processing-unit", "bob-gold-processing")
  bobmods.lib.tech.add_recipe_unlock("bob-chemical-processing-2", "bob-ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite("bob-chemical-processing-2", "bob-electronics")
  bobmods.lib.tech.add_prerequisite("advanced-circuit", "bob-chemical-processing-2")
  bobmods.lib.tech.add_recipe_unlock("bob-silicon-processing", "bob-silicon-wafer")
  bobmods.lib.tech.add_prerequisite("bob-advanced-processing-unit", "bob-ceramics")
  bobmods.lib.tech.replace_prerequisite("bob-air-compressor-1", "electronics", "bob-electronics")
  bobmods.lib.tech.replace_prerequisite("bob-water-bore-1", "electronics", "bob-electronics")
else
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite("advanced-circuit", "oil-processing")
  if data.raw.recipe["bob-silicon-wafer"] then
    data.raw.recipe["bob-silicon-wafer"].enabled = true
  end
end

bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "bob-electronic-components")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "bob-phenolic-board")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "bob-circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-circuit", "advanced-circuit") --to re-add if it was removed in previous mod

bobmods.lib.tech.add_recipe_unlock("processing-unit", "bob-integrated-electronics")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "bob-fibreglass-board")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "bob-superior-circuit-board")
bobmods.lib.tech.add_recipe_unlock("processing-unit", "processing-unit")

if data.raw.recipe["bob-gilded-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("bob-advanced-processing-unit", "bob-gilded-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("bob-advanced-processing-unit", "bob-processing-electronics")
bobmods.lib.tech.add_recipe_unlock("bob-advanced-processing-unit", "bob-multi-layer-circuit-board")

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
