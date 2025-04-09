if settings.startup["bobmods-mining-areadrills"].value == true then
  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-1", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-cobalt-steel-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-2", "steel-plate", "bob-cobalt-steel-alloy")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-2", "bob-cobalt-processing")
  else
    if data.raw.item["bob-invar-alloy"] then
      bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-2", "steel-plate", "bob-invar-alloy")
      bobmods.lib.tech.add_prerequisite("bob-area-drills-2", "bob-invar-processing")
    else
      if data.raw.item["bob-brass-alloy"] then
        bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-2", "steel-plate", "bob-brass-alloy")
        bobmods.lib.tech.add_prerequisite("bob-area-drills-2", "bob-zinc-processing")
      end
    end
  end

  if data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-2", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-2", "bob-zinc-processing")
  else
    if data.raw.item["bob-steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-2", "iron-gear-wheel", "bob-steel-gear-wheel")
    end
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-3", "bob-titanium-processing")
  else
    if data.raw.item["bob-tungsten-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-3", "steel-plate", "bob-tungsten-plate")
      bobmods.lib.tech.add_prerequisite("bob-area-drills-3", "bob-tungsten-processing")
    end
  end

  if data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-3", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-4", "bob-advanced-processing-unit")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-4", "steel-plate", "bob-tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-4", "bob-tungsten-alloy-processing")
  else
    if data.raw.item["bob-copper-tungsten-alloy"] then
      bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-4", "steel-plate", "bob-copper-tungsten-alloy")
      bobmods.lib.tech.add_prerequisite("bob-area-drills-4", "bob-tungsten-alloy-processing")
    end
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-4", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-area-drills-4", "bob-nitinol-processing")
  else
    if data.raw.item["bob-tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("bob-area-mining-drill-4", "iron-gear-wheel", "bob-tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("bob-area-drills-4", "bob-tungsten-processing")
    end
  end
end
