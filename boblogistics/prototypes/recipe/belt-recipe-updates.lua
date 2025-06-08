if settings.startup["bobmods-logistics-beltoverhaul"].value == true then
  if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value == true then
    -- Do nothing
  else
    bobmods.lib.recipe.replace_ingredient("lab", "transport-belt", "bob-basic-transport-belt")
  end

  if bobmods.greenhouse then
    bobmods.lib.recipe.replace_ingredient("bob-basic-underground-belt", "iron-stick", "wood")
    bobmods.lib.recipe.replace_ingredient("bob-basic-splitter", "iron-stick", "wood")
  end

  if data.raw.item["bob-tin-plate"] then
    bobmods.lib.recipe.replace_ingredient("transport-belt", "iron-plate", "bob-tin-plate")
    bobmods.lib.recipe.replace_ingredient("underground-belt", "iron-plate", "bob-tin-plate")
    bobmods.lib.recipe.replace_ingredient("splitter", "iron-plate", "bob-tin-plate")
  end

  bobmods.lib.tech.add_prerequisite("logistics-2", "steel-processing")

  if data.raw.item["bob-bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fast-transport-belt", "steel-plate", "bob-bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("fast-underground-belt", "steel-plate", "bob-bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("fast-splitter", "steel-plate", "bob-bronze-alloy")
    bobmods.lib.tech.add_prerequisite("logistics-2", "bob-alloy-processing")
  end

  if data.raw.item["bob-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fast-transport-belt", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("fast-underground-belt", "iron-gear-wheel", "bob-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("fast-splitter", "iron-gear-wheel", "bob-steel-gear-wheel")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("express-transport-belt", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("express-underground-belt", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("express-splitter", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("logistics-3", "bob-aluminium-processing")
  end

  if data.raw.item["bob-steel-bearing"] then
    if data.raw.item["bob-cobalt-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient(
        "express-transport-belt",
        { type = "item", name = "bob-cobalt-steel-bearing", amount = 4 }
      )
    elseif data.raw.item["bob-brass-bearing"] then
      bobmods.lib.recipe.add_ingredient(
        "express-transport-belt",
        { type = "item", name = "bob-brass-bearing", amount = 4 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "express-transport-belt",
        { type = "item", name = "bob-steel-bearing", amount = 4 }
      )
    end
    if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
      if data.raw.item["bob-cobalt-steel-bearing"] then
        bobmods.lib.recipe.add_ingredient(
          "express-underground-belt",
          { type = "item", name = "bob-cobalt-steel-bearing", amount = 20 }
        )
        bobmods.lib.recipe.add_ingredient(
          "express-splitter",
          { type = "item", name = "bob-cobalt-steel-bearing", amount = 12 }
        )
      elseif data.raw.item["bob-brass-bearing"] then
        bobmods.lib.recipe.add_ingredient(
          "express-underground-belt",
          { type = "item", name = "bob-brass-bearing", amount = 20 }
        )
        bobmods.lib.recipe.add_ingredient(
          "express-splitter",
          { type = "item", name = "bob-brass-bearing", amount = 12 }
        )
      else
        bobmods.lib.recipe.add_ingredient(
          "express-underground-belt",
          { type = "item", name = "bob-steel-bearing", amount = 20 }
        )
        bobmods.lib.recipe.add_ingredient(
          "express-splitter",
          { type = "item", name = "bob-steel-bearing", amount = 12 }
        )
      end
    else
      if data.raw.item["bob-cobalt-steel-bearing"] then
        bobmods.lib.recipe.add_ingredient(
          "express-splitter",
          { type = "item", name = "bob-cobalt-steel-bearing", amount = 4 }
        )
      elseif data.raw.item["bob-brass-bearing"] then
        bobmods.lib.recipe.add_ingredient("express-splitter", { type = "item", name = "bob-brass-bearing", amount = 4 })
      else
        bobmods.lib.recipe.add_ingredient("express-splitter", { type = "item", name = "bob-steel-bearing", amount = 4 })
      end
    end
  end

  if data.raw.item["bob-cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("express-transport-belt", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-underground-belt", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-splitter", "iron-gear-wheel", "bob-cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-3", "bob-cobalt-processing")
  elseif data.raw.item["bob-brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("express-transport-belt", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-underground-belt", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-splitter", "iron-gear-wheel", "bob-brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-3", "bob-zinc-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-turbo-transport-belt", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-underground-belt", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-splitter", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("logistics-4", "bob-titanium-processing")
  end

  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-transport-belt",
      { type = "item", name = "bob-titanium-bearing", amount = 4 }
    )
    if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "bob-turbo-underground-belt",
        { type = "item", name = "bob-titanium-bearing", amount = 20 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-turbo-splitter",
        { type = "item", name = "bob-titanium-bearing", amount = 12 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "bob-turbo-splitter",
        { type = "item", name = "bob-titanium-bearing", amount = 4 }
      )
    end
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-turbo-transport-belt", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-underground-belt", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-splitter", "iron-gear-wheel", "bob-titanium-gear-wheel")
  end

  if data.raw.item["bob-nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-transport-belt", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-underground-belt", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-splitter", "steel-plate", "bob-nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("logistics-5", "bob-nitinol-processing")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-transport-belt",
      { type = "item", name = "bob-nitinol-bearing", amount = 4 }
    )
    if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "bob-ultimate-underground-belt",
        { type = "item", name = "bob-nitinol-bearing", amount = 20 }
      )
      bobmods.lib.recipe.add_ingredient(
        "bob-ultimate-splitter",
        { type = "item", name = "bob-nitinol-bearing", amount = 12 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "bob-ultimate-splitter",
        { type = "item", name = "bob-nitinol-bearing", amount = 4 }
      )
    end
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-transport-belt", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-underground-belt", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-splitter", "iron-gear-wheel", "bob-nitinol-gear-wheel")
  end
else
  if data.raw.item["bob-titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-transport-belt",
      { type = "item", name = "bob-titanium-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-underground-belt",
      { type = "item", name = "bob-titanium-bearing", amount = 40 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-splitter",
      { type = "item", name = "bob-titanium-bearing", amount = 10 }
    )
    bobmods.lib.tech.add_prerequisite("logistics-4", "bob-titanium-processing")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-transport-belt",
      { type = "item", name = "iron-gear-wheel", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-turbo-underground-belt",
      { type = "item", name = "iron-gear-wheel", amount = 20 }
    )
    bobmods.lib.recipe.add_ingredient("bob-turbo-splitter", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["bob-titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-turbo-transport-belt", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-underground-belt", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-turbo-splitter", "iron-gear-wheel", "bob-titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-4", "bob-titanium-processing")
  end

  if data.raw.item["bob-nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-transport-belt",
      { type = "item", name = "bob-nitinol-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-underground-belt",
      { type = "item", name = "bob-nitinol-bearing", amount = 60 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-splitter",
      { type = "item", name = "bob-nitinol-bearing", amount = 10 }
    )
    bobmods.lib.tech.add_prerequisite("logistics-5", "bob-nitinol-processing")
  else
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-transport-belt",
      { type = "item", name = "iron-gear-wheel", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-ultimate-underground-belt",
      { type = "item", name = "iron-gear-wheel", amount = 40 }
    )
    bobmods.lib.recipe.add_ingredient("bob-ultimate-splitter", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["bob-nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-transport-belt", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-underground-belt", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("bob-ultimate-splitter", "iron-gear-wheel", "bob-nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-5", "bob-nitinol-processing")
  end
end

if data.raw.item["bob-advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("bob-ultimate-splitter", "processing-unit", "bob-advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("logistics-5", "bob-advanced-processing-unit")
end
