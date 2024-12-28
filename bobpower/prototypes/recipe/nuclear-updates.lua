if settings.startup["bobmods-power-nuclear"].value == true then
  bobmods.lib.recipe.remove_ingredient("nuclear-reactor", "copper-plate")
  bobmods.lib.recipe.add_ingredient("nuclear-reactor", { type = "item", name = "heat-pipe-2", amount = 25 })
  bobmods.lib.recipe.set_ingredient("nuclear-reactor", { type = "item", name = "steel-plate", amount = 250 })

  if data.raw.item["heat-pipe-3"] then
    bobmods.lib.recipe.remove_ingredient("nuclear-reactor-2", "copper-plate")
    bobmods.lib.recipe.add_ingredient("nuclear-reactor-2", { type = "item", name = "heat-pipe-3", amount = 25 })
    bobmods.lib.recipe.set_ingredient("nuclear-reactor-2", { type = "item", name = "steel-plate", amount = 250 })
  elseif data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-2", "copper-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "zinc-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-2", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-2", "tungsten-processing")
  end

  if data.raw.item["bob-lead-plate"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-2", "concrete", "bob-lead-plate")
  end

  if data.raw.item["heat-pipe-4"] then
    bobmods.lib.recipe.remove_ingredient("nuclear-reactor-3", "copper-plate")
    bobmods.lib.recipe.add_ingredient("nuclear-reactor-3", { type = "item", name = "heat-pipe-4", amount = 25 })
    bobmods.lib.recipe.set_ingredient("nuclear-reactor-3", { type = "item", name = "steel-plate", amount = 250 })
  elseif data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "copper-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-3", "tungsten-alloy-processing")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "steel-plate", "bob-tungsten-carbide")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-nuclear-power-3", "advanced-processing-unit")
  end

  if data.raw.item["bob-lead-plate"] then
    bobmods.lib.recipe.replace_ingredient("nuclear-reactor-3", "concrete", "bob-lead-plate")
  end
end
