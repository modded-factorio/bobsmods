if data.raw.item["bob-brass-chest"] then
  bobmods.lib.recipe.replace_ingredient("bob-passive-provider-chest-2", "passive-provider-chest", "bob-brass-chest")
  bobmods.lib.recipe.replace_ingredient("bob-active-provider-chest-2", "active-provider-chest", "bob-brass-chest")
  bobmods.lib.recipe.replace_ingredient("bob-storage-chest-2", "storage-chest", "bob-brass-chest")
  bobmods.lib.recipe.replace_ingredient("bob-buffer-chest-2", "buffer-chest", "bob-brass-chest")
  bobmods.lib.recipe.replace_ingredient("bob-requester-chest-2", "requester-chest", "bob-brass-chest")

  bobmods.lib.recipe.add_ingredient(
    "bob-passive-provider-chest-2",
    { type = "item", name = "advanced-circuit", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-active-provider-chest-2",
    { type = "item", name = "advanced-circuit", amount = 3 }
  )
  bobmods.lib.recipe.add_ingredient("bob-storage-chest-2", { type = "item", name = "advanced-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-buffer-chest-2", { type = "item", name = "advanced-circuit", amount = 3 })
  bobmods.lib.recipe.add_ingredient("bob-requester-chest-2", { type = "item", name = "advanced-circuit", amount = 3 })
end

if data.raw.item["bob-titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient(
    "bob-passive-provider-chest-3",
    "bob-passive-provider-chest-2",
    "bob-titanium-chest"
  )
  bobmods.lib.recipe.replace_ingredient(
    "bob-active-provider-chest-3",
    "bob-active-provider-chest-2",
    "bob-titanium-chest"
  )
  bobmods.lib.recipe.replace_ingredient("bob-storage-chest-3", "bob-storage-chest-2", "bob-titanium-chest")
  bobmods.lib.recipe.replace_ingredient("bob-buffer-chest-3", "bob-buffer-chest-2", "bob-titanium-chest")
  bobmods.lib.recipe.replace_ingredient("bob-requester-chest-3", "bob-requester-chest-2", "bob-titanium-chest")

  bobmods.lib.recipe.add_ingredient(
    "bob-passive-provider-chest-3",
    { type = "item", name = "processing-unit", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient(
    "bob-active-provider-chest-3",
    { type = "item", name = "processing-unit", amount = 2 }
  )
  bobmods.lib.recipe.add_ingredient("bob-storage-chest-3", { type = "item", name = "processing-unit", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-buffer-chest-3", { type = "item", name = "processing-unit", amount = 2 })
  bobmods.lib.recipe.add_ingredient("bob-requester-chest-3", { type = "item", name = "processing-unit", amount = 2 })

  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient(
      "bob-passive-provider-chest-3",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-active-provider-chest-3",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-storage-chest-3",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-buffer-chest-3",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.recipe.add_ingredient(
      "bob-requester-chest-3",
      { type = "item", name = "bob-advanced-processing-unit", amount = 1 }
    )
    bobmods.lib.tech.add_prerequisite("logistic-system-3", "bob-advanced-processing-unit")
  end
else
  if data.raw.item["bob-advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "bob-passive-provider-chest-3",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "bob-active-provider-chest-3",
      "processing-unit",
      "bob-advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient("bob-storage-chest-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("bob-buffer-chest-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("bob-requester-chest-3", "processing-unit", "bob-advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("logistic-system-3", "bob-advanced-processing-unit")
  end
end
