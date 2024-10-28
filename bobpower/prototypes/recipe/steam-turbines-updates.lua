if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine", { type = "item", name = "cobalt-steel-bearing", amount = 10 })
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "cobalt-processing")
  else
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("steam-turbine", { type = "item", name = "steel-bearing", amount = 10 })
    end
  end

  if data.raw.item["cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "cobalt-processing")
  else
    if data.raw.item["brass-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "brass-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "zinc-processing")
    else
      if data.raw.item["steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "steel-gear-wheel")
      end
    end
  end

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "copper-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "aluminium-processing")
  else
    if data.raw.item["invar-alloy"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine", "copper-plate", "invar-alloy")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "invar-processing")
    end
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "electronic-circuit", "advanced-circuit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "advanced-circuit")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-2", { type = "item", name = "titanium-bearing", amount = 15 })
  else
    if data.raw.item["steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("steam-turbine-2", { type = "item", name = "steel-bearing", amount = 15 })
    else
      bobmods.lib.recipe.add_ingredient("steam-turbine-2", { type = "item", name = "iron-gear-wheel", amount = 25 })
    end
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "titanium-processing")
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "iron-gear-wheel", "tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "tungsten-processing")
    else
      if data.raw.item["steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "iron-gear-wheel", "steel-gear-wheel")
      end
    end
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "titanium-processing")
  else
    if data.raw.item["tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "steel-plate", "tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "tungsten-processing")
    end
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-2", { type = "item", name = "titanium-pipe", amount = 5 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-2", "advanced-circuit", "processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "processing-unit")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-3", { type = "item", name = "nitinol-bearing", amount = 15 })
  else
    if data.raw.item["titanium-bearing"] then
      bobmods.lib.recipe.add_ingredient("steam-turbine-3", { type = "item", name = "titanium-bearing", amount = 15 })
    else
      bobmods.lib.recipe.add_ingredient("steam-turbine-3", { type = "item", name = "iron-gear-wheel", amount = 25 })
    end
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "nitinol-processing")
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "iron-gear-wheel", "tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "tungsten-processing")
    else
      if data.raw.item["steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "iron-gear-wheel", "steel-gear-wheel")
      end
    end
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "nitinol-processing")
  else
    if data.raw.item["tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "steel-plate", "tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "tungsten-processing")
    end
  end

  if data.raw.item["nitinol-pipe"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-3", { type = "item", name = "nitinol-pipe", amount = 5 })
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("steam-turbine-3", { type = "item", name = "tungsten-pipe", amount = 5 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "advanced-electronics-3")
  else
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "processing-unit")
  end
end
