if settings.startup["bobmods-power-accumulators"].value == true then
  if data.raw.item["bob-lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("bob-large-accumulator-2", "battery", "bob-lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("bob-fast-accumulator-2", "battery", "bob-lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("bob-slow-accumulator-2", "battery", "bob-lithium-ion-battery")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-2", "bob-battery-2")
  end

  if data.raw.item["bob-titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("bob-large-accumulator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-fast-accumulator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.recipe.replace_ingredient("bob-slow-accumulator-3", "steel-plate", "bob-titanium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "bob-titanium-processing")
  else
    if data.raw.item["bob-aluminium-plate"] then
      bobmods.lib.recipe.replace_ingredient("bob-large-accumulator-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("bob-fast-accumulator-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.recipe.replace_ingredient("bob-slow-accumulator-3", "steel-plate", "bob-aluminium-plate")
      bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "bob-aluminium-processing")
    end
  end

  if data.raw.item["bob-silver-zinc-battery"] then
    bobmods.lib.recipe.replace_ingredient("bob-large-accumulator-3", "battery", "bob-silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("bob-fast-accumulator-3", "battery", "bob-silver-zinc-battery")
    bobmods.lib.recipe.replace_ingredient("bob-slow-accumulator-3", "battery", "bob-silver-zinc-battery")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "bob-battery-3")
  else
    if data.raw.item["bob-lithium-ion-battery"] then
      bobmods.lib.recipe.replace_ingredient("bob-large-accumulator-3", "battery", "bob-lithium-ion-battery")
      bobmods.lib.recipe.replace_ingredient("bob-fast-accumulator-3", "battery", "bob-lithium-ion-battery")
      bobmods.lib.recipe.replace_ingredient("bob-slow-accumulator-3", "battery", "bob-lithium-ion-battery")
    end
  end

  bobmods.lib.recipe.add_ingredient("accumulator", { type = "item", name = "electronic-circuit", amount = 2 })
  bobmods.lib.recipe.set_ingredient("accumulator", { type = "item", name = "battery", amount = 10 })
end
