if settings.startup["bobmods-power-accumulators"].value == true then

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.replace_ingredient("large-accumulator-2", "battery", "lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("fast-accumulator-2", "battery", "lithium-ion-battery")
  bobmods.lib.recipe.replace_ingredient("slow-accumulator-2", "battery", "lithium-ion-battery")
  bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "battery-2")
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-4", "titanium-processing")
else
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "steel-plate", "aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "steel-plate", "aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-4", "aluminium-processing")
  end
end

if data.raw.item["silver-zinc-battery"] then
  bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "battery", "silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "battery", "silver-zinc-battery")
  bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "battery", "silver-zinc-battery")
  bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-4", "battery-3")
else
  if data.raw.item["lithium-ion-battery"] then
    bobmods.lib.recipe.replace_ingredient("large-accumulator-3", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("fast-accumulator-3", "battery", "lithium-ion-battery")
    bobmods.lib.recipe.replace_ingredient("slow-accumulator-3", "battery", "lithium-ion-battery")
  end
end

end
