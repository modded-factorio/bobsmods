bobmods.lib.tech.remove_science_pack("effect-transmission", "utility-science-pack")
bobmods.lib.tech.remove_science_pack("effect-transmission", "production-science-pack")

bobmods.lib.tech.remove_prerequisite("effect-transmission", "processing-unit")
bobmods.lib.tech.remove_prerequisite("effect-transmission", "production-science-pack")
bobmods.lib.tech.add_prerequisite("effect-transmission", "modules")
bobmods.lib.tech.add_prerequisite("effect-transmission", "chemical-science-pack")

if mods["bobplates"] then
  bobmods.lib.recipe.replace_ingredient("beacon", "steel-plate", "bob-cobalt-steel-alloy")
  bobmods.lib.tech.add_prerequisite("effect-transmission", "bob-cobalt-processing")

  bobmods.lib.recipe.replace_ingredient("bob-beacon-2", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-2", "bob-titanium-processing")

  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "steel-plate", "tungsten-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "bob-tungsten-processing")

  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "copper-plate", "bob-gold-plate")
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "bob-gold-processing")
end

if data.raw.item["bob-tinned-copper-cable"] then
  bobmods.lib.recipe.replace_ingredient("beacon", "copper-cable", "bob-tinned-copper-cable")
end

if data.raw.item["bob-insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-2", "copper-cable", "bob-insulated-cable")
end

if data.raw.item["bob-insulated-cable"] then
  bobmods.lib.recipe.replace_ingredient("bob-beacon-3", "copper-cable", "bob-gilded-copper-cable")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-beacon-3",
    { type = "item", name = "bob-advanced-processing-unit", amount = 20 }
  )
  bobmods.lib.tech.add_prerequisite("effect-transmission-3", "bob-advanced-processing-unit")
end
