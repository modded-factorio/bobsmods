if settings.startup["bobmods-assembly-furnaces"].value == true and data.raw.furnace["electric-furnace"] then
  data.raw.furnace["electric-furnace"].next_upgrade = "bob-electric-furnace-2"
  data.raw.furnace["bob-electric-furnace-2"].next_upgrade = "bob-electric-furnace-3"

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-furnace-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-3", "bob-invar-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-furnace-2", "stone-brick", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-3", "bob-tungsten-processing")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-furnace-3", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-4", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-furnace-3", "stone-brick", "bob-tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-4", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-furnace-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("advanced-material-processing-4", "bob-advanced-processing-unit")
  end
end
