if settings.startup["bobmods-power-solar"].value == true then
  if data.raw.item["bob-glass"] then
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-small", { type = "item", name = "bob-glass", amount = 4 })
    bobmods.lib.recipe.add_ingredient("solar-panel", { type = "item", name = "bob-glass", amount = 9 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-large", { type = "item", name = "bob-glass", amount = 16 })
  end

  if data.raw.item["bob-silver-plate"] then
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-small-2", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-2", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-large-2", "copper-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-2",
      { type = "item", name = "bob-silver-plate", amount = 4 }
    )
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-2", { type = "item", name = "bob-silver-plate", amount = 9 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-2",
      { type = "item", name = "bob-silver-plate", amount = 16 }
    )
  end

  if data.raw.item["bob-aluminium-plate"] then
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-small-2", "steel-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-2", "steel-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-large-2", "steel-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-2",
      { type = "item", name = "bob-aluminium-plate", amount = 4 }
    )
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-2", { type = "item", name = "bob-aluminium-plate", amount = 9 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-2",
      { type = "item", name = "bob-aluminium-plate", amount = 16 }
    )
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-2", "bob-aluminium-processing")
  end

  if data.raw.item["bob-tinned-copper-cable"] then
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-small-2", "copper-cable")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-2", "copper-cable")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-large-2", "copper-cable")
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-2",
      { type = "item", name = "bob-tinned-copper-cable", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-2",
      { type = "item", name = "bob-tinned-copper-cable", amount = 18 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-2",
      { type = "item", name = "bob-tinned-copper-cable", amount = 32 }
    )
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-small-3", "steel-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-3", "steel-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-large-3", "steel-plate")
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-3",
      { type = "item", name = "bob-titanium-plate", amount = 4 }
    )
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-3", { type = "item", name = "bob-titanium-plate", amount = 9 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-3",
      { type = "item", name = "bob-titanium-plate", amount = 16 }
    )
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "bob-titanium-processing")
  end

  if data.raw.item["bob-gold-plate"] then
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-small-3", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-3", "copper-plate")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-large-3", "copper-plate")
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-small-3", { type = "item", name = "bob-gold-plate", amount = 4 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-3", { type = "item", name = "bob-gold-plate", amount = 9 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-3",
      { type = "item", name = "bob-gold-plate", amount = 16 }
    )
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "bob-gold-processing")
  end

  if data.raw.item["bob-gilded-copper-cable"] then
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-small-3", "copper-cable")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-3", "copper-cable")
    bobmods.lib.recipe.remove_ingredient("bob-solar-panel-large-3", "copper-cable")
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-3",
      { type = "item", name = "bob-gilded-copper-cable", amount = 8 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-3",
      { type = "item", name = "bob-gilded-copper-cable", amount = 18 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-3",
      { type = "item", name = "bob-gilded-copper-cable", amount = 32 }
    )
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-3", "bob-advanced-processing-unit")
  end

  if data.raw.item["silicon-wafer"] then
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-small", { type = "item", name = "silicon-wafer", amount = 16 })
    bobmods.lib.recipe.add_ingredient("solar-panel", { type = "item", name = "silicon-wafer", amount = 36 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-large", { type = "item", name = "silicon-wafer", amount = 64 })
    bobmods.lib.tech.add_prerequisite("solar-energy", "bob-silicon-processing")
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-small-2", { type = "item", name = "silicon-wafer", amount = 12 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-2", { type = "item", name = "silicon-wafer", amount = 27 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-large-2", { type = "item", name = "silicon-wafer", amount = 48 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-small-3", { type = "item", name = "silicon-wafer", amount = 8 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-3", { type = "item", name = "silicon-wafer", amount = 18 })
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-large-3", { type = "item", name = "silicon-wafer", amount = 32 })
  elseif data.raw.item["bob-silicon-plate"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small",
      { type = "item", name = "bob-silicon-plate", amount = 2 }
    )
    bobmods.lib.recipe.add_ingredient("solar-panel", { type = "item", name = "bob-silicon-plate", amount = 4 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large",
      { type = "item", name = "bob-silicon-plate", amount = 8 }
    )
    bobmods.lib.tech.add_prerequisite("solar-energy", "bob-silicon-processing")
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-2",
      { type = "item", name = "bob-silicon-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-2", { type = "item", name = "bob-silicon-plate", amount = 3 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-2",
      { type = "item", name = "bob-silicon-plate", amount = 5 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-small-3",
      { type = "item", name = "bob-silicon-plate", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient("bob-solar-panel-3", { type = "item", name = "bob-silicon-plate", amount = 2 })
    bobmods.lib.recipe.add_ingredient(
      "bob-solar-panel-large-3",
      { type = "item", name = "bob-silicon-plate", amount = 3 }
    )
  end
end
