if settings.startup["bobmods-assembly-electronicmachines"].value == true then
  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-1", "steel-plate", "bronze-alloy")
    if mods["bobelectronics"] then
      bobmods.lib.tech.add_prerequisite("electronics-machine-1", "bob-electronics")
    else
      bobmods.lib.tech.add_prerequisite("electronics-machine-1", "alloy-processing")
    end
  end

  if data.raw.item["cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-2", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("electronics-machine-2", "cobalt-processing")
  end

  if data.raw.item["cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "electronics-machine-2",
      { type = "item", name = "cobalt-steel-bearing", amount = 5 }
    )
  else
    bobmods.lib.recipe.add_ingredient("electronics-machine-2", { type = "item", name = "iron-gear-wheel", amount = 3 })
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-2", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("electronics-machine-2", "aluminium-processing")
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "nitinol-processing")
  elseif data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "titanium-processing")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-alloy-processing")
  elseif data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-plate", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-processing")
  end

  if data.raw.item["ceramic-bearing"] then
    bobmods.lib.recipe.add_ingredient("electronics-machine-3", { type = "item", name = "ceramic-bearing", amount = 5 })
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "ceramics")
  elseif data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("electronics-machine-3", { type = "item", name = "nitinol-bearing", amount = 5 })
  else
    bobmods.lib.recipe.add_ingredient("electronics-machine-3", { type = "item", name = "iron-gear-wheel", amount = 3 })
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "nitinol-processing")
  elseif data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "titanium-processing")
  elseif data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-processing")
  end

  -- add new electronics crafting categories
  if data.raw.player then
    bobmods.lib.machine.type_if_add_category("player", "crafting", "electronics")
  elseif data.raw.character then
    bobmods.lib.machine.type_if_add_category("character", "crafting", "electronics")
  end
  if data.raw["god-controller"] then
    bobmods.lib.machine.type_if_add_category("god-controller", "crafting", "electronics")
  end
  bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics")
  bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics-machine")
  bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting-with-fluid", "electronics-with-fluid")

  data.raw.recipe["copper-cable"].category = "electronics"

  data.raw.recipe["electronic-circuit"].category = "electronics"
  data.raw.recipe["advanced-circuit"].category = "electronics"
  data.raw.recipe["processing-unit"].category = "electronics-machine"

  if data.raw.recipe["advanced-processing-unit"] then
    data.raw.recipe["advanced-processing-unit"].category = "electronics-machine"
  end
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "advanced-processing-unit")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["electronics-machine-1"].ingredient_count = 3
    data.raw["assembling-machine"]["electronics-machine-2"].ingredient_count = 4
    data.raw["assembling-machine"]["electronics-machine-3"].ingredient_count = 6
  end

  if settings.startup["bobmods-colorupdate"].value == true then
    data.raw.item["electronics-machine-1"].icon = "__bobassembly__/graphics/icons/new-colors/electronics-machine-1.png"
    data.raw.item["electronics-machine-1"].icon_size = 32
    data.raw["assembling-machine"]["electronics-machine-1"].icon =
      "__bobassembly__/graphics/icons/new-colors/electronics-machine-1.png"
    data.raw["assembling-machine"]["electronics-machine-1"].icon_size = 32
    data.raw["assembling-machine"]["electronics-machine-1"].graphics_set.animation.layers[2].tint =
      { r = 0.7, g = 0.7, b = 0.1 }

    data.raw.item["electronics-machine-2"].icon = "__bobassembly__/graphics/icons/electronics-machine-1.png"
    data.raw.item["electronics-machine-2"].icon_size = 32
    data.raw["assembling-machine"]["electronics-machine-2"].icon =
      "__bobassembly__/graphics/icons/electronics-machine-1.png"
    data.raw["assembling-machine"]["electronics-machine-2"].icon_size = 32
    data.raw["assembling-machine"]["electronics-machine-2"].graphics_set.animation.layers[2].tint =
      { r = 0.1, g = 0.5, b = 0.7 }
  end
end
