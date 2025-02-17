if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-2", "steel-plate", "bob-invar-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-2", "steel-plate", "bob-invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-2", "bob-invar-processing")
end

if data.raw.item["bob-steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-2", "pipe", "bob-steel-pipe")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-3", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-3", "bob-titanium-processing")
end

if data.raw.item["bob-titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-3", "pipe", "bob-titanium-pipe")
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-4", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-fluid-handling-4", "bob-nitinol-processing")
end

if data.raw.item["bob-nitinol-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-storage-tank-all-corners-4", "pipe", "bob-nitinol-pipe")
end
