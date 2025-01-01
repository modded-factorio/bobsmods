if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("bob-green-module-1", { type = "item", name = "solder", amount = 1 })
    bobmods.lib.recipe.add_ingredient("bob-green-module-2", { type = "item", name = "solder", amount = 2 })
    bobmods.lib.recipe.add_ingredient("bob-green-module-3", { type = "item", name = "solder", amount = 3 })
    bobmods.lib.recipe.add_ingredient("bob-green-module-4", { type = "item", name = "solder", amount = 4 })
    bobmods.lib.recipe.add_ingredient("bob-green-module-5", { type = "item", name = "solder", amount = 5 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-green-module-4", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.add_ingredient(
      "bob-green-module-5",
      { type = "item", name = "advanced-processing-unit", amount = 8 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-green-module-4", { type = "item", name = "advanced-circuit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("bob-green-module-5", { type = "item", name = "processing-unit", amount = 8 })
  end
end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  if data.raw.item["solder"] then
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "solder", amount = 15 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "solder", amount = 15 })
  end

  if data.raw.item["alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "alien-artifact", amount = 10 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "alien-artifact", amount = 10 })
  end

  if mods["quality"] then
    if data.raw.item["solder"] then
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "solder", amount = 15 })
    end

    if data.raw.item["alien-artifact"] then
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "alien-artifact", amount = 10 })
    end
  end
end
