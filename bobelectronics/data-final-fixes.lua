if mods["aai-industry"] then
  bobmods.lib.tech.remove_recipe_unlock("electronics", "electronic-circuit-wood")
  bobmods.lib.tech.remove_recipe_unlock("electronics", "electronic-circuit")
  bobmods.lib.tech.add_recipe_unlock("bob-electronics", "electronic-circuit")
  if mods["bobgreenhouse"] then
    bobmods.lib.tech.remove_recipe_unlock("electronics", "stone-tablet")
  else
    bobmods.lib.tech.add_recipe_unlock("bob-electronics", "electronic-circuit-wood")
  end
end
