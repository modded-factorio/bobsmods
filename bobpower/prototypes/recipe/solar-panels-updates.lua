if settings.startup["bobmods-power-solar"].value == true then
  if data.raw.item["bob-glass"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-2", "steel-plate", "bob-glass")
    bobmods.lib.recipe.replace_ingredient("solar-panel-2", "steel-plate", "bob-glass")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-2", "steel-plate", "bob-glass")
  end

  if data.raw.item["bob-silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-2", "copper-plate", "bob-silver-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-2", "copper-plate", "bob-silver-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-2", "copper-plate", "bob-silver-plate")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "titanium-processing")
  else
    if data.raw.item["bob-aluminium-plate"] then
      bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "aluminium-processing")
    end
  end

  if data.raw.item["silicon-wafer"] then
    bobmods.lib.recipe.add_ingredient("solar-panel-small-3", { type = "item", name = "silicon-wafer", amount = 16 })
    bobmods.lib.recipe.add_ingredient("solar-panel-3", { type = "item", name = "silicon-wafer", amount = 36 })
    bobmods.lib.recipe.add_ingredient("solar-panel-large-3", { type = "item", name = "silicon-wafer", amount = 64 })
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "silicon-processing")
  elseif data.raw.item["bob-silicon-plate"] then
    bobmods.lib.recipe.add_ingredient("solar-panel-small-3", { type = "item", name = "bob-silicon-plate", amount = 2 })
    bobmods.lib.recipe.add_ingredient("solar-panel-3", { type = "item", name = "bob-silicon-plate", amount = 4 })
    bobmods.lib.recipe.add_ingredient("solar-panel-large-3", { type = "item", name = "bob-silicon-plate", amount = 8 })
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "silicon-processing")
  end

  if data.raw.item["bob-gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "copper-plate", "bob-gold-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-3", "copper-plate", "bob-gold-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "copper-plate", "bob-gold-plate")
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "gold-processing")
  end
end
