if settings.startup["bobmods-assembly-oilfurnaces"].value == true then
  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-fluid-furnace", "pipe", "bob-steel-pipe")
  end
  if data.raw.recipe["bob-fluid-mixing-furnace"] then
    if data.raw.item["bob-steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-fluid-mixing-furnace", "pipe", "bob-steel-pipe")
    end
  end
  if data.raw.recipe["bob-fluid-chemical-furnace"] then
    if data.raw.item["bob-steel-pipe"] then
      bobmods.lib.recipe.replace_ingredient("bob-fluid-chemical-furnace", "pipe", "bob-steel-pipe")
    end
  end

  if settings.startup["bobmods-assembly-limits"].value == true then
    if data.raw.recipe["bob-fluid-mixing-furnace"] then
      data.raw["assembling-machine"]["bob-fluid-mixing-furnace"].ingredient_count = 4
    end
    if data.raw.recipe["bob-fluid-chemical-furnace"] then
      data.raw["assembling-machine"]["bob-fluid-chemical-furnace"].ingredient_count = 4
    end
  end

  if
    settings.startup["bobmods-plates-convert-recipes"]
    and settings.startup["bobmods-plates-convert-recipes"].value == true
  then
    if data.raw.item["bob-steel-pipe"] then
      bobmods.lib.recipe.remove_result("steel-furnace-from-fluid-furnace", "pipe")
      bobmods.lib.recipe.add_result(
        "steel-furnace-from-fluid-furnace",
        { type = "item", name = "bob-steel-pipe", amount = 2 }
      )
    end
    if data.raw.recipe["bob-fluid-mixing-furnace"] then
      if data.raw.item["bob-steel-pipe"] then
        bobmods.lib.recipe.replace_ingredient("bob-fluid-mixing-furnace-from-fluid-furnace", "pipe", "bob-steel-pipe")

        bobmods.lib.recipe.remove_result("steel-mixing-furnace-from-fluid-mixing-furnace", "pipe")
        bobmods.lib.recipe.add_result(
          "steel-mixing-furnace-from-fluid-mixing-furnace",
          { type = "item", name = "bob-steel-pipe", amount = 2 }
        )
      end
    end
    if data.raw.recipe["bob-fluid-chemical-furnace"] then
      if data.raw.item["bob-steel-pipe"] then
        bobmods.lib.recipe.replace_ingredient("bob-fluid-chemical-furnace-from-fluid-furnace", "pipe", "bob-steel-pipe")

        bobmods.lib.recipe.remove_result("steel-chemical-furnace-from-fluid-chemical-furnace", "pipe")
        bobmods.lib.recipe.add_result(
          "steel-chemical-furnace-from-fluid-chemical-furnace",
          { type = "item", name = "bob-steel-pipe", amount = 2 }
        )

        bobmods.lib.recipe.remove_result("bob-fluid-furnace-from-fluid-chemical-furnace", "pipe")
        bobmods.lib.recipe.add_result(
          "bob-fluid-furnace-from-fluid-chemical-furnace",
          { type = "item", name = "bob-steel-pipe", amount = 5 }
        )
      end
    end
  end
end
