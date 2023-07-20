if settings.startup["bobmods-assembly-chemicalplants"].value == true then
  data.raw["assembling-machine"]["chemical-plant"].next_upgrade = "chemical-plant-2"

  if data.raw.technology["chemical-plant"] then
    bobmods.lib.tech.add_prerequisite("chemical-plant-2", "chemical-plant")
  elseif data.raw.technology["chemical-processing-2"] then
    bobmods.lib.tech.add_prerequisite("chemical-plant-2", "chemical-processing-2")
  else
    bobmods.lib.tech.add_prerequisite("chemical-plant-2", "oil-processing")
  end

  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "pipe", "steel-pipe")
  end

  if data.raw.item["glass"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "steel-plate", "glass")
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("chemical-plant-2", { "steel-bearing", 5 })
  end

  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("chemical-plant-3", "titanium-processing")
  end

  if data.raw.item["titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "pipe", "titanium-pipe")
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "iron-gear-wheel", "titanium-gear-wheel")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("chemical-plant-3", { "titanium-bearing", 5 })
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("chemical-plant-4", "nitinol-processing")
  end

  if data.raw.item["nitinol-pipe"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "pipe", "nitinol-pipe")
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "pipe", "tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("chemical-plant-4", "tungsten-processing")
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "iron-gear-wheel", "nitinol-gear-wheel")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "processing-unit", "advanced-processing-unit")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("chemical-plant-4", { "nitinol-bearing", 5 })
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.tech.add_prerequisite("chemical-plant-4", "advanced-electronics-3")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["chemical-plant"].ingredient_count = 4
    data.raw["assembling-machine"]["chemical-plant-2"].ingredient_count = 6
    data.raw["assembling-machine"]["chemical-plant-3"].ingredient_count = 8
    data.raw["assembling-machine"]["chemical-plant-4"].ingredient_count = 10
  end

  --        tint = {r = 0.7, g = 0.7, b = 0.1},
  --        tint = {r = 0.7, g = 0.2, b = 0.1},
  --        tint = {r = 0.1, g = 0.5, b = 0.7},
  --        tint = {r = 0.7, g = 0.1, b = 0.7},
  --        tint = {r = 0.1, g = 0.7, b = 0.1},

  if settings.startup["bobmods-colorupdate"].value == true then
    data.raw.item["chemical-plant"].icon = "__bobassembly__/graphics/icons/chemical-plant-3.png"
    data.raw.item["chemical-plant"].icon_size = 32
    data.raw.item["chemical-plant"].icon_mipmaps = nil
    data.raw["assembling-machine"]["chemical-plant"].icon = "__bobassembly__/graphics/icons/chemical-plant-3.png"
    data.raw["assembling-machine"]["chemical-plant"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant"].icon_mipmaps = nil
    data.raw["assembling-machine"]["chemical-plant"].animation =
      bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 })
    --  data.raw["assembling-machine"]["chemical-plant"].working_visualisations = bob_chemical_plant_working_visualisations()

    data.raw.item["chemical-plant-2"].icon = "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png"
    data.raw.item["chemical-plant-2"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant-2"].icon =
      "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png"
    data.raw["assembling-machine"]["chemical-plant-2"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant-2"].animation =
      bob_chemical_plant_animation({ r = 0.1, g = 0.5, b = 0.7 })

    data.raw.item["chemical-plant-3"].icon = "__bobassembly__/graphics/icons/chemical-plant-2.png"
    data.raw.item["chemical-plant-3"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant-3"].icon = "__bobassembly__/graphics/icons/chemical-plant-2.png"
    data.raw["assembling-machine"]["chemical-plant-3"].icon_size = 32
    data.raw["assembling-machine"]["chemical-plant-3"].animation =
      bob_chemical_plant_animation({ r = 0.7, g = 0.1, b = 0.7 })
  end
end
