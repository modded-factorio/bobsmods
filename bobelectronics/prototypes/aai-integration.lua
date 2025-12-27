if mods["aai-industry"] then
  if mods["bobgreenhouse"] then
    bobmods.lib.recipe.remove_ingredient("electronic-circuit", "stone-tablet")
    bobmods.lib.recipe.hide("stone-tablet")
    bobmods.lib.item.hide("stone-tablet")
    bobmods.lib.recipe.hide("electronic-circuit-wood")
  else
    bobmods.lib.recipe.remove_ingredient("electronic-circuit", "bob-wooden-board")
    bobmods.lib.recipe.replace_ingredient("bob-basic-circuit-board", "bob-wooden-board", "stone-tablet")
    bobmods.lib.recipe.replace_ingredient("bob-phenolic-board", "wood", "stone-tablet")
    bobmods.lib.recipe.remove_ingredient("electronic-circuit-wood", "wood")
    if mods["quality"] then
      bobmods.lib.recipe.update_recycling_recipe_single("bob-basic-circuit-board")
      bobmods.lib.recipe.update_recycling_recipe_single("bob-phenolic-board")
    end
    if data.raw.item["bob-solder"] then
      bobmods.lib.recipe.add_ingredient("electronic-circuit-wood", { type = "item", name = "bob-solder", amount = 1 })
    end
  end
end
