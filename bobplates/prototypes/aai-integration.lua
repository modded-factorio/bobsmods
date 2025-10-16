if mods["aai-industry"] then
  bobmods.lib.item.set_subgroup("stone-tablet", "bob-resource")
  bobmods.lib.item.set_subgroup("sand", "bob-resource")
  bobmods.lib.item.set_subgroup("glass", "bob-resource")
  bobmods.lib.recipe.hide("glass")
  bobmods.lib.item.hide("glass")
  data.raw.recipe["bob-glass"].ingredients = {{ type = "item", name = "sand", amount = 3 }}
  data.raw.recipe["glass"].ingredients = nil
  data.raw.recipe["glass"].results = nil
  data.raw.recipe["glass"].main_product = nil
  data.raw.recipe["glass"].icon = "__bobplates__/graphics/icons/glass.png"
  bobmods.lib.recipe.replace_ingredient("sand", "stone", "bob-quartz")
  if mods["bobassembly"] then
    bobmods.lib.recipe.remove_ingredient("chemical-plant", "glass")
  end
  if mods["bobpower"] then
    bobmods.lib.recipe.remove_ingredient("solar-panel", "glass")
  end
  bobmods.lib.recipe.replace_ingredient_in_all("glass", "bob-glass")
  if mods["quality"] then
    data.raw.recipe["glass-recycling"].ingredients[1].name = "glass"
    data.raw.recipe["glass-recycling"].results[1].name = "bob-glass"
    bobmods.lib.recipe.update_recycling_recipe({
      "chemical-plant",
      "oil-refinery",
      "solar-panel",
      "lab",
      "satellite",
      "laser-turret",
    })
  end
  data.raw.recipe["bob-glass"].enabled = false
  bobmods.lib.tech.remove_recipe_unlock("glass-processing", "glass")
  bobmods.lib.tech.add_recipe_unlock("glass-processing", "bob-glass")
  if mods["bobtech"] then
    data.raw.technology["sand-processing"].research_trigger = { type = "mine-entity", entity = "bob-quartz" }
    data.raw.technology["sand-processing"].unit = nil
    data.raw.technology["glass-processing"].research_trigger = { type = "craft-item", item = "sand", count = 10 }
    data.raw.technology["glass-processing"].unit = nil
    bobmods.lib.tech.remove_prerequisite("electric-lab", "glass-processing")
    bobmods.lib.tech.remove_prerequisite("lamp", "glass-processing")
    bobmods.lib.tech.remove_prerequisite("oil-processing", "glass-processing")
    bobmods.lib.tech.remove_prerequisite("sand-processing", "automation-science-pack")
    bobmods.lib.tech.add_prerequisite("automation-science-pack", "glass-processing")
  end
end