if settings.startup["bobmods-mining-miningdrills"].value == true then
  data.raw.item["electric-mining-drill"].icon = "__bobmining__/graphics/icons/electric-mining-drill-1.png"
  data.raw["mining-drill"]["electric-mining-drill"].icon = "__bobmining__/graphics/icons/electric-mining-drill-1.png"

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-1", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-cobalt-steel-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.tech.add_prerequisite("bob-drills-3", "bob-cobalt-processing")
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-drills-4", "bob-titanium-processing")
  end

  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-3", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-drills-4", "bob-brass-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-drills-5", "bob-advanced-processing-unit")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "steel-plate", "tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-drills-5", "bob-tungsten-processing")
  end

  if data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-mining-drill-4", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-drills-5", "bob-tungsten-processing")
  end
end
