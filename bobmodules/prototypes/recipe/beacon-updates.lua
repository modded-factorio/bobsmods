bobmods.lib.tech.remove_prerequisite("effect-transmission", "advanced-electronics-2")


if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("beacon-2", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-2", "aluminium-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("beacon-2", "copper-cable", "tinned-copper-cable")
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("beacon-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "titanium-processing")
end

if data.raw.item["gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("beacon-3", "copper-plate", "gold-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "gold-processing")
end

if data.raw.item["insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient("beacon-3", "copper-cable", "insulated-cable")
end


if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("beacon-3", "electronic-circuit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "advanced-electronics-3")
end

