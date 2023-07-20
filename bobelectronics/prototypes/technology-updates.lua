bobmods.lib.tech.add_prerequisite("logistic-science-pack", "electronics")
bobmods.lib.tech.remove_prerequisite("automation-2", "electronics")
bobmods.lib.tech.remove_prerequisite("circuit-network", "electronics")
bobmods.lib.tech.remove_prerequisite("solar-energy", "electronics")
bobmods.lib.tech.remove_prerequisite("electric-energy-distribution-1", "electronics")

bobmods.lib.tech.add_prerequisite("advanced-electronics", "plastics")

bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-resin-oil")

bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "coal-cracking")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-oil-processing")

bobmods.lib.tech.add_recipe_unlock("plastics", "synthetic-wood")

if data.raw.technology["chemical-processing-2"] then
  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite("advanced-electronics", "chemical-processing-2")
else
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite("advanced-electronics", "oil-processing")
end

if data.raw.recipe["silicon-wafer"] then
  if data.raw.technology["silicon-processing"] then
    bobmods.lib.tech.add_recipe_unlock("silicon-processing", "silicon-wafer")
  else
    data.raw.recipe["silicon-wafer"].enabled = true
  end
end

if data.raw.recipe["solder"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "solder")
end
if data.raw.recipe["solder-alloy"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "solder-alloy")
end
if data.raw.recipe["solder-alloy-lead"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "solder-alloy-lead")
end
if data.raw.recipe["tinned-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "tinned-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("electronics", "insulated-cable")
bobmods.lib.tech.add_recipe_unlock("electronics", "basic-electronic-components")
bobmods.lib.tech.add_recipe_unlock("electronics", "electronic-circuit")
bobmods.lib.tech.remove_prerequisite("electronics", "automation")
bobmods.lib.tech.add_prerequisite("electronics", "bob-wood-processing")

if data.raw.technology["chemical-processing-1"] and data.raw.technology["alloy-processing"] then
  bobmods.lib.tech.add_prerequisite("electronics", "chemical-processing-1")
  bobmods.lib.tech.add_prerequisite("electronics", "alloy-processing")
end

bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "electronic-components")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "phenolic-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "advanced-circuit") --to re-add if it was removed in previous mod
if data.raw.technology["silicon-processing"] then
  bobmods.lib.tech.add_prerequisite("advanced-electronics", "silicon-processing")
end

bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "intergrated-electronics")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "fibreglass-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "superior-circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "processing-unit")
if data.raw.technology["gold-processing"] then
  bobmods.lib.tech.add_prerequisite("advanced-electronics-2", "gold-processing")
end

if data.raw.recipe["gilded-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "gilded-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "processing-electronics")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "multi-layer-circuit-board")

if data.raw.technology["ceramics"] then
  bobmods.lib.tech.add_prerequisite("advanced-electronics-3", "ceramics")
end

data.raw.technology["electronics"].icon = "__bobelectronics__/graphics/icons/technology/electronics.png"
data.raw.technology["advanced-electronics"].icon =
  "__bobelectronics__/graphics/icons/technology/advanced-electronics.png"
data.raw.technology["advanced-electronics-2"].icon =
  "__bobelectronics__/graphics/icons/technology/advanced-electronics-2.png"

data.raw.technology["electronics"].icon_size = 128
data.raw.technology["advanced-electronics"].icon_size = 128
data.raw.technology["advanced-electronics-2"].icon_size = 128

data.raw.technology["electronics"].icon_mipmaps = 0
data.raw.technology["advanced-electronics"].icon_mipmaps = 0
data.raw.technology["advanced-electronics-2"].icon_mipmaps = 0

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-light-oil")
bobmods.lib.tech.remove_recipe_unlock("advanced-oil-processing", "solid-fuel-from-heavy-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-light-oil")
bobmods.lib.tech.add_recipe_unlock("flammables", "solid-fuel-from-heavy-oil")
