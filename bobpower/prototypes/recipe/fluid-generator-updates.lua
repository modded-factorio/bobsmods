if settings.startup["bobmods-power-fluidgenerator"].value == true then
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator", "normal", { "steel-bearing", 10 })
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator", "expensive", { "steel-bearing", 20 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator", { "iron-gear-wheel", 10 })
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator", "iron-plate", "bronze-alloy")
    bobmods.lib.tech.add_prerequisite("fluid-generator-1", "alloy-processing")
  end

  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator", "pipe", "steel-pipe")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator", "normal", { "electronic-circuit", 5 })
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator", "expensive", { "electronic-circuit", 10 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-1", "electronics")
  end

  if data.raw.item["cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-2", "normal", { "cobalt-steel-bearing", 5 })
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-2", "expensive", { "cobalt-steel-bearing", 10 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "cobalt-processing")
  elseif data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-2", "normal", { "steel-bearing", 10 })
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-2", "expensive", { "steel-bearing", 20 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { "iron-gear-wheel", 10 })
  end

  if data.raw.item["cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "cobalt-processing")
  elseif data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "zinc-processing")
  elseif data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "invar-processing")
  end

  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "aluminium-processing")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { "brass-pipe", 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "zinc-processing")
  elseif data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { "steel-pipe", 5 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "electronic-circuit", "advanced-circuit")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "advanced-electronics")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-3", "normal", { "titanium-bearing", 10 })
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-3", "expensive", { "titanium-bearing", 20 })
  elseif data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-3", "normal", { "steel-bearing", 10 })
    bobmods.lib.recipe.add_difficulty_ingredient("fluid-generator-3", "expensive", { "steel-bearing", 20 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { "iron-gear-wheel", 10 })
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-gear-wheel", "titanium-gear-wheel")
  elseif data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "tungsten-processing")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "titanium-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { "ceramic-pipe", 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "ceramics")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "advanced-circuit", "processing-unit")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "advanced-electronics-2")
  end

  if mods["bobrevamp"] and data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then
    if data.raw.item["nitinol-bearing"] then
      bobmods.lib.recipe.add_difficulty_ingredient("hydrazine-generator", "normal", { "nitinol-bearing", 10 })
      bobmods.lib.recipe.add_difficulty_ingredient("hydrazine-generator", "expensive", { "nitinol-bearing", 20 })
    else
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { "iron-gear-wheel", 10 })
    end

    if data.raw.item["nitinol-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "iron-gear-wheel", "nitinol-gear-wheel")
    end

    if data.raw.item["copper-tungsten-alloy"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "iron-plate", "copper-tungsten-alloy")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "tungsten-alloy-processing")
    end

    if data.raw.item["nitinol-alloy"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "steel-plate", "nitinol-alloy")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "nitinol-processing")
    end

    if data.raw.item["copper-tungsten-pipe"] then
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { "copper-tungsten-pipe", 5 })
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "tungsten-alloy-processing")
    elseif data.raw.item["tungsten-pipe"] then
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { "tungsten-pipe", 5 })
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "tungsten-processing")
    end

    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "processing-unit", "advanced-processing-unit")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "advanced-electronics-3")
    else
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "advanced-electronics-2")
    end
  end
end
