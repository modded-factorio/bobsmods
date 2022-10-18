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
    bobmods.lib.recipe.replace_ingredient("fluid-reactor", "pipe", "steel-pipe")
  end
  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("burner-reactor", "steel-plate", "invar-alloy")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("burner-reactor-1", "invar-processing")
  end

  if data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "pipe", "tungsten-pipe")
  end
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("burner-reactor-2", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("burner-reactor-2", "tungsten-processing")
    bobmods.lib.tech.remove_prerequisite("burner-reactor-2", "chemical-science-pack")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-2", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("fluid-reactor-2", "tungsten-processing")
    bobmods.lib.tech.remove_prerequisite("fluid-reactor-2", "chemical-science-pack")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-3", "pipe", "copper-tungsten-pipe")
  end
  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("burner-reactor-3", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("burner-reactor-3", "tungsten-alloy-processing")
    bobmods.lib.tech.remove_prerequisite("burner-reactor-3", "production-science-pack")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-3", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("fluid-reactor-3", "tungsten-alloy-processing")
    bobmods.lib.tech.remove_prerequisite("fluid-reactor-3", "production-science-pack")
  end
  if data.raw.item["silicon-nitride"] then
    bobmods.lib.recipe.replace_ingredient("burner-reactor-3", "concrete", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("burner-reactor-3", "ceramics")
    bobmods.lib.recipe.replace_ingredient("fluid-reactor-3", "concrete", "silicon-nitride")
    bobmods.lib.tech.add_prerequisite("fluid-reactor-3", "ceramics")
  end
end
