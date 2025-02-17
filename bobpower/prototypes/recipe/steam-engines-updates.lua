if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-steam-engine-2", { type = "item", name = "bob-steel-bearing", amount = 5 })
  else
    bobmods.lib.recipe.add_ingredient("bob-steam-engine-2", { type = "item", name = "iron-gear-wheel", amount = 5 })
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-2", "pipe", "bob-steel-pipe")
  end

  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-engine-3",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "bob-cobalt-processing")
  else
    if data.raw.item["bob-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("bob-steam-engine-3", { type = "item", name = "bob-steel-bearing", amount = 5 })
    else
      bobmods.lib.recipe.add_ingredient("bob-steam-engine-3", { type = "item", name = "iron-gear-wheel", amount = 5 })
    end
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-3", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "bob-cobalt-processing")
  else
    if data.raw.item["bob-brass-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-engine-3", "iron-gear-wheel", "bob-brass-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "bob-zinc-processing")
    else
      if data.raw.item["bob-steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("bob-steam-engine-3", "iron-gear-wheel", "bob-steel-gear-wheel")
      end
    end
  end

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-3", "steel-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "bob-zinc-processing")
  else
    if data.raw.item["bob-invar-alloy"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-engine-3", "steel-plate", "bob-invar-alloy")
      bobmods.lib.tech.add_prerequisite("bob-steam-engine-3", "bob-invar-processing")
    end
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-3", "pipe", "bob-brass-pipe")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-engine-4",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
  else
    if data.raw.item["bob-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("bob-steam-engine-4", { type = "item", name = "bob-steel-bearing", amount = 5 })
    else
      bobmods.lib.recipe.add_ingredient("bob-steam-engine-4", { type = "item", name = "iron-gear-wheel", amount = 5 })
    end
  end

  if data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-4", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "bob-tungsten-processing")
  else
    if data.raw.item["bob-steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-engine-4", "iron-gear-wheel", "bob-steel-gear-wheel")
    end
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-4", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "bob-titanium-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-engine-4", "steel-plate", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-steam-engine-4", "bob-tungsten-processing")
    end
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-4", "pipe", "bob-titanium-pipe")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-steam-engine-5", { type = "item", name = "bob-nitinol-bearing", amount = 5 })
  else
    if data.raw.item["bob-titanium-bearing"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-steam-engine-5",
        { type = "item", name = "bob-titanium-bearing", amount = 5 }
      )
    else
      bobmods.lib.recipe.add_ingredient("bob-steam-engine-5", { type = "item", name = "iron-gear-wheel", amount = 5 })
    end
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "bob-nitinol-processing")
  else
    if data.raw.item["bob-tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "iron-gear-wheel", "bob-tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "bob-tungsten-processing")
    else
      if data.raw.item["bob-steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "iron-gear-wheel", "bob-steel-gear-wheel")
      end
    end
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "bob-nitinol-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "steel-plate", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-steam-engine-5", "bob-tungsten-processing")
    end
  end

  if data.raw.item["bob-nitinol-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "pipe", "bob-nitinol-pipe")
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-engine-5", "pipe", "bob-tungsten-pipe")
  end
end
