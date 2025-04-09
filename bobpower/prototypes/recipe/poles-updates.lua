if settings.startup["bobmods-power-poles"].value == true then
  if data.raw.item["bob-brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-2", "steel-plate", "bob-brass-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-2", "steel-plate", "bob-brass-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-substation-2", "steel-plate", "bob-brass-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-2", "bob-zinc-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-2", "bob-zinc-processing")
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
  elseif data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-3", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-3", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.recipe.replace_ingredient("bob-substation-3", "steel-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-3", "bob-tungsten-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-3", "bob-tungsten-processing")
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
  elseif data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-medium-electric-pole-4", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-big-electric-pole-4", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-substation-4", "steel-plate", "bob-copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-4", "bob-tungsten-alloy-processing")
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-4", "bob-tungsten-alloy-processing")
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
