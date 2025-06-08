if settings.startup["bobmods-assembly-oilrefineries"].value == true then
  data.raw["assembling-machine"]["oil-refinery"].next_upgrade = "bob-oil-refinery-2"

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "steel-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-zinc-processing")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "stone-brick", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-2", "bob-invar-processing")
  end

  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "iron-gear-wheel", "bob-brass-gear-wheel")
  else
    if data.raw.item["bob-steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "iron-gear-wheel", "bob-steel-gear-wheel")
    end
  end

  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-oil-refinery-2", { type = "item", name = "bob-steel-bearing", amount = 5 })
  end

  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-2", "pipe", "bob-steel-pipe")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "stone-brick", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("oil-processing-3", "bob-ceramics")
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
  else
    if data.raw.item["bob-steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "iron-gear-wheel", "bob-steel-gear-wheel")
    end
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-oil-refinery-3",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
  else
    if data.raw.item["bob-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("bob-oil-refinery-3", { type = "item", name = "bob-steel-bearing", amount = 5 })
    end
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "pipe", "bob-titanium-pipe")
  else
    if data.raw.item["bob-steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-3", "pipe", "bob-steel-pipe")
    end
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-nitinol-processing")
  else
    if data.raw.item["bob-titanium-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "steel-plate", "bob-titanium-plate")
    end
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "stone-brick", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-tungsten-alloy-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "stone-brick", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-tungsten-processing")
    end
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  else
    if data.raw.item["bob-steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "iron-gear-wheel", "bob-steel-gear-wheel")
    end
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-oil-refinery-4", { type = "item", name = "bob-nitinol-bearing", amount = 5 })
  else
    if data.raw.item["bob-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("bob-oil-refinery-4", { type = "item", name = "bob-steel-bearing", amount = 5 })
    end
  end

  if data.raw.item["bob-nitinol-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "pipe", "bob-nitinol-pipe")
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "pipe", "bob-tungsten-pipe")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-oil-refinery-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("oil-processing-4", "bob-advanced-processing-unit")
  end
end
