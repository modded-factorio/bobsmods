if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-2", "iron-gear-wheel", "steel-gear-wheel")
end


if data.raw.item["cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-3", "iron-gear-wheel", "cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-3", "cobalt-processing")
end

if data.raw.item["cobalt-steel-alloy"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-3", "steel-plate", "cobalt-steel-alloy")
end


if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-4", "iron-gear-wheel", "titanium-gear-wheel")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("repair-pack-4", {"titanium-bearing", 1})
end

if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-4", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-4", "titanium-processing")
end


if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-5", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-5", "nitinol-processing")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("repair-pack-5", {"nitinol-bearing", 1})
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-5", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-5", "advanced-electronics-3")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("repair-pack-5", "steel-plate", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-5", "tungsten-alloy-processing")
end


