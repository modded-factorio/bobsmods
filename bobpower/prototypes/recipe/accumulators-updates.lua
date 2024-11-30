if settings.startup["bobmods-power-accumulators"].value == true then
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("large-accumulator-2", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("fast-accumulator-2", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("slow-accumulator-2", "battery", "lithium-ion-battery")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-2", "battery-2")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "titanium-processing")
  else
    if data.raw.item["bob-aluminium-plate"] then
      bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "aluminium-processing")
    end
  end

  if data.raw.item["silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "battery", "silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "battery", "silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "battery", "silver-zinc-battery")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "battery-3")
  else
    if data.raw.item["lithium-ion-battery"] then
      bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "battery", "lithium-ion-battery")
      bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "battery", "lithium-ion-battery")
      bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "battery", "lithium-ion-battery")
    end
  end

  bobmods.lib.recipe.add_ingredient("accumulator", { type = "item", name = "electronic-circuit", amount = 2 })
  bobmods.lib.recipe.set_ingredient("accumulator", { type = "item", name = "battery", amount = 10 })
end
