if data.raw.item["brass-chest"] then
  bobmods.lib.recipe.replace_ingredient("passive-provider-chest-2", "passive-provider-chest", "brass-chest")
  bobmods.lib.recipe.replace_ingredient("active-provider-chest-2", "active-provider-chest", "brass-chest")
  bobmods.lib.recipe.replace_ingredient("storage-chest-2", "storage-chest", "brass-chest")
  bobmods.lib.recipe.replace_ingredient("buffer-chest-2", "buffer-chest", "brass-chest")
  bobmods.lib.recipe.replace_ingredient("requester-chest-2", "requester-chest", "brass-chest")

  bobmods.lib.recipe.add_ingredient(
    "passive-provider-chest-2",
    { type = "item", name = "advanced-circuit", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient("active-provider-2", { type = "item", name = "advanced-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient("storage-chest-2", { type = "item", name = "advanced-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient("buffer-chest-2", { type = "item", name = "advanced-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient("requester-chest-2", { type = "item", name = "advanced-circuit", amount = 3 })
end

if data.raw.item["titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient("passive-provider-chest-3", "passive-provider-chest-2", "titanium-chest")
  bobmods.lib.recipe.replace_ingredient("active-provider-chest-3", "active-provider-chest-2", "titanium-chest")
  bobmods.lib.recipe.replace_ingredient("storage-chest-3", "storage-chest-2", "titanium-chest")
  bobmods.lib.recipe.replace_ingredient("buffer-chest-3", "buffer-chest-2", "titanium-chest")
  bobmods.lib.recipe.replace_ingredient("requester-chest-3", "requester-chest-2", "titanium-chest")

  bobmods.lib.recipe.add_ingredient("passive-provider-chest-3", { type = "item", name = "processing-unit", amount = 2 })
  bobmods.lib.recipe.add_ingredient("active-provider-chest-3", { type = "item", name = "processing-unit", amount = 2 })
  bobmods.lib.recipe.add_ingredient("storage-chest-3", { type = "item", name = "processing-unit", amount = 2 })
  bobmods.lib.recipe.add_ingredient("buffer-chest-3", { type = "item", name = "processing-unit", amount = 2 })
  bobmods.lib.recipe.add_ingredient("requester-chest-3", { type = "item", name = "processing-unit", amount = 2 })

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient(
      "passive-provider-chest-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "active-provider-chest-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "storage-chest-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "buffer-chest-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "requester-chest-3",
      { type = "item", name = "advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("logistic-system-3", "advanced-electronics-3")
  end
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient("passive-provider-chest-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("active-provider-chest-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("storage-chest-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("buffer-chest-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("requester-chest-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("logistic-system-3", "advanced-electronics-3")
  end
end
