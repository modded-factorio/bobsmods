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
  bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "titanium-processing")
else
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "aluminium-processing")
  end
end

if data.raw.item["silicon-wafer"] then
  bobmods.lib.recipe.add_ingredient("solar-panel-small-3", {"silicon-wafer", 16})
  bobmods.lib.recipe.add_ingredient("solar-panel-3", {"silicon-wafer", 36})
  bobmods.lib.recipe.add_ingredient("solar-panel-large-3", {"silicon-wafer", 64})
  bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "silicon-processing")
else
  if data.raw.item["silicon"] then
    bobmods.lib.recipe.add_ingredient("solar-panel-small-3", {"silicon", 2})
    bobmods.lib.recipe.add_ingredient("solar-panel-3", {"silicon", 4})
    bobmods.lib.recipe.add_ingredient("solar-panel-large-3", {"silicon", 8})
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "silicon-processing")
  else
    if data.raw.item["silicon-plate"] then
      bobmods.lib.recipe.add_ingredient("solar-panel-small-3", {"silicon-plate", 2})
      bobmods.lib.recipe.add_ingredient("solar-panel-3", {"silicon-plate", 4})
      bobmods.lib.recipe.add_ingredient("solar-panel-large-3", {"silicon-plate", 8})
      bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "silicon-processing")
    end
  end
end

if data.raw.item["gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "copper-plate", "gold-plate")
  bobmods.lib.recipe.replace_ingredient("solar-panel-3", "copper-plate", "gold-plate")
  bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "copper-plate", "gold-plate")
  bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "gold-processing")
end

end


