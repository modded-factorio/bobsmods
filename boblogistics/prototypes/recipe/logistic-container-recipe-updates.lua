if data.raw.item["brass-chest"] then
  bobmods.lib.recipe.replace_ingredient(
    "logistic-chest-passive-provider-2",
    "logistic-chest-passive-provider",
    "brass-chest"
  )
  bobmods.lib.recipe.replace_ingredient(
    "logistic-chest-active-provider-2",
    "logistic-chest-active-provider",
    "brass-chest"
  )
  bobmods.lib.recipe.replace_ingredient("logistic-chest-storage-2", "logistic-chest-storage", "brass-chest")
  bobmods.lib.recipe.replace_ingredient("logistic-chest-buffer-2", "logistic-chest-buffer", "brass-chest")
  bobmods.lib.recipe.replace_ingredient("logistic-chest-requester-2", "logistic-chest-requester", "brass-chest")

  bobmods.lib.recipe.add_ingredient("logistic-chest-passive-provider-2", { "advanced-circuit", 3 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-active-provider-2", { "advanced-circuit", 3 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-storage-2", { "advanced-circuit", 3 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-buffer-2", { "advanced-circuit", 3 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-requester-2", { "advanced-circuit", 3 })
end

if data.raw.item["titanium-chest"] then
  bobmods.lib.recipe.replace_ingredient(
    "logistic-chest-passive-provider-3",
    "logistic-chest-passive-provider-2",
    "titanium-chest"
  )
  bobmods.lib.recipe.replace_ingredient(
    "logistic-chest-active-provider-3",
    "logistic-chest-active-provider-2",
    "titanium-chest"
  )
  bobmods.lib.recipe.replace_ingredient("logistic-chest-storage-3", "logistic-chest-storage-2", "titanium-chest")
  bobmods.lib.recipe.replace_ingredient("logistic-chest-buffer-3", "logistic-chest-buffer-2", "titanium-chest")
  bobmods.lib.recipe.replace_ingredient("logistic-chest-requester-3", "logistic-chest-requester-2", "titanium-chest")

  bobmods.lib.recipe.add_ingredient("logistic-chest-passive-provider-3", { "processing-unit", 2 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-active-provider-3", { "processing-unit", 2 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-storage-3", { "processing-unit", 2 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-buffer-3", { "processing-unit", 2 })
  bobmods.lib.recipe.add_ingredient("logistic-chest-requester-3", { "processing-unit", 2 })

  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("logistic-chest-passive-provider-3", { "advanced-processing-unit", 1 })
    bobmods.lib.recipe.add_ingredient("logistic-chest-active-provider-3", { "advanced-processing-unit", 1 })
    bobmods.lib.recipe.add_ingredient("logistic-chest-storage-3", { "advanced-processing-unit", 1 })
    bobmods.lib.recipe.add_ingredient("logistic-chest-buffer-3", { "advanced-processing-unit", 1 })
    bobmods.lib.recipe.add_ingredient("logistic-chest-requester-3", { "advanced-processing-unit", 1 })
    bobmods.lib.tech.add_prerequisite("logistic-system-3", "advanced-electronics-3")
  end
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.replace_ingredient(
      "logistic-chest-passive-provider-3",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient(
      "logistic-chest-active-provider-3",
      "processing-unit",
      "advanced-processing-unit"
    )
    bobmods.lib.recipe.replace_ingredient("logistic-chest-storage-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("logistic-chest-buffer-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.recipe.replace_ingredient("logistic-chest-requester-3", "processing-unit", "advanced-processing-unit")
    bobmods.lib.tech.add_prerequisite("logistic-system-3", "advanced-electronics-3")
  end
end
