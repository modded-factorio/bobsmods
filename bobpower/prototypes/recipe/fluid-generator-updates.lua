if settings.startup["bobmods-power-fluidgenerator"].value == true then
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator", { type = "item", name = "steel-bearing", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator", { type = "item", name = "iron-gear-wheel", amount = 10 })
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
    bobmods.lib.recipe.add_ingredient("fluid-generator", { type = "item", name = "electronic-circuit", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-1", "electronics")
  end

  if data.raw.item["cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "cobalt-steel-bearing", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "cobalt-processing")
  elseif data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "steel-bearing", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "iron-gear-wheel", amount = 10 })
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

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "aluminium-processing")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "brass-pipe", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "zinc-processing")
  elseif data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "steel-pipe", amount = 5 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "electronic-circuit", "advanced-circuit")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "advanced-circuit")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "titanium-bearing", amount = 10 })
  elseif data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "steel-bearing", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-gear-wheel", "titanium-gear-wheel")
  elseif data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "tungsten-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "titanium-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "ceramic-pipe", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "ceramics")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "advanced-circuit", "processing-unit")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "processing-unit")
  end

  if mods["bobrevamp"] and data.raw.fluid.hydrogen and data.raw.fluid.oxygen and data.raw.fluid.nitrogen then
    if data.raw.item["nitinol-bearing"] then
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { type = "item", name = "nitinol-bearing", amount = 10 })
    else
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { type = "item", name = "iron-gear-wheel", amount = 10 })
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
      bobmods.lib.recipe.add_ingredient(
        "hydrazine-generator",
        { type = "item", name = "copper-tungsten-pipe", amount = 5 }
      )
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "tungsten-alloy-processing")
    elseif data.raw.item["tungsten-pipe"] then
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { type = "item", name = "tungsten-pipe", amount = 5 })
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "tungsten-processing")
    end

    if data.raw.item["advanced-processing-unit"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "processing-unit", "advanced-processing-unit")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "advanced-electronics-3")
    else
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "processing-unit")
    end
  end
end
