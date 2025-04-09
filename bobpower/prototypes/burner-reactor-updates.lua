if settings.startup["bobmods-power-heatsources"].value == true then
  if
    settings.startup["bobmods-assembly-oilfurnaces"]
    and settings.startup["bobmods-assembly-oilfurnaces"].value == true
  then
    if data.raw.item["bob-steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor-from-fluid-furnace", "pipe", "bob-steel-pipe")
    end
  end
  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor", "pipe", "bob-steel-pipe")
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-burner-reactor-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-burner-reactor-2", "bob-invar-processing")
  end

  if data.raw.item["bob-brass-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor-2", "pipe", "bob-brass-pipe")
    bobmods.lib.tech.add_prerequisite("bob-burner-reactor-2", "bob-zinc-processing")
  elseif data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor-2", "pipe", "bob-steel-pipe")
  end
end
