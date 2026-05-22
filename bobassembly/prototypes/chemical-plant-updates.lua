if settings.startup["bobmods-assembly-chemicalplants"].value == true then
  data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "bob-chemical-plant-2"

  if data.raw.technology["bob-chemical-plant"] then
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-chemical-plant")
  elseif data.raw.technology["bob-chemical-processing-2"] then
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-chemical-processing-2")
  else
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "oil-processing")
  end

  if data.raw.item["bob-glass"] then
    bobmods.lib.recipe.add_ingredient("chemical-plant", { type = "item", name = "bob-glass", amount = 5 })
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant", "steel-plate", "bob-bronze-alloy")
    if data.raw.technology["bob-chemical-plant"] then
      bobmods.lib.tech.add_prerequisite("bob-chemical-plant", "bob-alloy-processing")
    end
  end

  if data.raw.item["bob-bronze-pipe"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant", "pipe", "bob-bronze-pipe")
  end

  if data.raw.item["bob-aluminium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-2", "pipe", "bob-aluminium-pipe")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-aluminium-processing")
  end

  if data.raw.item["bob-zinc-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-2", "steel-plate", "bob-zinc-plate")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-zinc-processing")
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-cobalt-processing")
  end

  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-chemical-plant-2",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 5 }
    )
  end

  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-3", "steel-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-3", "bob-brass-processing")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-3", "pipe", "bob-brass-pipe")
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-chemical-plant-3",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "pipe", "bob-tungsten-pipe")
  end

  if data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "iron-gear-wheel", "bob-tungsten-gear-wheel")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-chemical-plant-4",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-4", "bob-nitinol-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-4", "bob-advanced-processing-unit")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["chemical-plant"].ingredient_count = 4
    data.raw["assembling-machine"]["bob-chemical-plant-2"].ingredient_count = 6
    data.raw["assembling-machine"]["bob-chemical-plant-3"].ingredient_count = 8
    data.raw["assembling-machine"]["bob-chemical-plant-4"].ingredient_count = 10
  end
end
