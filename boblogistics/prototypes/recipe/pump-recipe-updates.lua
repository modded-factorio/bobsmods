if data.raw.item["bob-copper-pipe"] then
  bobmods.lib.recipe.replace_ingredient("pump", "pipe", "bob-copper-pipe")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-2", "bob-aluminium-processing")
end

if data.raw.item["bob-bronze-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-2", "bob-copper-pipe", "bob-bronze-pipe")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "bob-titanium-processing")
end

if data.raw.item["bob-brass-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "bob-copper-pipe", "bob-brass-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "bob-zinc-processing")
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "bob-nitinol-processing")
end

if data.raw.item["bob-copper-tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-4", "bob-copper-pipe", "bob-copper-tungsten-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "bob-tungsten-alloy-processing")
end
