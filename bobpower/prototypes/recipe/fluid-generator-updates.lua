if settings.startup["bobmods-power-fluidgenerator"].value == true then
  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator", { type = "item", name = "bob-steel-bearing", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator", "iron-plate", "bob-bronze-alloy")
    bobmods.lib.tech.add_prerequisite("fluid-generator-1", "bob-alloy-processing")
  end

  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator", "pipe", "steel-pipe")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator", { type = "item", name = "electronic-circuit", amount = 5 })
    if data.raw.technology["bob-electronics"] then
      bobmods.lib.tech.add_prerequisite("fluid-generator-1", "bob-electronics")
    else
      bobmods.lib.tech.add_prerequisite("fluid-generator-1", "electronics")
    end
  end

  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "bob-cobalt-steel-bearing", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "bob-cobalt-processing")
  elseif data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "bob-steel-bearing", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "bob-cobalt-processing")
  elseif data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "bob-zinc-processing")
  elseif data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "iron-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "bob-invar-processing")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "bob-aluminium-processing")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "brass-pipe", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "bob-zinc-processing")
  elseif data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-2", { type = "item", name = "steel-pipe", amount = 5 })
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-2", "electronic-circuit", "advanced-circuit")
    bobmods.lib.tech.add_prerequisite("fluid-generator-2", "advanced-circuit")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "bob-titanium-bearing", amount = 10 })
  elseif data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "bob-steel-bearing", amount = 10 })
  else
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
  elseif data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "iron-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "bob-titanium-processing")
  end

  if data.raw.item["ceramic-pipe"] then
    bobmods.lib.recipe.add_ingredient("fluid-generator-3", { type = "item", name = "ceramic-pipe", amount = 5 })
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "bob-ceramics")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("fluid-generator-3", "advanced-circuit", "processing-unit")
    bobmods.lib.tech.add_prerequisite("fluid-generator-3", "processing-unit")
  end

  if mods["bobrevamp"] and data.raw.fluid["bob-hydrogen"] and data.raw.fluid["bob-oxygen"] and data.raw.fluid["bob-nitrogen"] then
    if data.raw.item["bob-nitinol-bearing"] then
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { type = "item", name = "bob-nitinol-bearing", amount = 10 })
    else
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { type = "item", name = "iron-gear-wheel", amount = 10 })
    end

    if data.raw.item["bob-nitinol-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    end

    if data.raw.item["bob-copper-tungsten-alloy"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "iron-plate", "bob-copper-tungsten-alloy")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "bob-tungsten-alloy-processing")
    end

    if data.raw.item["bob-nitinol-alloy"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "steel-plate", "bob-nitinol-alloy")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "bob-nitinol-processing")
    end

    if data.raw.item["copper-tungsten-pipe"] then
      bobmods.lib.recipe.add_ingredient(
        "hydrazine-generator",
        { type = "item", name = "copper-tungsten-pipe", amount = 5 }
      )
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "bob-tungsten-alloy-processing")
    elseif data.raw.item["tungsten-pipe"] then
      bobmods.lib.recipe.add_ingredient("hydrazine-generator", { type = "item", name = "tungsten-pipe", amount = 5 })
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "bob-tungsten-processing")
    end

    if data.raw.item["bob-advanced-processing-unit"] then
      bobmods.lib.recipe.replace_ingredient("hydrazine-generator", "processing-unit", "bob-advanced-processing-unit")
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "bob-advanced-processing-unit")
    else
      bobmods.lib.tech.add_prerequisite("hydrazine-generator", "processing-unit")
    end
  end
end
