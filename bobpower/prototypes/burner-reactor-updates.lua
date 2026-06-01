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

  if data.raw.item["bob-nickel-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-burner-reactor-2", "steel-plate", "bob-nickel-plate")
    bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor-2", "steel-plate", "bob-nickel-plate")
    bobmods.lib.tech.add_prerequisite("bob-burner-reactor-2", "bob-nickel-processing")
  end

  if data.raw.item["bob-aluminium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-fluid-reactor-2", "pipe", "bob-aluminium-pipe")
    bobmods.lib.tech.add_prerequisite("bob-burner-reactor-2", "bob-aluminium-processing")
  end
end
