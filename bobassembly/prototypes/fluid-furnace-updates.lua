if settings.startup["bobmods-assembly-oilfurnaces"].value == true then
  if data.raw.item["steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("fluid-furnace", "pipe", "steel-pipe")
  end
  if data.raw.recipe["fluid-mixing-furnace"] then
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("fluid-mixing-furnace", "pipe", "steel-pipe")
    end
  end
  if data.raw.recipe["fluid-chemical-furnace"] then
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("fluid-chemical-furnace", "pipe", "steel-pipe")
    end
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    if data.raw.recipe["fluid-mixing-furnace"] then
      data.raw["assembling-machine"]["fluid-mixing-furnace"].ingredient_count = 4
    end
    if data.raw.recipe["fluid-chemical-furnace"] then
      data.raw["assembling-machine"]["fluid-chemical-furnace"].ingredient_count = 4
    end
  end

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    if data.raw.item["steel-pipe"] then
      bobmods.lib.recipe.remove_result("steel-furnace-from-fluid-furnace", "pipe")
      bobmods.lib.recipe.add_result("steel-furnace-from-fluid-furnace", { "steel-pipe", 2 })
    end
    if data.raw.recipe["fluid-mixing-furnace"] then
      if data.raw.item["steel-pipe"] then
        bobmods.lib.recipe.replace_ingredient("fluid-mixing-furnace-from-fluid-furnace", "pipe", "steel-pipe")

        bobmods.lib.recipe.remove_result("steel-mixing-furnace-from-fluid-mixing-furnace", "pipe")
        bobmods.lib.recipe.add_result("steel-mixing-furnace-from-fluid-mixing-furnace", { "steel-pipe", 2 })
      end
    end
    if data.raw.recipe["fluid-chemical-furnace"] then
      if data.raw.item["steel-pipe"] then
        bobmods.lib.recipe.replace_ingredient("fluid-chemical-furnace-from-fluid-furnace", "pipe", "steel-pipe")

        bobmods.lib.recipe.remove_result("steel-chemical-furnace-from-fluid-chemical-furnace", "pipe")
        bobmods.lib.recipe.add_result("steel-chemical-furnace-from-fluid-chemical-furnace", { "steel-pipe", 2 })

        bobmods.lib.recipe.remove_result("fluid-furnace-from-fluid-chemical-furnace", "pipe")
        bobmods.lib.recipe.add_result("fluid-furnace-from-fluid-chemical-furnace", { "steel-pipe", 5 })
      end
    end
  end
end
