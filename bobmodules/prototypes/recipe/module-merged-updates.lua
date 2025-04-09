if settings.startup["bobmods-modules-enablegodmodules"].value == true then
  if data.raw.item["bob-alien-artifact-red"] then
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact", amount = 7 })
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-blue", amount = 7 })
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module",
      { type = "item", name = "bob-alien-artifact-orange", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module",
      { type = "item", name = "bob-alien-artifact-purple", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module",
      { type = "item", name = "bob-alien-artifact-yellow", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module",
      { type = "item", name = "bob-alien-artifact-green", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact-red", amount = 7 })
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact-blue", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact-orange", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact-purple", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact-yellow", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact-green", amount = 7 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact-red", amount = 7 }
    )
  elseif data.raw.item["bob-alien-artifact"] then
    bobmods.lib.recipe.add_ingredient("bob-god-module", { type = "item", name = "bob-alien-artifact", amount = 50 })
    bobmods.lib.recipe.add_ingredient(
      "bob-god-module-productivity",
      { type = "item", name = "bob-alien-artifact", amount = 50 }
    )
  end

  if mods["quality"] then
    if data.raw.item["bob-alien-artifact-red"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact", amount = 7 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact-blue", amount = 7 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact-orange", amount = 7 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact-purple", amount = 7 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact-yellow", amount = 7 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact-green", amount = 7 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact-red", amount = 7 }
      )
    elseif data.raw.item["bob-alien-artifact"] then
      bobmods.lib.recipe.add_ingredient(
        "bob-god-module-quality",
        { type = "item", name = "bob-alien-artifact", amount = 50 }
      )
    end
  end
end
