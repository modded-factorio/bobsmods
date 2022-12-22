if settings.startup["bobmods-assembly-furnaces"].value == true and data.raw.furnace["electric-furnace"] then
  data.raw.furnace["electric-furnace"].next_upgrade = "electric-furnace-2"
  data.raw.furnace["electric-furnace-2"].next_upgrade = "electric-furnace-3"

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electric-furnace-2", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-3", "invar-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("electric-furnace-2", "stone-brick", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-3", "tungsten-processing")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electric-furnace-3", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-4", "tungsten-alloy-processing")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("electric-furnace-3", "stone-brick", "tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-4", "tungsten-alloy-processing")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("electric-furnace-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-4", "advanced-electronics-3")
  end
end
