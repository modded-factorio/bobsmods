if settings.startup["bobmods-mining-waterminers"].value == true and data.raw["resource-category"]["water"] then
  if data.raw.item["bob-basic-circuit-board"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-1", "electronic-circuit", "bob-basic-circuit-board")
  end

  if data.raw.item["bob-copper-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-1", "pipe", "bob-copper-pipe")
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-2", "pipe", "bob-bronze-pipe")
    bobmods.lib.tech.add_prerequisite("bob-water-miner-2", "bob-alloy-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-3", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-water-miner-3", "bob-aluminium-processing")
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-3", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-water-miner-3", "bob-cobalt-processing")
  end

  if data.raw.item["bob-plastic-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-3", "pipe", "bob-plastic-pipe")
  end

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-4", "steel-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-water-miner-4", "bob-brass-processing")
  end

  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-4", "iron-gear-wheel", "bob-brass-gear-wheel")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-water-miner-4", "pipe", "bob-brass-pipe")
  end
end
