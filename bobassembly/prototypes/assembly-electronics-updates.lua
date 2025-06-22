if settings.startup["bobmods-assembly-electronicmachines"].value == true then
  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-1", "steel-plate", "bob-bronze-alloy")
    if mods["bobelectronics"] then
      bobmods.lib.tech.add_prerequisite("bob-electronics-machine-1", "bob-electronics")
    else
      bobmods.lib.tech.add_prerequisite("bob-electronics-machine-1", "bob-alloy-processing")
    end
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-2", "bob-cobalt-processing")
  end

  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-2",
      { type = "item", name = "bob-cobalt-steel-bearing", amount = 5 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-2",
      { type = "item", name = "iron-gear-wheel", amount = 3 }
    )
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-2", "bob-aluminium-processing")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-nitinol-processing")
  elseif data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "iron-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-tungsten-alloy-processing")
  elseif data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "iron-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-ceramic-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-3",
      { type = "item", name = "bob-ceramic-bearing", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-ceramics")
  elseif data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-3",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-3",
      { type = "item", name = "iron-gear-wheel", amount = 3 }
    )
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-nitinol-processing")
  elseif data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-titanium-processing")
  elseif data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-tungsten-processing")
  end

  -- add new electronics crafting categories
  bobmods.lib.recipe.add_additional_category("copper-cable", "electronics")
  bobmods.lib.recipe.add_additional_category("electronic-circuit", "electronics")
  bobmods.lib.recipe.add_additional_category("advanced-circuit", "electronics")
  bobmods.lib.recipe.add_additional_category("processing-unit", "electronics")

  if data.raw.recipe["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.add_additional_category("bob-advanced-processing-unit", "electronics")
  end
  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-electronics-machine-3",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-advanced-processing-unit")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["bob-electronics-machine-1"].ingredient_count = 3
    data.raw["assembling-machine"]["bob-electronics-machine-2"].ingredient_count = 4
    data.raw["assembling-machine"]["bob-electronics-machine-3"].ingredient_count = 6
  end
end
