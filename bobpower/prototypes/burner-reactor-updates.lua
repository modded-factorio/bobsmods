if settings.startup["bobmods-power-heatsources"].value == true then
  if
    settings.startup["bobmods-assembly-oilfurnaces"]
    and settings.startup["bobmods-assembly-oilfurnaces"].value == true
  then
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("fluid-reactor-from-fluid-furnace", "pipe", "steel-pipe")
    end
    if data.raw.item["invar-alloy"] then
      bobmods.lib.recipe.replace_ingredient("fluid-reactor-from-fluid-furnace", "steel-plate", "invar-alloy")
    end
    if not data.raw.item["fluid-furnace"] and data.raw.item["oil-steel-furnace"] then --old assembly mod
      bobmods.lib.recipe.replace_ingredient("fluid-reactor-from-fluid-furnace", "fluid-furnace", "oil-steel-furnace")
    end
  end

  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-3", "pipe", "steel-pipe")
  end
  if data.raw.item["tin-plate"] then
    bobmods.lib.recipe.replace_ingredient("burner-reactor", "steel-plate", "tin-plate")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor", "steel-plate", "tin-plate")
  end

  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "pipe", "bronze-pipe")
    bobmods.lib.recipe.replace_ingredient("burner-reactor-2", "steel-plate", "bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "steel-plate", "bronze-alloy")
    bobmods.lib.tech.add_prerequisite("burner-reactor-2", "alloy-processing")
  end
end
