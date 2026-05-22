if data.raw.item["bob-cobalt-steel-alloy"] then
  bobmods.lib.recipe.replace_ingredient("artillery-wagon", "steel-plate", "bob-cobalt-steel-alloy")
  bobmods.lib.tech.add_prerequisite("artillery", "bob-cobalt-processing")
end

if data.raw.item["bob-cobalt-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("artillery-wagon", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
  bobmods.lib.tech.add_prerequisite("artillery", "bob-cobalt-processing")
end

if data.raw.item["bob-aluminium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("artillery-wagon", "pipe", "bob-aluminium-pipe")
  bobmods.lib.tech.add_prerequisite("artillery", "bob-aluminium-processing")
end

if data.raw.item["bob-invar-alloy"] then
  bobmods.lib.recipe.remove_ingredient("bob-artillery-wagon-2", "steel-plate")
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-2", { type = "item", name = "bob-invar-alloy", amount = 20 })
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-2", "bob-invar-processing")
end

if data.raw.item["bob-silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-artillery-wagon-2",
    { type = "item", name = "bob-silicon-nitride", amount = 20 }
  )
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-2", "bob-ceramics")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-artillery-wagon-2",
    { type = "item", name = "bob-titanium-bearing", amount = 8 }
  )
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-2", "bob-titanium-processing")
elseif data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-2", { type = "item", name = "bob-steel-bearing", amount = 8 })
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-2", { type = "item", name = "iron-gear-wheel", amount = 8 })
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
end

if data.raw.item["bob-titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-2", "pipe", "bob-titanium-pipe")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", { type = "item", name = "tungsten-carbide", amount = 20 })
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "bob-tungsten-processing")
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", { type = "item", name = "steel-plate", amount = 20 })
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "bob-nitinol-processing")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-artillery-wagon-3",
    { type = "item", name = "bob-nitinol-bearing", amount = 8 }
  )
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "bob-nitinol-processing")
else
  bobmods.lib.recipe.add_ingredient("bob-artillery-wagon-3", { type = "item", name = "iron-gear-wheel", amount = 8 })
end

if data.raw.item["bob-nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "bob-nitinol-processing")
end

if data.raw.item["bob-tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "pipe", "bob-tungsten-pipe")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "bob-tungsten-processing")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-artillery-wagon-3", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-3", "bob-advanced-processing-unit")
end
