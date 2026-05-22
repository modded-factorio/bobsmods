if mods["bobplates"] then
  bobmods.lib.recipe.remove_ingredient("storage-tank", "steel-plate")
  bobmods.lib.recipe.replace_ingredient("storage-tank", "iron-plate", "bob-bronze-alloy")
  bobmods.lib.recipe.remove_ingredient("bob-storage-tank-all-corners", "steel-plate")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners", "iron-plate", "bob-bronze-alloy")
  bobmods.lib.tech.add_prerequisite("fluid-handling", "bob-alloy-processing")

  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-2", "bob-aluminium-processing")

  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-3", "steel-plate", "bob-invar-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-3", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "bob-invar-processing")

  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "bob-nitinol-processing")

  if mods["boblogistics"] then
    bobmods.lib.recipe.add_ingredient("storage-tank", { type = "item", name = "bob-bronze-pipe", amount = 2 })
    bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners", "pipe", "bob-bronze-pipe")

    bobmods.lib.recipe.add_ingredient("bob-storage-tank-2", { type = "item", name = "bob-aluminium-pipe", amount = 2 })
    bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-2", "pipe", "bob-aluminium-pipe")

    bobmods.lib.recipe.add_ingredient("bob-storage-tank-3", { type = "item", name = "bob-titanium-pipe", amount = 2 })
    bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-3", "pipe", "bob-titanium-pipe")
    bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "bob-titanium-processing")

    bobmods.lib.recipe.add_ingredient("bob-storage-tank-4", { type = "item", name = "bob-tungsten-pipe", amount = 2 })
    bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-4", "pipe", "bob-tungsten-pipe")
  end
end
