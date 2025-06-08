if data.raw.item["bob-rubber"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-boots", "plastic-bar", "bob-rubber")
  bobmods.lib.recipe.replace_ingredient("bob-player-boots-2", "plastic-bar", "bob-rubber")
  bobmods.lib.tech.add_prerequisite("bob-bodies", "bob-wood-processing")
end

if data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-gloves", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-player-gloves", { type = "item", name = "bob-steel-bearing", amount = 8 })
end

if data.raw.item["bob-rtg"] then
  bobmods.lib.recipe.add_ingredient("bob-player-power-core", { type = "item", name = "bob-rtg", amount = 1 })
  bobmods.lib.tech.add_prerequisite("bob-bodies", "bob-rtg")
elseif data.raw.item["bob-alien-artifact"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-player-power-core",
    { type = "item", name = "bob-alien-artifact", amount = 50 }
  )
end

if data.raw.item["bob-module-case"] then
  bobmods.lib.recipe.remove_ingredient("bob-player-brain", "iron-plate")
  bobmods.lib.recipe.add_ingredient("bob-player-brain", { type = "item", name = "bob-module-case", amount = 1 })
  bobmods.lib.recipe.remove_ingredient("bob-player-brain-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient("bob-player-brain-2", { type = "item", name = "bob-module-case", amount = 1 })
  bobmods.lib.tech.add_prerequisite("bob-bodies", "modules")
elseif data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-brain", "iron-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-player-brain-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-bodies", "bob-aluminium-processing")
end

if data.raw["recipe-category"]["bob-electronics"] then
  data.raw.recipe["bob-player-brain"].category = "bob-electronics"
  data.raw.recipe["bob-player-brain-2"].category = "bob-electronics"
end

if data.raw.item["bob-solder"] then
  bobmods.lib.recipe.add_ingredient("bob-player-brain", { type = "item", name = "bob-solder", amount = 5 })
  bobmods.lib.recipe.add_ingredient("bob-player-brain-2", { type = "item", name = "bob-solder", amount = 10 })
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-gloves-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-player-boots-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-player-head-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-player-frame-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-bodies-2", "bob-titanium-processing")
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-gloves-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
elseif data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-gloves-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-player-gloves-2", { type = "item", name = "bob-titanium-bearing", amount = 8 })
elseif data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-player-gloves-2", { type = "item", name = "bob-steel-bearing", amount = 8 })
end

if data.raw.item["bob-titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("bob-player-frame-2", "steel-chest", "bob-titanium-chest")
end

if data.raw.item["bob-turbo-inserter"] then
  bobmods.lib.tech.replace_prerequisite("bob-builder-body", "fast-inserter", "bob-express-inserter")
  bobmods.lib.recipe.replace_ingredient("bob-character-builder-2", "bulk-inserter", "bob-turbo-inserter")
  bobmods.lib.tech.replace_prerequisite("bob-builder-body-2", "bulk-inserter", "bob-turbo-inserter")
end

if data.raw.item["bob-assembling-machine-4"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-miner", "assembling-machine-2", "assembling-machine-3")
  bobmods.lib.recipe.replace_ingredient("bob-character-miner-2", "assembling-machine-3", "bob-assembling-machine-4")
  bobmods.lib.tech.add_prerequisite("bob-miner-body", "automation-3")
  bobmods.lib.tech.add_prerequisite("bob-miner-body-2", "automation-4")
end

if data.raw.item["bob-electric-furnace-2"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-miner-2", "electric-furnace", "bob-electric-furnace-2")
  bobmods.lib.tech.add_prerequisite("bob-miner-body-2", "advanced-material-processing-3")
end

if data.raw.item["bob-exoskeleton-equipment-2"] then
  bobmods.lib.recipe.replace_ingredient(
    "bob-character-fighter-2",
    "exoskeleton-equipment",
    "bob-exoskeleton-equipment-2"
  )
  bobmods.lib.tech.add_prerequisite("bob-fighter-body-2", "bob-exoskeleton-equipment-2")
end
