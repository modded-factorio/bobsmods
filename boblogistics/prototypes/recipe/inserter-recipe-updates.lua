if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("long-handed-inserter", "steel-plate", "bob-bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-red-bulk-inserter", "steel-plate", "bob-bronze-alloy")
    bobmods.lib.tech.add_prerequisite("logistics-2", "bob-alloy-processing")
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("long-handed-inserter", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-red-bulk-inserter", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fast-inserter", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("bulk-inserter", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("logistics-3", "bob-aluminium-processing")
  end

  if data.raw.item["bob-cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fast-inserter", { type = "item", name = "bob-cobalt-steel-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "bulk-inserter",
        { type = "item", name = "bob-cobalt-steel-bearing", amount = 6 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "bulk-inserter",
        { type = "item", name = "bob-cobalt-steel-bearing", amount = 5 }
      )
    end
  elseif data.raw.item["bob-brass-bearing"] then
    bobmods.lib.recipe.add_ingredient("fast-inserter", { type = "item", name = "bob-brass-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient("bulk-inserter", { type = "item", name = "bob-brass-bearing", amount = 6 })
    else
      bobmods.lib.recipe.add_ingredient("bulk-inserter", { type = "item", name = "bob-brass-bearing", amount = 5 })
    end
  elseif data.raw.item["bob-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fast-inserter", { type = "item", name = "bob-steel-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient("bulk-inserter", { type = "item", name = "bob-steel-bearing", amount = 6 })
    else
      bobmods.lib.recipe.add_ingredient("bulk-inserter", { type = "item", name = "bob-steel-bearing", amount = 5 })
    end
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fast-inserter", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bulk-inserter", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-3", "bob-cobalt-processing")
  elseif data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fast-inserter", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bulk-inserter", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-3", "bob-zinc-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-turbo-inserter", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-bulk-inserter", "steel-plate", "bob-titanium-plate")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-inserter",
      { type = "item", name = "bob-titanium-bearing", amount = 1 }
    )
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "bob-turbo-bulk-inserter",
        { type = "item", name = "bob-titanium-bearing", amount = 6 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "bob-turbo-bulk-inserter",
        { type = "item", name = "bob-titanium-bearing", amount = 5 }
      )
    end
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-turbo-inserter", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-bulk-inserter", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-express-inserter", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-express-bulk-inserter", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("logistics-5", "bob-nitinol-processing")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-express-inserter",
      { type = "item", name = "bob-nitinol-bearing", amount = 1 }
    )
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "bob-express-bulk-inserter",
        { type = "item", name = "bob-nitinol-bearing", amount = 6 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "bob-express-bulk-inserter",
        { type = "item", name = "bob-nitinol-bearing", amount = 5 }
      )
    end
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-express-inserter", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-express-bulk-inserter", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  end

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("bob-express-inserter", "processing-unit", "bob-advanced-processing-unit")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient(
        "bob-express-bulk-inserter",
        "processing-unit",
        "bob-advanced-processing-unit"
      )
    end
  end
else
  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-express-inserter",
      { type = "item", name = "bob-titanium-bearing", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-express-bulk-inserter",
      { type = "item", name = "bob-titanium-bearing", amount = 6 }
    )
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-express-inserter", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-express-bulk-inserter", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-express-inserter", "bob-titanium-processing")
  end
end
