if settings.startup["bobmods-power-nuclear"].value == true then
  bobmods.lib.recipe.remove_ingredient("nuclear-reactor", "copper-plate")
  bobmods.lib.recipe.add_ingredient("nuclear-reactor", { type = "item", name = "heat-pipe-2", amount = 25 })
  bobmods.lib.recipe.set_ingredient("nuclear-reactor", { type = "item", name = "steel-plate", amount = 250 })

  if data.raw.item["heat-pipe-3"] then
    bobmods.lib.recipe.remove_ingredient("nuclear-reactor-2", "copper-plate")
    bobmods.lib.recipe.add_ingredient("nuclear-reactor-2", { type = "item", name = "heat-pipe-3", amount = 25 })
    bobmods.lib.recipe.set_ingredient("nuclear-reactor-2", { type = "item", name = "steel-plate", amount = 250 })
  elseif data.raw.item["brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-2", "copper-plate", "brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "zinc-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-2", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "tungsten-processing")
  end

  if data.raw.item["lead-plate"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-2", "concrete", "lead-plate")
  end

  if data.raw.item["heat-pipe-4"] then
    bobmods.lib.recipe.remove_ingredient("nuclear-reactor-3", "copper-plate")
    bobmods.lib.recipe.add_ingredient("nuclear-reactor-3", { type = "item", name = "heat-pipe-4", amount = 25 })
    bobmods.lib.recipe.set_ingredient("nuclear-reactor-3", { type = "item", name = "steel-plate", amount = 250 })
  elseif data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "copper-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-3", "tungsten-alloy-processing")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "steel-plate", "tungsten-carbide")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-3", "advanced-electronics-3")
  end

  if data.raw.item["lead-plate"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "concrete", "lead-plate")
  end
end
