if mods["IndustrialRevolution"] then
  for _, recipe_name in pairs({
    "module-case",
    "module-circuit-board",
    "module-contact",
    "module-processor-board",
    "speed-processor",
    "effectivity-processor",
    "productivity-processor",
    "pollution-clean-processor",
    "pollution-create-processor",
  }) do
    bobmods.lib.tech.add_recipe_unlock("ir2-modules-1", recipe_name)
  end
  for _, recipe_name in pairs({
    "module-processor-board-2",
    "module-processor-board-3",
    "speed-processor-2",
    "productivity-processor-2",
    "effectivity-processor-2",
  }) do
    bobmods.lib.tech.add_recipe_unlock("ir2-modules-3", recipe_name)
  end
end
