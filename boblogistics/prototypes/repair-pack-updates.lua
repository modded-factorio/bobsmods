if data.raw.technology["bob-electronics"] then
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-2", "bob-electronics")
end

if data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-2", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-3", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-3", "bob-cobalt-processing")
end

if data.raw.item["bob-cobalt-steel-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-3", "steel-plate", "bob-cobalt-steel-alloy")
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-4", "iron-gear-wheel", "bob-titanium-gear-wheel")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-repair-pack-4", { type = "item", name = "bob-titanium-bearing", amount = 1 })
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-4", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-4", "bob-titanium-processing")
end

if data.raw.item["bob-nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-5", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-5", "bob-nitinol-processing")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-repair-pack-5", { type = "item", name = "bob-nitinol-bearing", amount = 1 })
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-5", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-5", "bob-advanced-processing-unit")
end

if data.raw.item["bob-tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-repair-pack-5", "steel-plate", "bob-tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("bob-repair-pack-5", "bob-tungsten-alloy-processing")
end
