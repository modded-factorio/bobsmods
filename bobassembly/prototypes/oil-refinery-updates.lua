if settings.startup["bobmods-assembly-oilrefineries"].value == true then
  data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "oil-refinery-2"

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "steel-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "zinc-processing")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "stone-brick", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "invar-processing")
  end

  if data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "iron-gear-wheel", "brass-gear-wheel")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "iron-gear-wheel", "steel-gear-wheel")
    end
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("oil-refinery-2", { type = "item", name = "steel-bearing", amount = 5 })
  end

  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-2", "pipe", "steel-pipe")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "titanium-processing")
  end

  if data.raw.item["bob-silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "stone-brick", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "ceramics")
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "iron-gear-wheel", "titanium-gear-wheel")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "iron-gear-wheel", "steel-gear-wheel")
    end
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("oil-refinery-3", { type = "item", name = "titanium-bearing", amount = 5 })
  else
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("oil-refinery-3", { type = "item", name = "steel-bearing", amount = 5 })
    end
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "pipe", "titanium-pipe")
  else
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery-3", "pipe", "steel-pipe")
    end
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "nitinol-processing")
  else
    if data.raw.item["bob-titanium-plate"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "steel-plate", "bob-titanium-plate")
    end
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "stone-brick", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "tungsten-alloy-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "stone-brick", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("oil-processing-4", "tungsten-processing")
    end
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "iron-gear-wheel", "nitinol-gear-wheel")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "iron-gear-wheel", "steel-gear-wheel")
    end
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("oil-refinery-4", { type = "item", name = "nitinol-bearing", amount = 5 })
  else
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("oil-refinery-4", { type = "item", name = "steel-bearing", amount = 5 })
    end
  end

  if data.raw.item["nitinol-pipe"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "pipe", "nitinol-pipe")
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "pipe", "tungsten-pipe")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("oil-refinery-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-advanced-processing-unit")
  end
end
