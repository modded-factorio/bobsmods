if settings.startup["bobmods-power-accumulators"].value == true then
  if data.raw.item["bob-lithium-ion-battery"] and data.raw.technology["battery-2"] then
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-2", "battery-2")
  end

  if data.raw.item["bob-silver-zinc-battery"] and data.raw.technology["battery-3"] then
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "battery-3")
  end
end

if settings.startup["bobmods-power-poles"].value == true then
  if bobmods.tech and bobmods.tech.advanced_logistic_science then
    bobmods.lib.tech.add_science_pack("electric-pole-2", "chemical-science-pack", 1)
    bobmods.lib.tech.add_prerequisite("electric-pole-2", "chemical-science-pack", 1)
    bobmods.lib.tech.add_science_pack("electric-pole-3", "advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_science_pack("electric-pole-4", "advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_prerequisite("electric-pole-3", "advanced-logistic-science-pack")
    bobmods.lib.tech.add_science_pack("electric-substation-3", "advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_science_pack("electric-substation-4", "advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_prerequisite("electric-substation-3", "advanced-logistic-science-pack")
  end

  bobmods.lib.tech.set_science_pack_count("electric-energy-distribution-1", 100)
  bobmods.lib.tech.set_science_pack_count("electric-energy-distribution-2", 250)
end

if settings.startup["bobmods-power-solar"].value == true then
  bobmods.lib.tech.add_recipe_unlock("solar-energy", "solar-panel-small")
  bobmods.lib.tech.add_recipe_unlock("solar-energy", "solar-panel-large")
end

if settings.startup["bobmods-power-accumulators"].value == true then
  bobmods.lib.tech.add_recipe_unlock("electric-energy-accumulators", "fast-accumulator")
  bobmods.lib.tech.add_recipe_unlock("electric-energy-accumulators", "slow-accumulator")
end
