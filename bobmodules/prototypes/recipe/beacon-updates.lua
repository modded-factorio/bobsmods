bobmods.lib.tech.remove_science_pack("effect-transmission", "utility-science-pack")
bobmods.lib.tech.remove_science_pack("effect-transmission", "production-science-pack")

bobmods.lib.tech.remove_prerequisite("effect-transmission", "processing-unit")
bobmods.lib.tech.remove_prerequisite("effect-transmission", "production-science-pack")
bobmods.lib.tech.add_prerequisite("effect-transmission", "modules")
bobmods.lib.tech.add_prerequisite("effect-transmission", "chemical-science-pack")

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-2", "aluminium-processing")
end

if data.raw.item["tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-2", "copper-cable", "tinned-copper-cable")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "titanium-processing")
end

if data.raw.item["bob-gold-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "copper-plate", "bob-gold-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "gold-processing")
end

if data.raw.item["insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "copper-cable", "insulated-cable")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "electronic-circuit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "advanced-processing-unit")
end
