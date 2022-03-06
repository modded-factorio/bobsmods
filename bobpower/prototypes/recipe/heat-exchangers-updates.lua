if settings.startup["bobmods-power-steam"].value == true then

if data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-2", "steel-plate", "tungsten-plate")
  bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-2", "tungsten-processing")
end

if data.raw.item["ceramic-pipe"] then
  bobmods.lib.recipe.add_ingredient("heat-exchanger-2", {"ceramic-pipe", 4})
  bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-2", "ceramics")
end

if data.raw.item["heat-pipe-2"] then
  bobmods.lib.recipe.add_ingredient("heat-exchanger-2", {"heat-pipe-2", 4})
end



if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.recipe.replace_ingredient("heat-exchanger-3", "steel-plate", "copper-tungsten-alloy")
  bobmods.lib.tech.add_prerequisite("bob-heat-exchanger-3", "tungsten-alloy-processing")
end

if data.raw.item["copper-tungsten-pipe"] then
  bobmods.lib.recipe.add_ingredient("heat-exchanger-3", {"copper-tungsten-pipe", 4})
elseif data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.add_ingredient("heat-exchanger-3", {"tungsten-pipe", 4})
end

if data.raw.item["heat-pipe-3"] then
  bobmods.lib.recipe.add_ingredient("heat-exchanger-3", {"heat-pipe-3", 4})
end

  if settings.startup["bobmods-plates-convert-recipes"] and settings.startup["bobmods-plates-convert-recipes"].value == true then
    if data.raw.item["heat-pipe-2"] then
      bobmods.lib.recipe.replace_ingredient("heat-exchanger-2-from-boiler-4", "heat-pipe", "heat-pipe-2")

      bobmods.lib.recipe.remove_result("boiler-4-from-heat-exchanger-2", "heat-pipe")
      bobmods.lib.recipe.add_result("boiler-4-from-heat-exchanger-2", {"heat-pipe-2", 2})
    end
    if data.raw.item["heat-pipe-3"] then
      bobmods.lib.recipe.replace_ingredient("heat-exchanger-3-from-boiler-5", "heat-pipe", "heat-pipe-3")

      bobmods.lib.recipe.remove_result("boiler-5-from-heat-exchanger-3", "heat-pipe")
      bobmods.lib.recipe.add_result("boiler-5-from-heat-exchanger-3", {"heat-pipe-3", 2})
    end
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-2", "heat-exchanger-2-from-boiler-4")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-3", "heat-exchanger-3-from-boiler-5")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-1", "boiler-3-from-heat-exchanger")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-2", "boiler-4-from-heat-exchanger-2")
    bobmods.lib.tech.add_recipe_unlock("bob-heat-exchanger-3", "boiler-5-from-heat-exchanger-3")
  end

end
