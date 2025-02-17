if settings.startup["bobmods-assembly-chemicalplants"].value == true then
  data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "bob-chemical-plant-2"

  if data.raw.technology["bob-chemical-plant"] then
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-chemical-plant")
  elseif data.raw.technology["bob-chemical-processing-2"] then
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-chemical-processing-2")
  else
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "oil-processing")
  end

  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-2", "pipe", "bob-steel-pipe")
  end

  if data.raw.item["bob-glass"] then
    bobmods.lib.recipe.add_ingredient("chemical-plant", { type = "item", name = "bob-glass", amount = 5 })
  end

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-2", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-2", "bob-invar-processing")
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-2", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("bob-chemical-plant-2", { type = "item", name = "bob-steel-bearing", amount = 5 })
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-3", "pipe", "bob-titanium-pipe")
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-3", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-chemical-plant-3",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-4", "bob-nitinol-processing")
  end

  if data.raw.item["bob-nitinol-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "pipe", "bob-nitinol-pipe")
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "pipe", "bob-tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-chemical-plant-4", "processing-unit", "bob-advanced-processing-unit")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-chemical-plant-4",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("bob-chemical-plant-4", "bob-advanced-processing-unit")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["chemical-plant"].ingredient_count = 4
    data.raw["assembling-machine"]["bob-chemical-plant-2"].ingredient_count = 6
    data.raw["assembling-machine"]["bob-chemical-plant-3"].ingredient_count = 8
    data.raw["assembling-machine"]["bob-chemical-plant-4"].ingredient_count = 10
  end

  --        tint = {r = 0.7, g = 0.7, b = 0.1},
  --        tint = {r = 0.7, g = 0.2, b = 0.1},
  --        tint = {r = 0.1, g = 0.5, b = 0.7},
  --        tint = {r = 0.7, g = 0.1, b = 0.7},
  --        tint = {r = 0.1, g = 0.7, b = 0.1},

  if settings.startup["bobmods-colorupdate"].value == true then
    data.raw.item["chemical-plant"].icon = "__bobassembly__/graphics/icons/chemical-plant-3.png"
    data.raw.item["chemical-plant"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant"].icon = "__bobassembly__/graphics/icons/chemical-plant-3.png"
    data.raw["assembling-machine"]["chemical-plant"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant"].graphics_set.animation =
      bobmods.bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 })
    --  data.raw["assembling-machine"]["chemical-plant"].working_visualisations = bob_chemical_plant_working_visualisations()

    data.raw.item["bob-chemical-plant-2"].icon = "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png"
    data.raw.item["bob-chemical-plant-2"].icon_size = 32
    data.raw["assembling-machine"]["bob-chemical-plant-2"].icon =
      "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png"
    data.raw["assembling-machine"]["bob-chemical-plant-2"].icon_size = 32
    data.raw["assembling-machine"]["bob-chemical-plant-2"].graphics_set.animation =
      bobmods.bob_chemical_plant_animation({ r = 0.1, g = 0.5, b = 0.7 })

    data.raw.item["bob-chemical-plant-3"].icon = "__bobassembly__/graphics/icons/chemical-plant-2.png"
    data.raw.item["bob-chemical-plant-3"].icon_size = 32
    data.raw["assembling-machine"]["bob-chemical-plant-3"].icon = "__bobassembly__/graphics/icons/chemical-plant-2.png"
    data.raw["assembling-machine"]["bob-chemical-plant-3"].icon_size = 32
    data.raw["assembling-machine"]["bob-chemical-plant-3"].graphics_set.animation =
      bobmods.bob_chemical_plant_animation({ r = 0.7, g = 0.1, b = 0.7 })
  end
end
