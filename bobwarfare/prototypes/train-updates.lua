if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-2", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-2", "invar-processing")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-2", {"steel-bearing", 8})
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-2", {"iron-gear-wheel", 8})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-2", "pipe", "steel-pipe")
end



if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", {"tungsten-carbide", 10})
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "tungsten-alloy-processing")
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", {"steel-plate", 10})
end

if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", {"silicon-nitride", 10})
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "ceramics")
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", {"steel-plate", 10})
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "titanium-processing")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", {"titanium-bearing", 8})
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", {"iron-gear-wheel", 8})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "iron-gear-wheel", "titanium-gear-wheel")
end

if data.raw.item["titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "pipe", "titanium-pipe")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "advanced-electronics-3")
end





