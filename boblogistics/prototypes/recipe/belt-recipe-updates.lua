if settings.startup["bobmods-logistics-beltoverhaul"].value == true then

  if data.raw.item["tin-plate"] then
    bobmods.lib.recipe.replace_ingredient("transport-belt", "iron-plate", "tin-plate")
    bobmods.lib.recipe.replace_ingredient("underground-belt", "iron-plate", "tin-plate")
    bobmods.lib.recipe.replace_ingredient("splitter", "iron-plate", "tin-plate")
  end

  bobmods.lib.tech.add_prerequisite("logistics-2", "steel-processing")

  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("fast-transport-belt", "steel-plate", "bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("fast-underground-belt", "steel-plate", "bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("fast-splitter", "steel-plate", "bronze-alloy")
    bobmods.lib.tech.add_prerequisite("logistics-2", "alloy-processing")
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fast-transport-belt", "iron-gear-wheel", "steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("fast-underground-belt", "iron-gear-wheel", "steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("fast-splitter", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("express-transport-belt", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("express-underground-belt", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("express-splitter", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.tech.add_prerequisite("logistics-3", "aluminium-processing")
  end

  if data.raw.item["steel-bearing"] then
    if data.raw.item["cobalt-steel-bearing"] then
      bobmods.lib.recipe.add_ingredient(
        "express-transport-belt",
        { type = "item", name = "cobalt-steel-bearing", amount = 4 }
      )
    elseif data.raw.item["brass-bearing"] then
      bobmods.lib.recipe.add_ingredient("express-transport-belt", { type = "item", name = "brass-bearing", amount = 4 })
    else
      bobmods.lib.recipe.add_ingredient("express-transport-belt", { type = "item", name = "steel-bearing", amount = 4 })
    end
    if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
      if data.raw.item["cobalt-steel-bearing"] then
        bobmods.lib.recipe.add_ingredient(
          "express-underground-belt",
          { type = "item", name = "cobalt-steel-bearing", amount = 20 }
        )
        bobmods.lib.recipe.add_ingredient(
          "express-splitter",
          { type = "item", name = "cobalt-steel-bearing", amount = 12 }
        )
      elseif data.raw.item["brass-bearing"] then
        bobmods.lib.recipe.add_ingredient(
          "express-underground-belt",
          { type = "item", name = "brass-bearing", amount = 20 }
        )
        bobmods.lib.recipe.add_ingredient("express-splitter", { type = "item", name = "brass-bearing", amount = 12 })
      else
        bobmods.lib.recipe.add_ingredient(
          "express-underground-belt",
          { type = "item", name = "steel-bearing", amount = 20 }
        )
        bobmods.lib.recipe.add_ingredient("express-splitter", { type = "item", name = "steel-bearing", amount = 12 })
      end
    else
      if data.raw.item["cobalt-steel-bearing"] then
        bobmods.lib.recipe.add_ingredient(
          "express-splitter",
          { type = "item", name = "cobalt-steel-bearing", amount = 4 }
        )
      elseif data.raw.item["brass-bearing"] then
        bobmods.lib.recipe.add_ingredient("express-splitter", { type = "item", name = "brass-bearing", amount = 4 })
      else
        bobmods.lib.recipe.add_ingredient("express-splitter", { type = "item", name = "steel-bearing", amount = 4 })
      end
    end
  end

  if data.raw.item["cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("express-transport-belt", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-underground-belt", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-splitter", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-3", "cobalt-processing")
  elseif data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("express-transport-belt", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-underground-belt", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-splitter", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-3", "zinc-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("turbo-transport-belt", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("turbo-underground-belt", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("turbo-splitter", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("logistics-4", "titanium-processing")
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("turbo-transport-belt", { type = "item", name = "titanium-bearing", amount = 4 })
    if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "turbo-underground-belt",
        { type = "item", name = "titanium-bearing", amount = 20 }
      )
      bobmods.lib.recipe.add_ingredient("turbo-splitter", { type = "item", name = "titanium-bearing", amount = 12 })
    else
      bobmods.lib.recipe.add_ingredient("turbo-splitter", { type = "item", name = "titanium-bearing", amount = 4 })
    end
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("turbo-transport-belt", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("turbo-underground-belt", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("turbo-splitter", "iron-gear-wheel", "titanium-gear-wheel")
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("ultimate-transport-belt", "steel-plate", "nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("ultimate-underground-belt", "steel-plate", "nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("ultimate-splitter", "steel-plate", "nitinol-alloy")
    bobmods.lib.tech.add_prerequisite("logistics-5", "nitinol-processing")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "ultimate-transport-belt",
      { type = "item", name = "nitinol-bearing", amount = 4 }
    )
    if settings.startup["bobmods-logistics-beltrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "ultimate-underground-belt",
        { type = "item", name = "nitinol-bearing", amount = 20 }
      )
      bobmods.lib.recipe.add_ingredient("ultimate-splitter", { type = "item", name = "nitinol-bearing", amount = 12 })
    else
      bobmods.lib.recipe.add_ingredient("ultimate-splitter", { type = "item", name = "nitinol-bearing", amount = 4 })
    end
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("ultimate-transport-belt", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("ultimate-underground-belt", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("ultimate-splitter", "iron-gear-wheel", "nitinol-gear-wheel")
  end
else
  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("turbo-transport-belt", { type = "item", name = "titanium-bearing", amount = 5 })
    bobmods.lib.recipe.add_ingredient(
      "turbo-underground-belt",
      { type = "item", name = "titanium-bearing", amount = 40 }
    )
    bobmods.lib.recipe.add_ingredient("turbo-splitter", { type = "item", name = "titanium-bearing", amount = 10 })
    bobmods.lib.tech.add_prerequisite("logistics-4", "titanium-processing")
  else
    bobmods.lib.recipe.add_ingredient("turbo-transport-belt", { type = "item", name = "iron-gear-wheel", amount = 5 })
    bobmods.lib.recipe.add_ingredient(
      "turbo-underground-belt",
      { type = "item", name = "iron-gear-wheel", amount = 20 }
    )
    bobmods.lib.recipe.add_ingredient("turbo-splitter", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("turbo-transport-belt", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("turbo-underground-belt", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("turbo-splitter", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-4", "titanium-processing")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient(
      "ultimate-transport-belt",
      { type = "item", name = "nitinol-bearing", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "ultimate-underground-belt",
      { type = "item", name = "nitinol-bearing", amount = 60 }
    )
    bobmods.lib.recipe.add_ingredient("ultimate-splitter", { type = "item", name = "nitinol-bearing", amount = 10 })
    bobmods.lib.tech.add_prerequisite("logistics-5", "nitinol-processing")
  else
    bobmods.lib.recipe.add_ingredient(
      "ultimate-transport-belt",
      { type = "item", name = "iron-gear-wheel", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "ultimate-underground-belt",
      { type = "item", name = "iron-gear-wheel", amount = 40 }
    )
    bobmods.lib.recipe.add_ingredient("ultimate-splitter", { type = "item", name = "iron-gear-wheel", amount = 10 })
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("ultimate-transport-belt", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("ultimate-underground-belt", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("ultimate-splitter", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("logistics-5", "nitinol-processing")
  end
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("ultimate-splitter", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("logistics-5", "advanced-processing-unit")
end
