if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  if data.raw.item["bronze-alloy"] then
    bobmods.lib.recipe.replace_ingredient("long-handed-inserter", "steel-plate", "bronze-alloy")
    bobmods.lib.recipe.replace_ingredient("red-stack-inserter", "steel-plate", "bronze-alloy")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("red-filter-inserter", "steel-plate", "bronze-alloy")
      bobmods.lib.recipe.replace_ingredient("red-stack-filter-inserter", "steel-plate", "bronze-alloy")
    end
    bobmods.lib.tech.add_prerequisite("logistics-2", "alloy-processing")
  end

  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("long-handed-inserter", "iron-gear-wheel", "steel-gear-wheel")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("red-filter-inserter", "iron-gear-wheel", "steel-gear-wheel")
    end
    bobmods.lib.recipe.replace_ingredient("red-stack-inserter", "iron-gear-wheel", "steel-gear-wheel")
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("fast-inserter", "steel-plate", "bob-aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("stack-inserter", "steel-plate", "bob-aluminium-plate")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("filter-inserter", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("stack-filter-inserter", "steel-plate", "bob-aluminium-plate")
    end
    bobmods.lib.tech.add_prerequisite("logistics-3", "aluminium-processing")
  end

  if data.raw.item["cobalt-steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fast-inserter", { type = "item", name = "cobalt-steel-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient("filter-inserter", { type = "item", name = "cobalt-steel-bearing", amount = 1 })
      bobmods.lib.recipe.add_ingredient("stack-inserter", { type = "item", name = "cobalt-steel-bearing", amount = 5 })
      bobmods.lib.recipe.add_ingredient(
        "stack-filter-inserter",
        { type = "item", name = "cobalt-steel-bearing", amount = 6 }
      )
    else
      bobmods.lib.recipe.add_ingredient("stack-inserter", { type = "item", name = "cobalt-steel-bearing", amount = 5 })
    end
  elseif data.raw.item["brass-bearing"] then
    bobmods.lib.recipe.add_ingredient("fast-inserter", { type = "item", name = "brass-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient("filter-inserter", { type = "item", name = "brass-bearing", amount = 1 })
      bobmods.lib.recipe.add_ingredient("stack-inserter", { type = "item", name = "brass-bearing", amount = 5 })
      bobmods.lib.recipe.add_ingredient("stack-filter-inserter", { type = "item", name = "brass-bearing", amount = 6 })
    else
      bobmods.lib.recipe.add_ingredient("stack-inserter", { type = "item", name = "brass-bearing", amount = 5 })
    end
  elseif data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_ingredient("fast-inserter", { type = "item", name = "steel-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient("filter-inserter", { type = "item", name = "steel-bearing", amount = 1 })
      bobmods.lib.recipe.add_ingredient("stack-inserter", { type = "item", name = "steel-bearing", amount = 6 })
      bobmods.lib.recipe.add_ingredient("stack-filter-inserter", { type = "item", name = "steel-bearing", amount = 6 })
    else
      bobmods.lib.recipe.add_ingredient("stack-inserter", { type = "item", name = "steel-bearing", amount = 5 })
    end
  end

  if data.raw.item["cobalt-steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fast-inserter", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("stack-inserter", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("filter-inserter", "iron-gear-wheel", "cobalt-steel-gear-wheel")
      bobmods.lib.recipe.replace_ingredient("stack-filter-inserter", "iron-gear-wheel", "cobalt-steel-gear-wheel")
    end
    bobmods.lib.tech.add_prerequisite("logistics-3", "cobalt-processing")
  elseif data.raw.item["brass-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("fast-inserter", "iron-gear-wheel", "brass-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("stack-inserter", "iron-gear-wheel", "brass-gear-wheel")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("filter-inserter", "iron-gear-wheel", "brass-gear-wheel")
      bobmods.lib.recipe.replace_ingredient("stack-filter-inserter", "iron-gear-wheel", "brass-gear-wheel")
    end
    bobmods.lib.tech.add_prerequisite("logistics-3", "zinc-processing")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("turbo-inserter", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("turbo-stack-inserter", "steel-plate", "bob-titanium-plate")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("turbo-filter-inserter", "steel-plate", "bob-titanium-plate")
      bobmods.lib.recipe.replace_ingredient("turbo-stack-filter-inserter", "steel-plate", "bob-titanium-plate")
    end
  end

  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("turbo-inserter", { type = "item", name = "titanium-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "turbo-filter-inserter",
        { type = "item", name = "titanium-bearing", amount = 1 }
      )
      bobmods.lib.recipe.add_ingredient(
        "turbo-stack-inserter",
        { type = "item", name = "titanium-bearing", amount = 6 }
      )
      bobmods.lib.recipe.add_ingredient(
        "turbo-stack-filter-inserter",
        { type = "item", name = "titanium-bearing", amount = 6 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "turbo-stack-inserter",
        { type = "item", name = "titanium-bearing", amount = 5 }
      )
    end
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("turbo-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("turbo-stack-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("turbo-filter-inserter", "iron-gear-wheel", "titanium-gear-wheel")
      bobmods.lib.recipe.replace_ingredient("turbo-stack-filter-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    end
  end

  if data.raw.item["nitinol-alloy"] then
    bobmods.lib.recipe.replace_ingredient("express-inserter", "steel-plate", "nitinol-alloy")
    bobmods.lib.recipe.replace_ingredient("express-stack-inserter", "steel-plate", "nitinol-alloy")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("express-filter-inserter", "steel-plate", "nitinol-alloy")
      bobmods.lib.recipe.replace_ingredient("express-stack-filter-inserter", "steel-plate", "nitinol-alloy")
    end
    bobmods.lib.tech.add_prerequisite("logistics-5", "nitinol-processing")
  end

  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("express-inserter", { type = "item", name = "nitinol-bearing", amount = 1 })
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.add_ingredient(
        "express-filter-inserter",
        { type = "item", name = "nitinol-bearing", amount = 1 }
      )
      bobmods.lib.recipe.add_ingredient(
        "express-stack-inserter",
        { type = "item", name = "nitinol-bearing", amount = 6 }
      )
      bobmods.lib.recipe.add_ingredient(
        "express-stack-filter-inserter",
        { type = "item", name = "nitinol-bearing", amount = 6 }
      )
    else
      bobmods.lib.recipe.add_ingredient(
        "express-stack-inserter",
        { type = "item", name = "nitinol-bearing", amount = 5 }
      )
    end
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("express-inserter", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-stack-inserter", "iron-gear-wheel", "nitinol-gear-wheel")
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("express-filter-inserter", "iron-gear-wheel", "nitinol-gear-wheel")
      bobmods.lib.recipe.replace_ingredient("express-stack-filter-inserter", "iron-gear-wheel", "nitinol-gear-wheel")
    end
  end

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("express-inserter", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("express-filter-inserter", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient(
      "express-stack-filter-inserter",
      "processing-unit",
      "advanced-processing-unit"
    )
    if settings.startup["bobmods-logistics-inserterrequireprevious"].value == true then
      bobmods.lib.recipe.replace_ingredient("express-stack-inserter", "processing-unit", "advanced-processing-unit")
    end
  end
else
  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("express-inserter", { type = "item", name = "titanium-bearing", amount = 1 })
    bobmods.lib.recipe.add_ingredient(
      "express-filter-inserter",
      { type = "item", name = "titanium-bearing", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "express-stack-inserter",
      { type = "item", name = "titanium-bearing", amount = 6 }
    )
    bobmods.lib.recipe.add_ingredient(
      "express-stack-filter-inserter",
      { type = "item", name = "titanium-bearing", amount = 6 }
    )
  end

  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("express-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-stack-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-filter-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.recipe.replace_ingredient("express-stack-filter-inserter", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("express-inserters", "titanium-processing")
  end
end
