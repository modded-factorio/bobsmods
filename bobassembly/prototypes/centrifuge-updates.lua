if settings.startup["bobmods-assembly-centrifuge"].value == true then
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-2", "refined-concrete", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("centrifuge-2", "ceramics")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-2", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("centrifuge-2", "titanium-processing")
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-2", "iron-gear-wheel", "titanium-gear-wheel")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("centrifuge-2", { "titanium-bearing", 50 })
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-3", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("centrifuge-3", "nitinol-processing")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-3", "refined-concrete", "tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("centrifuge-3", "tungsten-alloy-processing")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("centrifuge-3", "advanced-electronics-3")
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("centrifuge-3", "iron-gear-wheel", "nitinol-gear-wheel")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("centrifuge-3", { "nitinol-bearing", 50 })
  end
end
