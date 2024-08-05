if settings.startup["bobmods-power-solar"].value == true then
  if data.raw.item["glass"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-2", "steel-plate", "glass")
    bobmods.lib.recipe.replace_ingredient("solar-panel-2", "steel-plate", "glass")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-2", "steel-plate", "glass")
  end

  if data.raw.item["silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-2", "copper-plate", "silver-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-2", "copper-plate", "silver-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-2", "copper-plate", "silver-plate")
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "titanium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "titanium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "titanium-processing")
  else
    if data.raw.item["aluminium-plate"] then
      bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "aluminium-plate")
      bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "aluminium-processing")
    end
  end

  if data.raw.item["silicon-wafer"] then
    bobmods.lib.recipe.add_ingredient("solar-panel-small-3", { type = "item", name = "silicon-wafer", amount = 16 })
    bobmods.lib.recipe.add_ingredient("solar-panel-3", { type = "item", name = "silicon-wafer", amount = 36 })
    bobmods.lib.recipe.add_ingredient("solar-panel-large-3", { type = "item", name = "silicon-wafer", amount = 64 })
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "silicon-processing")
  else
    if data.raw.item["silicon"] then
      bobmods.lib.recipe.add_ingredient("solar-panel-small-3", { type = "item", name = "silicon", amount = 2 })
      bobmods.lib.recipe.add_ingredient("solar-panel-3", { type = "item", name = "silicon", amount = 4 })
      bobmods.lib.recipe.add_ingredient("solar-panel-large-3", { type = "item", name = "silicon", amount = 8 })
      bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "silicon-processing")
    else
      if data.raw.item["silicon-plate"] then
        bobmods.lib.recipe.add_ingredient("solar-panel-small-3", { type = "item", name = "silicon-plate", amount = 2 })
        bobmods.lib.recipe.add_ingredient("solar-panel-3", { type = "item", name = "silicon-plate", amount = 4 })
        bobmods.lib.recipe.add_ingredient("solar-panel-large-3", { type = "item", name = "silicon-plate", amount = 8 })
        bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "silicon-processing")
      end
    end
  end

  if data.raw.item["gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "copper-plate", "gold-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-3", "copper-plate", "gold-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "copper-plate", "gold-plate")
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "gold-processing")
  end
end
