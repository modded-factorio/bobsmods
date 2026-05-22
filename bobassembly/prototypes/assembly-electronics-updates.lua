if settings.startup["bobmods-assembly-electronicmachines"].value == true then
  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-1", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-1", "steel-plate", "bob-bronze-alloy")
    if mods["bobelectronics"] then
      bobmods.lib.tech.add_prerequisite("bob-electronics-machine-1", "bob-electronics")
    else
      bobmods.lib.tech.add_prerequisite("bob-electronics-machine-1", "bob-alloy-processing")
    end
  end

  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-2", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-2", "bob-brass-processing")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-2",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-2", "bob-titanium-processing")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-electronics-machine-2",
      { type = "item", name = "iron-gear-wheel", amount = 3 }
    )
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-2", "bob-invar-processing")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-nitinol-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electronics-machine-3", "iron-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electronics-machine-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-nitinol-bearing"] then
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
