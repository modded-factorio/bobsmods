for _, recipe_name in pairs({
  "offshore-pump",
  "inserter",
  "electric-mining-drill",
  "lab",
  "radar",
  "repair-pack",
  "assembling-machine-1",
  "splitter",
  "small-lamp",
}) do
  if data.raw.recipe[recipe_name] then
    bobmods.lib.recipe.replace_ingredient(recipe_name, "electronic-circuit", "bob-basic-circuit-board")
  end
end

if data.raw.fluid["bob-hydrogen-chloride"] then
  bobmods.lib.recipe.replace_ingredient("bob-ferric-chloride-solution", "water", "bob-hydrogen-chloride")
end

if data.raw.item["bob-tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-insulated-cable", "copper-cable", "bob-tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("bob-basic-electronic-components", "copper-cable", "bob-tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("bob-electronic-components", "copper-cable", "bob-tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("bob-integrated-electronics", "copper-cable", "bob-tinned-copper-cable")
end

if data.raw.item["bob-carbon"] then
  bobmods.lib.recipe.replace_ingredient("bob-basic-electronic-components", "coal", "bob-carbon")
end

if data.raw.item["bob-silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-electronic-components",
    { type = "item", name = "bob-silicon-wafer", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-integrated-electronics",
    { type = "item", name = "bob-silicon-wafer", amount = 4 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-processing-electronics",
    { type = "item", name = "bob-silicon-wafer", amount = 6 }
  )
else
  if data.raw.item["bob-silicon-plate"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-electronic-components",
      { type = "item", name = "bob-silicon-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-integrated-electronics",
      { type = "item", name = "bob-silicon-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-processing-electronics",
      { type = "item", name = "bob-silicon-plate", amount = 3 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-electronic-components", { type = "item", name = "copper-plate", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "bob-integrated-electronics",
      { type = "item", name = "copper-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-processing-electronics",
      { type = "item", name = "copper-plate", amount = 3 }
    )
  end
end

if data.raw.item["bob-gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-processing-electronics", "copper-cable", "bob-gilded-copper-cable")
else
  if data.raw.item["bob-tinned-copper-cable"] then
    bobmods.lib.recipe.replace_ingredient("bob-processing-electronics", "copper-cable", "bob-tinned-copper-cable")
  end
end

if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.replace_ingredient("bob-processing-electronics", "plastic-bar", "bob-silicon-nitride")
end

if data.raw.item["bob-glass"] then
  bobmods.lib.recipe.add_ingredient("bob-fibreglass-board", { type = "item", name = "bob-glass", amount = 1 })
else
  bobmods.lib.recipe.add_ingredient("bob-fibreglass-board", { type = "item", name = "plastic-bar", amount = 1 })
end

if data.raw.item["bob-tin-plate"] then
  bobmods.lib.recipe.add_ingredient("bob-circuit-board", { type = "item", name = "bob-tin-plate", amount = 1 })
else
  bobmods.lib.recipe.add_ingredient("bob-circuit-board", { type = "item", name = "copper-plate", amount = 1 })
end

if data.raw.item["silver-plate"] then
  bobmods.lib.recipe.add_ingredient("bob-superior-circuit-board", { type = "item", name = "silver-plate", amount = 1 })
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-multi-layer-circuit-board",
    { type = "item", name = "bob-gold-plate", amount = 2 }
  )
else
  if data.raw.item["bob-tin-plate"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-superior-circuit-board",
      { type = "item", name = "bob-tin-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-multi-layer-circuit-board",
      { type = "item", name = "bob-tin-plate", amount = 2 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-superior-circuit-board",
      { type = "item", name = "copper-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-multi-layer-circuit-board",
      { type = "item", name = "copper-plate", amount = 2 }
    )
  end
end

--Use this standard when adding solder: basic-electronic-components = 1/6 solder, electronic-components = 1/5 solder, integrated-electronics = 1/4 solder, processing-electronics = 1/3 solder
if data.raw.item["bob-solder"] then
  bobmods.lib.recipe.add_ingredient("electronic-circuit", { type = "item", name = "bob-solder", amount = 1 })
  bobmods.lib.recipe.add_ingredient("advanced-circuit", { type = "item", name = "bob-solder", amount = 2 })
  bobmods.lib.recipe.add_ingredient("processing-unit", { type = "item", name = "bob-solder", amount = 4 })
  bobmods.lib.recipe.add_ingredient("bob-advanced-processing-unit", { type = "item", name = "bob-solder", amount = 6 })
end

bobmods.lib.recipe.replace_ingredient("arithmetic-combinator", "copper-cable", "bob-insulated-cable")
bobmods.lib.recipe.replace_ingredient("decider-combinator", "copper-cable", "bob-insulated-cable")
bobmods.lib.recipe.replace_ingredient("constant-combinator", "copper-cable", "bob-insulated-cable")
