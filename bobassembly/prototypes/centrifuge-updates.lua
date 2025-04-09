if settings.startup["bobmods-assembly-centrifuge"].value == true then
  if data.raw.item["bob-silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-2", "refined-concrete", "bob-silicon-nitride")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-2", "bob-ceramics")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-2", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-centrifuge-2", { type = "item", name = "bob-titanium-bearing", amount = 50 })
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-nitinol-processing")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "refined-concrete", "bob-tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-centrifuge-3", "bob-advanced-processing-unit")
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-centrifuge-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-centrifuge-3", { type = "item", name = "bob-nitinol-bearing", amount = 50 })
  end
end
