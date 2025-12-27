-- Krastorio2 fixes
if mods["Krastorio2"] then
  data.raw.pump.pump.fast_replaceable_group = "pipe"
  if
    settings.startup["bobmods-logistics-inserteroverhaul"].value == true and data.raw.inserter["long-handed-inserter"]
  then
    data.raw.inserter["long-handed-inserter"].fast_replaceable_group = "inserter"
  end
end

if mods["aai-industry"] then
  if data.raw.technology["logistics-0"] then
    data.raw.technology["logistics-0"].localised_name = { "", { "technology-name.logistics" }, " 0" }
    bobmods.lib.tech.add_recipe_unlock("logistics", "transport-belt")
    bobmods.lib.tech.remove_recipe_unlock("basic-logistics", "transport-belt")
    bobmods.lib.tech.remove_prerequisite("logistics-0", "basic-logistics")
    bobmods.lib.tech.add_prerequisite("logistics-0", "burner-mechanics")
    bobmods.lib.tech.add_recipe_unlock("logistics-0", "copper-cable")
    bobmods.lib.tech.remove_prerequisite("basic-logistics", "burner-mechanics")
    bobmods.lib.tech.remove_prerequisite("logistics", "basic-logistics")
    data.raw.recipe["transport-belt"].ingredients = {
      { type = "item", name = "bob-basic-transport-belt", amount = 1 },
      { type = "item", name = "iron-plate", amount = 2 },
      { type = "item", name = "motor", amount = 2 },
    }
    data.raw.recipe["underground-belt"].ingredients = {
      { type = "item", name = "bob-basic-underground-belt", amount = 1 },
      { type = "item", name = "iron-plate", amount = 14 },
      { type = "item", name = "motor", amount = 20 },
    }
    data.raw.recipe.splitter.ingredients = {
      { type = "item", name = "bob-basic-splitter", amount = 1 },
      { type = "item", name = "iron-plate", amount = 8 },
      { type = "item", name = "motor", amount = 4 },
    }
    if mods["bobplates"] then
      bobmods.lib.recipe.replace_ingredient("transport-belt", "iron-plate", "bob-tin-plate")
      bobmods.lib.recipe.replace_ingredient("underground-belt", "iron-plate", "bob-tin-plate")
      bobmods.lib.recipe.replace_ingredient("splitter", "iron-plate", "bob-tin-plate")
    end
    if mods["quality"] then
      bobmods.lib.recipe.update_recycling_recipe_single("transport-belt")
      bobmods.lib.recipe.update_recycling_recipe_single("underground-belt")
      bobmods.lib.recipe.update_recycling_recipe_single("splitter")
    end
  end
end
