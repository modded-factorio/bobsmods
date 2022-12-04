if
  settings.startup["bobmods-assembly-multipurposefurnaces"].value
  and data.raw["item-subgroup"]["bob-smelting-machine"]
  and data.raw["recipe-category"]["chemical-furnace"]
  and data.raw["recipe-category"]["mixing-furnace"]
  and (data.raw.technology["alloy-processing-2"] or data.raw.technology["electric-mixing-furnace"])
  and data.raw.technology["electric-chemical-furnace"]
then
  --older plates mod
  if not data.raw.item["electric-chemical-furnace"] and data.raw.item["chemical-furnace"] then
    bobmods.lib.recipe.replace_ingredient(
      "electric-chemical-mixing-furnace",
      "electric-chemical-furnace",
      "chemical-furnace"
    )
  end

  if data.raw["assembling-machine"]["chemical-furnace"] then
    data.raw["assembling-machine"]["chemical-furnace"].next_upgrade = "electric-chemical-mixing-furnace"
  elseif data.raw["assembling-machine"]["electric-chemical-furnace"] then
    data.raw["assembling-machine"]["electric-chemical-furnace"].next_upgrade = "electric-chemical-mixing-furnace"
  end

  data.raw["assembling-machine"]["electric-mixing-furnace"].next_upgrade = "electric-chemical-mixing-furnace"

  if data.raw.item["invar-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "steel-plate", "invar-alloy")
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "invar-processing")
  end

  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "stone-brick", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "tungsten-processing")
  end

  if data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "pipe", "tungsten-pipe")
  end

  if data.raw.item["copper-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "pipe", "copper-tungsten-pipe")
  elseif data.raw.item["tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "pipe", "tungsten-pipe")
  end

  if data.raw.item["copper-tungsten-alloy"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "steel-plate", "copper-tungsten-alloy")
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-2", "tungsten-alloy-processing")
  end

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "stone-brick", "tungsten-carbide")
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-2", "tungsten-alloy-processing")
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "electric-chemical-mixing-furnace-2",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-2", "advanced-electronics-3")
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    data.raw["assembling-machine"]["electric-chemical-mixing-furnace"].ingredient_count = 6
    data.raw["assembling-machine"]["electric-chemical-mixing-furnace-2"].ingredient_count = 8

    if data.raw["assembling-machine"]["chemical-boiler"] then
      data.raw["assembling-machine"]["chemical-boiler"].ingredient_count = 2
    elseif data.raw["assembling-machine"]["stone-chemical-furnace"] then
      data.raw["assembling-machine"]["stone-chemical-furnace"].ingredient_count = 2
    end
    if data.raw["assembling-machine"]["chemical-steel-furnace"] then
      data.raw["assembling-machine"]["chemical-steel-furnace"].ingredient_count = 4
    elseif data.raw["assembling-machine"]["steel-chemical-furnace"] then
      data.raw["assembling-machine"]["steel-chemical-furnace"].ingredient_count = 4
    end
    if data.raw["assembling-machine"]["chemical-furnace"] then
      data.raw["assembling-machine"]["chemical-furnace"].ingredient_count = 4
    elseif data.raw["assembling-machine"]["electric-chemical-furnace"] then
      data.raw["assembling-machine"]["electric-chemical-furnace"].ingredient_count = 4
    end

    if data.raw["assembling-machine"]["mixing-furnace"] then
      data.raw["assembling-machine"]["mixing-furnace"].ingredient_count = 2
    elseif data.raw["assembling-machine"]["stone-mixing-furnace"] then
      data.raw["assembling-machine"]["stone-mixing-furnace"].ingredient_count = 2
    end
    if data.raw["assembling-machine"]["mixing-steel-furnace"] then
      data.raw["assembling-machine"]["mixing-steel-furnace"].ingredient_count = 4
    elseif data.raw["assembling-machine"]["steel-mixing-furnace"] then
      data.raw["assembling-machine"]["steel-mixing-furnace"].ingredient_count = 2
    end
    if data.raw["assembling-machine"]["electric-mixing-furnace"] then
      data.raw["assembling-machine"]["electric-mixing-furnace"].ingredient_count = 4
    end
  end
end
