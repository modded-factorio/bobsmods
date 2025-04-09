if mods["IndustrialRevolution"] then
  for _, recipe_name in pairs({
    "bob-module-case",
    "bob-module-circuit-board",
    "bob-module-contact",
    "bob-speed-processor",
    "bob-efficiency-processor",
    "bob-productivity-processor",
    "bob-pollution-clean-processor",
    "bob-pollution-create-processor",
  }) do
    bobmods.lib.tech.add_recipe_unlock("ir2-modules-1", recipe_name)
  end
  for _, recipe_name in pairs({
    "bob-module-processor-board",
  }) do
    bobmods.lib.tech.add_recipe_unlock("ir2-modules-2", recipe_name)
  end
  for _, recipe_name in pairs({
    "bob-module-processor-board-2",
    "bob-module-processor-board-3",
    "bob-speed-processor-2",
    "bob-productivity-processor-2",
    "bob-efficiency-processor-2",
  }) do
    bobmods.lib.tech.add_recipe_unlock("ir2-modules-3", recipe_name)
  end
end
