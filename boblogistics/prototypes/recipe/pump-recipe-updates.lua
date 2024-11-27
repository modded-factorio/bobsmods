if data.raw.item["copper-pipe"] then
  bobmods.lib.recipe.replace_ingredient("pump", "pipe", "copper-pipe")
end

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-2", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-2", "aluminium-processing")
end

if data.raw.item["bronze-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-2", "copper-pipe", "bronze-pipe")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "titanium-processing")
end

if data.raw.item["brass-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-3", "copper-pipe", "brass-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "zinc-processing")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "nitinol-processing")
end

if data.raw.item["copper-tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-pump-4", "copper-pipe", "copper-tungsten-pipe")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "tungsten-alloy-processing")
end
