if settings.startup["bobmods-power-steam"].value == true then
  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "steam-turbine",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 10 }
    )
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-cobalt-processing")
  else
    if data.raw.item["bob-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient("steam-turbine", { type = "item", name = "bob-steel-bearing", amount = 10 })
    end
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-cobalt-processing")
  else
    if data.raw.item["bob-brass-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "bob-brass-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-zinc-processing")
    else
      if data.raw.item["bob-steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("steam-turbine", "iron-gear-wheel", "bob-steel-gear-wheel")
      end
    end
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "copper-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-aluminium-processing")
  else
    if data.raw.item["bob-invar-alloy"] then
      bobmods.lib.recipe.replace_ingredient("steam-turbine", "copper-plate", "bob-invar-alloy")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "bob-invar-processing")
    end
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("steam-turbine", "electronic-circuit", "advanced-circuit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-1", "advanced-circuit")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-turbine-2",
      { type = "item", name = "bob-titanium-bearing", amount = 15 }
    )
  else
    if data.raw.item["bob-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-steam-turbine-2",
        { type = "item", name = "bob-steel-bearing", amount = 15 }
      )
    else
      bobmods.lib.recipe.add_ingredient("bob-steam-turbine-2", { type = "item", name = "iron-gear-wheel", amount = 25 })
    end
  end

  if data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "bob-tungsten-processing")
  else
    if data.raw.item["bob-steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "iron-gear-wheel", "bob-steel-gear-wheel")
    end
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "bob-titanium-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "steel-plate", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "bob-tungsten-processing")
    end
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-steam-turbine-2", { type = "item", name = "bob-titanium-pipe", amount = 5 })
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-2", "advanced-circuit", "processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-2", "processing-unit")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-steam-turbine-3",
      { type = "item", name = "bob-nitinol-bearing", amount = 15 }
    )
  else
    if data.raw.item["bob-titanium-bearing"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-steam-turbine-3",
        { type = "item", name = "bob-titanium-bearing", amount = 15 }
      )
    else
      bobmods.lib.recipe.add_ingredient("bob-steam-turbine-3", { type = "item", name = "iron-gear-wheel", amount = 25 })
    end
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-nitinol-processing")
  else
    if data.raw.item["bob-tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "iron-gear-wheel", "bob-tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-tungsten-processing")
    else
      if data.raw.item["bob-steel-gear-wheel"] then
        bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "iron-gear-wheel", "bob-steel-gear-wheel")
      end
    end
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-nitinol-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "steel-plate", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-tungsten-processing")
    end
  end

  if data.raw.item["bob-nitinol-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-steam-turbine-3", { type = "item", name = "bob-nitinol-pipe", amount = 5 })
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.add_ingredient("bob-steam-turbine-3", { type = "item", name = "bob-tungsten-pipe", amount = 5 })
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-steam-turbine-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "bob-advanced-processing-unit")
  else
    bobmods.lib.tech.add_prerequisite("bob-steam-turbine-3", "processing-unit")
  end
end
