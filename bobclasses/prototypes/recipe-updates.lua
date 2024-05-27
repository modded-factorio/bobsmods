if data.raw.item["rubber"] then
  bobmods.lib.recipe.replace_ingredient("player-boots", "plastic-bar", "rubber")
  bobmods.lib.recipe.replace_ingredient("player-boots-2", "plastic-bar", "rubber")
  bobmods.lib.tech.add_prerequisite("bodies", "bob-wood-processing")
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("player-gloves", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("player-gloves", { "steel-bearing", 8 })
end

if data.raw.item["rtg"] then
  bobmods.lib.recipe.add_ingredient("player-power-core", { "rtg", 1 })
  bobmods.lib.tech.add_prerequisite("bodies", "rtg")
elseif data.raw.item["alien-artifact"] then
  bobmods.lib.recipe.add_ingredient("player-power-core", { "alien-artifact", 50 })
end

if data.raw.tool["module-case"] then
  bobmods.lib.recipe.remove_ingredient("player-brain", "iron-plate")
  bobmods.lib.recipe.add_ingredient("player-brain", { "module-case", 1 })
  bobmods.lib.recipe.remove_ingredient("player-brain-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient("player-brain-2", { "module-case", 1 })
  bobmods.lib.tech.add_prerequisite("bodies", "modules")
elseif data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("player-brain", "iron-plate", "aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("player-brain-2", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bodies", "aluminium-processing")
end

if data.raw["recipe-category"]["electronics"] then
  data.raw.recipe["player-brain"].category = "electronics"
  data.raw.recipe["player-brain-2"].category = "electronics"
end

if
  data.raw.item["circuit-board"]
  and data.raw.item["basic-electronic-components"]
  and data.raw.item["electronic-components"]
  and data.raw.item["intergrated-electronics"]
then
  bobmods.lib.recipe.add_ingredient("player-brain", { "circuit-board", 5 })
  bobmods.lib.recipe.add_ingredient("player-brain", { "basic-electronic-components", 10 })
  bobmods.lib.recipe.add_ingredient("player-brain", { "electronic-components", 25 })

  bobmods.lib.recipe.add_ingredient("player-brain-2", { "superior-circuit-board", 8 })
  bobmods.lib.recipe.add_ingredient("player-brain-2", { "basic-electronic-components", 8 })
  bobmods.lib.recipe.add_ingredient("player-brain-2", { "electronic-components", 30 })
  bobmods.lib.recipe.add_ingredient("player-brain-2", { "intergrated-electronics", 20 })
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("player-brain", { "solder", 5 })
    bobmods.lib.recipe.add_ingredient("player-brain-2", { "solder", 10 })
  end
else
  bobmods.lib.recipe.add_ingredient("player-brain", { "advanced-circuit", 20 })

  bobmods.lib.recipe.add_ingredient("player-brain-2", { "advanced-circuit", 10 })
  bobmods.lib.recipe.add_ingredient("player-brain-2", { "processing-unit", 10 })
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("player-gloves-2", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("player-boots-2", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("player-head-2", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("player-frame-2", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bodies-2", "titanium-processing")
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("player-gloves-2", "iron-gear-wheel", "titanium-gear-wheel")
elseif data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("player-gloves-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("player-gloves-2", { "titanium-bearing", 8 })
elseif data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("player-gloves-2", { "steel-bearing", 8 })
end

if data.raw.item["titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("player-frame-2", "steel-chest", "titanium-chest")
end

if data.raw.item["assembling-machine-4"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-builder-2", "assembling-machine-3", "assembling-machine-4")
  bobmods.lib.tech.add_prerequisite("builder-body-2", "automation-4")
end

if data.raw.item["electric-furnace-2"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-miner-2", "electric-furnace", "electric-furnace-2")
  bobmods.lib.tech.add_prerequisite("miner-body-2", "advanced-material-processing-3")
end

if data.raw.item["exoskeleton-equipment-2"] then
  bobmods.lib.recipe.replace_ingredient("bob-character-fighter-2", "exoskeleton-equipment", "exoskeleton-equipment-2")
  bobmods.lib.tech.add_prerequisite("fighter-body-2", "exoskeleton-equipment-2")
end
