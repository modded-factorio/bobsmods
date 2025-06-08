if
  settings.startup["bobmods-assembly-multipurposefurnaces"].value
  and data.raw["item-subgroup"]["bob-smelting-machine"]
  and data.raw["recipe-category"]["bob-chemical-furnace"]
  and data.raw["recipe-category"]["bob-mixing-furnace"]
  and (data.raw.technology["bob-alloy-processing-2"] or data.raw.technology["bob-electric-mixing-furnace"])
  and data.raw.technology["bob-electric-chemical-furnace"]
then
  if data.raw["assembling-machine"]["bob-electric-chemical-furnace"] then
    data.raw["assembling-machine"]["bob-electric-chemical-furnace"].next_upgrade =
      "bob-electric-chemical-mixing-furnace"
  end

  data.raw["assembling-machine"]["bob-electric-mixing-furnace"].next_upgrade = "bob-electric-chemical-mixing-furnace"

  if data.raw.item["bob-invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-mixing-furnace", "steel-plate", "bob-invar-alloy")
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-1", "bob-invar-processing")
  end

  if data.raw.item["bob-tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-mixing-furnace", "stone-brick", "bob-tungsten-plate")
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-1", "bob-tungsten-processing")
  end

  if data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-mixing-furnace", "pipe", "bob-tungsten-pipe")
  end

  if data.raw.item["bob-copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-mixing-furnace-2", "pipe", "bob-copper-tungsten-pipe")
  elseif data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-electric-chemical-mixing-furnace-2", "pipe", "bob-tungsten-pipe")
  end

  if data.raw.item["bob-copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-electric-chemical-mixing-furnace-2",
      "steel-plate",
      "bob-copper-tungsten-alloy"
    )
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-2", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-electric-chemical-mixing-furnace-2",
      "stone-brick",
      "bob-tungsten-carbide"
    )
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-2", "bob-tungsten-alloy-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-electric-chemical-mixing-furnace-2",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.tech.add_prerequisite("bob-multi-purpose-furnace-2", "bob-advanced-processing-unit")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["bob-electric-chemical-mixing-furnace"].ingredient_count = 6
    data.raw["assembling-machine"]["bob-electric-chemical-mixing-furnace-2"].ingredient_count = 8

    if data.raw["assembling-machine"]["bob-stone-chemical-furnace"] then
      data.raw["assembling-machine"]["bob-stone-chemical-furnace"].ingredient_count = 2
    end
    if data.raw["assembling-machine"]["bob-steel-chemical-furnace"] then
      data.raw["assembling-machine"]["bob-steel-chemical-furnace"].ingredient_count = 4
    end
    if data.raw["assembling-machine"]["bob-electric-chemical-furnace"] then
      data.raw["assembling-machine"]["bob-electric-chemical-furnace"].ingredient_count = 4
    end

    if data.raw["assembling-machine"]["bob-stone-mixing-furnace"] then
      data.raw["assembling-machine"]["bob-stone-mixing-furnace"].ingredient_count = 2
    end
    if data.raw["assembling-machine"]["bob-steel-mixing-furnace"] then
      data.raw["assembling-machine"]["bob-steel-mixing-furnace"].ingredient_count = 2
    end
    if data.raw["assembling-machine"]["bob-electric-mixing-furnace"] then
      data.raw["assembling-machine"]["bob-electric-mixing-furnace"].ingredient_count = 4
    end
  end
end
