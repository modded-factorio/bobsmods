local aailoaderssize = false
if mods["aai-loaders"] and settings.startup["aai-loaders-fit-assemblers"].value == true then
  aailoaderssize = true
end

if settings.startup["bobmods-assembly-burner"].value == true then
  bobmods.lib.tech.add_recipe_unlock("steam-power", "bob-steam-assembling-machine")
end

data.raw.technology["automation-2"].prerequisites = { "automation", "electronics" }
bobmods.lib.tech.add_prerequisite("automation-2", "steel-processing")
bobmods.lib.tech.add_prerequisite("automation-2", "logistic-science-pack")

data.raw.technology["automation-3"].prerequisites = {
  "automation-2",
  "advanced-circuit",
  "chemical-science-pack",
}
bobmods.lib.tech.set_science_pack_count("automation-3", 60)
data.raw.technology["automation-3"].unit.ingredients = {
  { "automation-science-pack", 1 },
  { "logistic-science-pack", 1 },
  { "chemical-science-pack", 1 },
}
data.raw.technology["automation-3"].unit.time = 30

bobmods.lib.item.set_subgroup("assembling-machine-1", "bob-assembly-machine")
bobmods.lib.item.set_subgroup("assembling-machine-2", "bob-assembly-machine")
bobmods.lib.item.set_subgroup("assembling-machine-3", "bob-assembly-machine")

data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "100kW"
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "135kW"
data.raw["assembling-machine"]["assembling-machine-3"].energy_usage = "210kW"

data.raw.recipe["assembling-machine-3"].ingredients = {
  { type = "item", name = "assembling-machine-2", amount = 1 },
  { type = "item", name = "steel-plate", amount = 9 },
  { type = "item", name = "advanced-circuit", amount = 3 },
}

if data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.add_ingredient(
    "assembling-machine-3",
    { type = "item", name = "bob-steel-gear-wheel", amount = 5 }
  )
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-3", { type = "item", name = "iron-gear-wheel", amount = 5 })
end

data.raw["assembling-machine"]["assembling-machine-3"].module_slots = 3
data.raw["assembling-machine"]["assembling-machine-3"].next_upgrade = "bob-assembling-machine-4"
data.raw["assembling-machine"]["assembling-machine-3"].drawing_box_vertical_extension = nil

if data.raw.item["bob-aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-4", "steel-plate", "bob-aluminium-plate")
  bobmods.lib.tech.add_prerequisite("automation-4", "bob-aluminium-processing")
elseif data.raw.item["bob-brass-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-4", "steel-plate", "bob-brass-alloy")
  bobmods.lib.tech.add_prerequisite("automation-4", "bob-zinc-processing")
end

if data.raw.item["bob-steel-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-assembling-machine-4",
    { type = "item", name = "bob-steel-bearing", amount = 5 }
  )
else
  bobmods.lib.recipe.add_ingredient("bob-assembling-machine-4", { type = "item", name = "iron-gear-wheel", amount = 3 })
end

if data.raw.item["bob-brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-4", "iron-gear-wheel", "bob-brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-4", "bob-zinc-processing")
elseif data.raw.item["bob-steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-4", "iron-gear-wheel", "bob-steel-gear-wheel")
end

if data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-5", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("automation-5", "bob-titanium-processing")
elseif data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-5", "steel-plate", "bob-tungsten-plate")
  bobmods.lib.tech.add_prerequisite("automation-5", "bob-tungsten-processing")
end

if data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-assembling-machine-5",
    { type = "item", name = "bob-titanium-bearing", amount = 5 }
  )
else
  bobmods.lib.recipe.add_ingredient("bob-assembling-machine-5", { type = "item", name = "iron-gear-wheel", amount = 3 })
end

if data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-5", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-5", "bob-titanium-processing")
elseif data.raw.item["bob-tungsten-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-5", "iron-gear-wheel", "bob-tungsten-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-5", "bob-tungsten-processing")
end

if data.raw.item["bob-nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "steel-plate", "bob-nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-nitinol-processing")
elseif data.raw.item["bob-titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "steel-plate", "bob-titanium-plate")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-titanium-processing")
end

if data.raw.item["bob-tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "iron-plate", "bob-tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-tungsten-alloy-processing")
elseif data.raw.item["bob-tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "iron-plate", "bob-tungsten-plate")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-tungsten-processing")
end

if data.raw.item["bob-nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-assembling-machine-6",
    { type = "item", name = "bob-nitinol-bearing", amount = 5 }
  )
elseif data.raw.item["bob-titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient(
    "bob-assembling-machine-6",
    { type = "item", name = "bob-titanium-bearing", amount = 5 }
  )
else
  bobmods.lib.recipe.add_ingredient("bob-assembling-machine-6", { type = "item", name = "iron-gear-wheel", amount = 3 })
end

if data.raw.item["bob-nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-nitinol-processing")
elseif data.raw.item["bob-titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "iron-gear-wheel", "bob-titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-titanium-processing")
elseif data.raw.item["bob-tungsten-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "iron-gear-wheel", "bob-tungsten-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-6", "bob-tungsten-processing")
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-5", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("automation-5", "bob-advanced-processing-unit")
  bobmods.lib.recipe.replace_ingredient("bob-assembling-machine-6", "processing-unit", "bob-advanced-processing-unit")
end

if settings.startup["bobmods-assembly-limits"].value == true then
  data.raw["assembling-machine"]["assembling-machine-1"].ingredient_count = 2
  data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 4
  data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 6
  data.raw["assembling-machine"]["bob-assembling-machine-4"].ingredient_count = 8
  data.raw["assembling-machine"]["bob-assembling-machine-5"].ingredient_count = 10
  data.raw["assembling-machine"]["bob-assembling-machine-6"].ingredient_count = 12
end

--        tint = {r = 0.7, g = 0.7, b = 0.1},
--        tint = {r = 0.7, g = 0.2, b = 0.1},
--        tint = {r = 0.1, g = 0.5, b = 0.7},
--        tint = {r = 0.7, g = 0.1, b = 0.7},
--        tint = {r = 0.1, g = 0.7, b = 0.1},

if settings.startup["bobmods-colorupdate"].value == true then
  data.raw.item["assembling-machine-2"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-2.png"
  data.raw.item["assembling-machine-2"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-2"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-2.png"
  data.raw["assembling-machine"]["assembling-machine-2"].icon_size = 32
  table.insert(data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers, {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
    priority = "high",
    width = 214,
    height = 237,
    repeat_count = 32,
    shift = util.by_pixel(0, -0.75),
    scale = 0.5,
    tint = { r = 0.7, g = 0.7, b = 0.1 },
  })
  data.raw.item["assembling-machine-3"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-3.png"
  data.raw.item["assembling-machine-3"].icon_size = 32
  data.raw["assembling-machine"]["assembling-machine-3"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-3.png"
  data.raw["assembling-machine"]["assembling-machine-3"].icon_size = 32
  table.insert(data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers, {
    filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
    priority = "high",
    width = 214,
    height = 237,
    repeat_count = 32,
    shift = util.by_pixel(0, -0.75),
    scale = 0.5,
    tint = { r = 0.7, g = 0.2, b = 0.1 },
  })

  data.raw.item["bob-assembling-machine-4"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-4.png"
  data.raw.item["bob-assembling-machine-4"].icon_size = 32
  data.raw["assembling-machine"]["bob-assembling-machine-4"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-4.png"
  data.raw["assembling-machine"]["bob-assembling-machine-4"].icon_size = 32
  data.raw["assembling-machine"]["bob-assembling-machine-4"].graphics_set.animation.layers[2].tint =
    { r = 0.1, g = 0.5, b = 0.7 }

  data.raw.item["bob-assembling-machine-5"].icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-5.png"
  data.raw.item["bob-assembling-machine-5"].icon_size = 32
  data.raw["assembling-machine"]["bob-assembling-machine-5"].icon =
    "__bobassembly__/graphics/icons/new-colors/assembling-machine-5.png"
  data.raw["assembling-machine"]["bob-assembling-machine-5"].icon_size = 32
  data.raw["assembling-machine"]["bob-assembling-machine-5"].graphics_set.animation.layers[2].tint =
    { r = 0.7, g = 0.1, b = 0.7 }

  if aailoaderssize == true then
    data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[3].scale = 0.58
    data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[3].scale = 0.58
  end
end

if aailoaderssize == true then
  data.raw["assembling-machine"]["assembling-machine-1"].graphics_set.animation.layers[1].scale = 0.58
  data.raw["assembling-machine"]["assembling-machine-1"].graphics_set.animation.layers[2].scale = 0.58
  data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[1].scale = 0.58
  data.raw["assembling-machine"]["assembling-machine-2"].graphics_set.animation.layers[2].scale = 0.58
  data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[1].scale = 0.58
  data.raw["assembling-machine"]["assembling-machine-3"].graphics_set.animation.layers[2].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-4"].graphics_set.animation.layers[1].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-4"].graphics_set.animation.layers[2].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-4"].graphics_set.animation.layers[3].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-5"].graphics_set.animation.layers[1].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-5"].graphics_set.animation.layers[2].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-5"].graphics_set.animation.layers[3].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-6"].graphics_set.animation.layers[1].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-6"].graphics_set.animation.layers[2].scale = 0.58
  data.raw["assembling-machine"]["bob-assembling-machine-6"].graphics_set.animation.layers[3].scale = 0.58
  if not mods["aai-industry"] and settings.startup["bobmods-assembly-burner"].value == true then
    data.raw["assembling-machine"]["bob-burner-assembling-machine"].graphics_set.animation.layers[1].scale = 0.38
    data.raw["assembling-machine"]["bob-burner-assembling-machine"].graphics_set.animation.layers[2].scale = 0.38
    data.raw["assembling-machine"]["bob-burner-assembling-machine"].graphics_set.animation.layers[3].scale = 0.38
    data.raw["assembling-machine"]["bob-steam-assembling-machine"].graphics_set.animation.layers[1].scale = 0.56
    data.raw["assembling-machine"]["bob-steam-assembling-machine"].graphics_set.animation.layers[2].scale = 0.56
    data.raw["assembling-machine"]["bob-steam-assembling-machine"].graphics_set.animation.layers[3].scale = 0.56
  end
  if settings.startup["bobmods-assembly-electronicmachines"].value == true then
    data.raw["assembling-machine"]["bob-electronics-machine-1"].graphics_set.animation.layers[1].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-1"].graphics_set.animation.layers[2].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-1"].graphics_set.animation.layers[3].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-2"].graphics_set.animation.layers[1].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-2"].graphics_set.animation.layers[2].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-2"].graphics_set.animation.layers[3].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-3"].graphics_set.animation.layers[1].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-3"].graphics_set.animation.layers[2].scale = 0.38
    data.raw["assembling-machine"]["bob-electronics-machine-3"].graphics_set.animation.layers[3].scale = 0.38
  end
end
