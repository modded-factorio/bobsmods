if settings.startup["bobmods-power-heatsources"].value == true then
  if
    settings.startup["bobmods-assembly-oilfurnaces"]
    and settings.startup["bobmods-assembly-oilfurnaces"].value == true
  then
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("fluid-reactor-from-fluid-furnace", "pipe", "steel-pipe")
    end
  end
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor", "pipe", "steel-pipe")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("burner-reactor-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("burner-reactor-2", "invar-processing")
  end

  if data.raw.item["brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "pipe", "brass-pipe")
    bobmods.lib.tech.add_prerequisite("burner-reactor-2", "zinc-processing")
  elseif data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "pipe", "steel-pipe")
  end
end
