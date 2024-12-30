for i, recipe in pairs(data.raw.recipe) do
  if
    recipe.name == "offshore-pump"
    or recipe.name == "inserter"
    or recipe.name == "electric-mining-drill"
    or recipe.name == "lab"
    or recipe.name == "radar"
    or recipe.name == "repair-pack"
    or recipe.name == "assembling-machine-1"
    or recipe.name == "splitter"
    or recipe.name == "small-lamp"
    or recipe.name == "frame-1" --DyTech basic mining drill
  then
    bobmods.lib.recipe.replace_ingredient(recipe.name, "electronic-circuit", "basic-circuit-board")
  end
end

if data.raw.fluid["bob-hydrogen-chloride"] then
  bobmods.lib.recipe.replace_ingredient("bob-ferric-chloride-solution", "water", "bob-hydrogen-chloride")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("insulated-cable", "copper-cable", "tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("basic-electronic-components", "copper-cable", "tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("electronic-components", "copper-cable", "tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("intergrated-electronics", "copper-cable", "tinned-copper-cable")
end

if data.raw.item["bob-carbon"] then
  bobmods.lib.recipe.replace_ingredient("basic-electronic-components", "coal", "bob-carbon")
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient("electronic-components", { type = "item", name = "silicon-wafer", amount = 2 })
  bobmods.lib.recipe.add_ingredient("intergrated-electronics", { type = "item", name = "silicon-wafer", amount = 4 })
  bobmods.lib.recipe.add_ingredient("processing-electronics", { type = "item", name = "silicon-wafer", amount = 6 })
else
  if data.raw.item["bob-silicon-plate"] then
    bobmods.lib.recipe.add_ingredient(
      "electronic-components",
      { type = "item", name = "bob-silicon-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "intergrated-electronics",
      { type = "item", name = "bob-silicon-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "processing-electronics",
      { type = "item", name = "bob-silicon-plate", amount = 3 }
    )
  else
    bobmods.lib.recipe.add_ingredient("electronic-components", { type = "item", name = "copper-plate", amount = 1 })
    bobmods.lib.recipe.add_ingredient("intergrated-electronics", { type = "item", name = "copper-plate", amount = 2 })
    bobmods.lib.recipe.add_ingredient("processing-electronics", { type = "item", name = "copper-plate", amount = 3 })
  end
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("processing-electronics", "copper-cable", "gilded-copper-cable")
else
  if data.raw.item["tinned-copper-cable"] then
    bobmods.lib.recipe.replace_ingredient("processing-electronics", "copper-cable", "tinned-copper-cable")
  end
end

if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("processing-electronics", "plastic-bar", "bob-silicon-nitride")
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.add_ingredient("fibreglass-board", { type = "item", name = "bob-glass", amount = 1 })
else
  bobmods.lib.recipe.add_ingredient("fibreglass-board", { type = "item", name = "plastic-bar", amount = 1 })
end

if data.raw.item["bob-tin-plate"] then
  bobmods.lib.recipe.add_ingredient("circuit-board", { type = "item", name = "bob-tin-plate", amount = 1 })
else
  bobmods.lib.recipe.add_ingredient("circuit-board", { type = "item", name = "copper-plate", amount = 1 })
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.add_ingredient("superior-circuit-board", { type = "item", name = "bob-gold-plate", amount = 1 })
  bobmods.lib.recipe.add_ingredient("multi-layer-circuit-board", { type = "item", name = "bob-gold-plate", amount = 2 })
else
  if data.raw.item["bob-tin-plate"] then
    bobmods.lib.recipe.add_ingredient("superior-circuit-board", { type = "item", name = "bob-tin-plate", amount = 1 })
    bobmods.lib.recipe.add_ingredient("multi-layer-circuit-board", { type = "item", name = "bob-tin-plate", amount = 2 })
  else
    bobmods.lib.recipe.add_ingredient("superior-circuit-board", { type = "item", name = "copper-plate", amount = 1 })
    bobmods.lib.recipe.add_ingredient("multi-layer-circuit-board", { type = "item", name = "copper-plate", amount = 2 })
  end
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("electronic-circuit", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("advanced-circuit", { type = "item", name = "solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("processing-unit", { type = "item", name = "solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("advanced-processing-unit", { type = "item", name = "solder", amount = 4 })
end
