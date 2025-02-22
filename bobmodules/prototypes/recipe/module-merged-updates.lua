if settings.startup["bobmods-modules-enablegreenmodules"].value == true then
  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-green-module-4", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.recipe.add_ingredient(
      "bob-green-module-5",
      { type = "item", name = "bob-advanced-processing-unit", amount = 8 }
    )
  else
    bobmods.lib.recipe.add_ingredient("bob-green-module-4", { type = "item", name = "advanced-circuit", amount = 5 })
    bobmods.lib.recipe.add_ingredient("bob-green-module-5", { type = "item", name = "processing-unit", amount = 8 })
  end

  if data.raw.item["bob-alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("bob-green-module-1", { type = "item", name = "bob-alien-artifact", amount = 3 })
    if data.raw.item["bob-alien-artifact-red"] then
      bobmods.lib.recipe.add_ingredient("bob-green-module-2", { type = "item", name = "bob-alien-artifact-blue", amount = 3 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-3", { type = "item", name = "bob-alien-artifact-orange", amount = 3 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-4", { type = "item", name = "bob-alien-artifact-purple", amount = 3 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-4", { type = "item", name = "bob-alien-artifact-yellow", amount = 3 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-5", { type = "item", name = "bob-alien-artifact-green", amount = 3 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-5", { type = "item", name = "bob-alien-artifact-red", amount = 3 })
    else
      bobmods.lib.recipe.add_ingredient("bob-green-module-2", { type = "item", name = "bob-alien-artifact", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-3", { type = "item", name = "bob-alien-artifact", amount = 12 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-4", { type = "item", name = "bob-alien-artifact", amount = 18 })
      bobmods.lib.recipe.add_ingredient("bob-green-module-5", { type = "item", name = "bob-alien-artifact", amount = 25 })
    end
  end

end

if settings.startup["bobmods-modules-enablegodmodules"].value == true then

  if data.raw.item["bob-alien-artifact-red"] then
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-blue", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-orange", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-purple", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-yellow", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-green", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-red", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-blue", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-blue", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-orange", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-purple", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-yellow", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-green", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact-red", amount = 7 })
  elseif data.raw.item["bob-alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact", amount = 50 })
    bobmods.lib.recipe.add_ingredient("bob-god-module-productivity", { type = "item", name = "bob-alien-artifact", amount = 50 })
  end

  if mods["quality"] then
    if data.raw.item["bob-alien-artifact-red"] then
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact-blue", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact-orange", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact-purple", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact-yellow", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact-green", amount = 7 })
      bobmods.lib.recipe.add_ingredient("bob-god-module-quality", { type = "item", name = "bob-alien-artifact-red", amount = 7 })
    elseif data.raw.item["bob-alien-artifact"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact", amount = 50 }
      )
    end
  end
end
