if settings.startup["bobmods-mining-pumpjacks"].value == true then
  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("pumpjack", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-steel-pipe"] then
    bobmods.lib.recipe.replace_ingredient("pumpjack", "pipe", "bob-steel-pipe")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-1", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-2", "bob-aluminium-processing")
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-1", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-2", "bob-cobalt-processing")
  end

  if data.raw.item["bob-aluminium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-1", "pipe", "bob-aluminium-pipe")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-2", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-2", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-titanium-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-2", "pipe", "bob-titanium-pipe")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-3", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-4", "bob-nitinol-processing")
  end

  if data.raw.item["bob-tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-3", "iron-gear-wheel", "bob-tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-4", "bob-tungsten-processing")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-4", "bob-advanced-processing-unit")
  end

  if data.raw.item["bob-tungsten-pipe"] then
    bobmods.lib.recipe.replace_ingredient("bob-pumpjack-3", "pipe", "bob-tungsten-pipe")
    bobmods.lib.tech.add_prerequisite("bob-pumpjacks-4", "bob-tungsten-processing")
  end

  if mods["Krastorio2"] then
    for _, pumpjack in pairs({
      "bob-pumpjack-1",
      "bob-pumpjack-2",
      "bob-pumpjack-3",
    }) do
      local prototype = data.raw["mining-drill"][pumpjack]
      if prototype and prototype.resource_categories then
        table.insert(prototype.resource_categories, "oil")
      end
    end
  end
end
