if settings.startup["bobmods-mining-waterminers"].value == true and data.raw["resource-category"]["water"] then
  if data.raw.item["basic-circuit-board"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-1", "electronic-circuit", "basic-circuit-board")
  end

  if data.raw.item["copper-pipe"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-1", "pipe", "copper-pipe")
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-2", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-2", "pipe", "bronze-pipe")
    bobmods.lib.tech.add_prerequisite("water-miner-2", "alloy-processing")
  else
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-3", "pipe", "steel-pipe")
    end
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-3", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("water-miner-3", "aluminium-processing")
  else
    if data.raw.item["brass-alloy"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-3", "steel-plate", "brass-plate")
      bobmods.lib.tech.add_prerequisite("water-miner-3", "zinc-processing")
    end
  end

  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-3", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("water-miner-3", "zinc-processing")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-3", "iron-gear-wheel", "steel-gear-wheel")
    end
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-3", "pipe", "brass-pipe")
    bobmods.lib.tech.add_prerequisite("water-miner-3", "zinc-processing")
  else
    if data.raw.item["plastic-pipe"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-3", "pipe", "plastic-pipe")
      bobmods.lib.tech.add_prerequisite("water-miner-3", "plastics")
    end
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-4", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("water-miner-4", "titanium-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-4", "steel-plate", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("water-miner-4", "tungsten-processing")
    end
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-4", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("water-miner-4", "titanium-processing")
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-4", "iron-gear-wheel", "tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("water-miner-4", "tungsten-processing")
    end
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("water-miner-4", "pipe", "titanium-pipe")
    bobmods.lib.tech.add_prerequisite("water-miner-4", "titanium-processing")
  else
    if data.raw.item["plastic-pipe"] then
      bobmods.lib.recipe.replace_ingredient("water-miner-4", "pipe", "plastic-pipe")
      bobmods.lib.tech.add_prerequisite("water-miner-4", "plastics")
    end
  end
end
