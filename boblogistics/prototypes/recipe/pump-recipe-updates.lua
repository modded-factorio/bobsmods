if mods["bobplates"] then
  bobmods.lib.recipe.replace_ingredient("pump", "steel-plate", "bob-bronze-alloy")
  bobmods.lib.recipe.replace_ingredient("pump", "pipe", "bob-bronze-pipe")
  bobmods.lib.tech.add_prerequisite("fluid-handling", "bob-alloy-processing")

  bobmods.lib.recipe.replace_ingredient("bob-pump-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-pump-2", "pipe", "bob-aluminium-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-2", "bob-aluminium-processing")

  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "steel-plate", "bob-brass-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "pipe", "bob-brass-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "bob-brass-processing")

  bobmods.lib.recipe.replace_ingredient("bob-pump-4", "steel-plate", "bob-copper-tungsten-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-pump-4", "pipe", "bob-copper-tungsten-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "bob-tungsten-processing")
end
