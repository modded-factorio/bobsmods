if settings.startup["bobmods-power-poles"].value == true then

if data.raw.item["brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("medium-electric-pole-2", "steel-plate", "brass-alloy")
  bobmods.lib.recipe.replace_ingredient("big-electric-pole-2", "steel-plate", "brass-alloy")
  bobmods.lib.recipe.replace_ingredient("substation-2", "steel-plate", "brass-alloy")
  bobmods.lib.tech.add_prerequisite("electric-pole-2", "zinc-processing")
  bobmods.lib.tech.add_prerequisite("electric-substation-2", "zinc-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("medium-electric-pole-2", "copper-plate", "tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("big-electric-pole-2", "copper-plate", "tinned-copper-cable")
  bobmods.lib.recipe.replace_ingredient("substation-2", "copper-plate", "tinned-copper-cable")
else
  if data.raw.item["tin-plate"] then
    bobmods.lib.recipe.replace_ingredient("medium-electric-pole-2", "copper-plate", "tin-plate")
    bobmods.lib.recipe.replace_ingredient("big-electric-pole-2", "copper-plate", "tin-plate")
    bobmods.lib.recipe.replace_ingredient("substation-2", "copper-plate", "tin-plate")
  else
  end
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("medium-electric-pole-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("big-electric-pole-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("substation-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("electric-pole-3", "titanium-processing")
  bobmods.lib.tech.add_prerequisite("electric-substation-3", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("medium-electric-pole-3", "steel-plate", "tungsten-plate")
    bobmods.lib.recipe.replace_ingredient("big-electric-pole-3", "steel-plate", "tungsten-plate")
    bobmods.lib.recipe.replace_ingredient("substation-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("electric-pole-3", "tungsten-processing")
    bobmods.lib.tech.add_prerequisite("electric-substation-3", "tungsten-processing")
  end
end

if data.raw.item["insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient("medium-electric-pole-3", "copper-plate", "insulated-cable")
  bobmods.lib.recipe.replace_ingredient("big-electric-pole-3", "copper-plate", "insulated-cable")
  bobmods.lib.recipe.replace_ingredient("substation-3", "copper-plate", "insulated-cable")
else
  if data.raw.item["silver-plate"] then
    bobmods.lib.recipe.replace_ingredient("medium-electric-pole-3", "copper-plate", "silver-plate")
    bobmods.lib.recipe.replace_ingredient("big-electric-pole-3", "copper-plate", "silver-plate")
    bobmods.lib.recipe.replace_ingredient("substation-3", "copper-plate", "silver-plate")
  end
end


if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("substation-4", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("electric-substation-4", "advanced-electronics-3")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("medium-electric-pole-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("big-electric-pole-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("substation-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("electric-pole-4", "nitinol-processing")
  bobmods.lib.tech.add_prerequisite("electric-substation-4", "nitinol-processing")
else
  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("medium-electric-pole-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.recipe.replace_ingredient("big-electric-pole-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.recipe.replace_ingredient("substation-4", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("electric-pole-4", "tungsten-alloy-processing")
    bobmods.lib.tech.add_prerequisite("electric-substation-4", "tungsten-alloy-processing")
  end
end

if data.raw.item["gilded-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("medium-electric-pole-4", "copper-plate", "gilded-copper-cable")
  bobmods.lib.recipe.replace_ingredient("big-electric-pole-4", "copper-plate", "gilded-copper-cable")
  bobmods.lib.recipe.replace_ingredient("substation-4", "copper-plate", "gilded-copper-cable")
  bobmods.lib.tech.add_prerequisite("electric-pole-4", "advanced-electronics-3")
  bobmods.lib.tech.add_prerequisite("electric-substation-4", "advanced-electronics-3")
else
  if data.raw.item["gold-plate"] then
    bobmods.lib.recipe.replace_ingredient("medium-electric-pole-4", "copper-plate", "gold-plate")
    bobmods.lib.recipe.replace_ingredient("big-electric-pole-4", "copper-plate", "gold-plate")
    bobmods.lib.recipe.replace_ingredient("substation-4", "copper-plate", "gold-plate")
    bobmods.lib.tech.add_prerequisite("electric-pole-4", "gold-processing")
    bobmods.lib.tech.add_prerequisite("electric-substation-4", "gold-processing")
  end
end


end
