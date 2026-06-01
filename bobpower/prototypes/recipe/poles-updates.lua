if settings.startup["bobmods-power-poles"].value == true then
  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-substation-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-2", "bob-aluminium-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-2", "bob-aluminium-processing")
  end

  if data.raw.item["bob-tinned-copper-cable"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-2", "copper-plate", "bob-tinned-copper-cable")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-2", "copper-plate", "bob-tinned-copper-cable")
    bobmods.lib.recipe.replace_ingredient("bob-substation-2", "copper-plate", "bob-tinned-copper-cable")
  elseif data.raw.item["bob-tin-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-2", "copper-plate", "bob-tin-plate")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-2", "copper-plate", "bob-tin-plate")
    bobmods.lib.recipe.replace_ingredient("bob-substation-2", "copper-plate", "bob-tin-plate")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-substation-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-3", "bob-titanium-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-insulated-cable"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-3", "copper-plate", "bob-insulated-cable")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-3", "copper-plate", "bob-insulated-cable")
    bobmods.lib.recipe.replace_ingredient("bob-substation-3", "copper-plate", "bob-insulated-cable")
  elseif data.raw.item["bob-silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-3", "copper-plate", "bob-silver-plate")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-3", "copper-plate", "bob-silver-plate")
    bobmods.lib.recipe.replace_ingredient("bob-substation-3", "copper-plate", "bob-silver-plate")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-substation-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-4", "bob-advanced-processing-unit")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-substation-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-4", "bob-nitinol-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-4", "bob-nitinol-processing")
  end

  if data.raw.item["bob-gilded-copper-cable"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-4", "copper-plate", "bob-gilded-copper-cable")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-4", "copper-plate", "bob-gilded-copper-cable")
    bobmods.lib.recipe.replace_ingredient("bob-substation-4", "copper-plate", "bob-gilded-copper-cable")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-4", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-4", "bob-advanced-processing-unit")
  elseif data.raw.item["bob-gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-4", "copper-plate", "bob-gold-plate")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-4", "copper-plate", "bob-gold-plate")
    bobmods.lib.recipe.replace_ingredient("bob-substation-4", "copper-plate", "bob-gold-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-4", "bob-gold-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-4", "bob-gold-processing")
  end
end
