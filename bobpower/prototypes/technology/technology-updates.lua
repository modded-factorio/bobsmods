if settings.startup["bobmods-power-accumulators"].value == true then
  if data.raw.item["bob-lithium-ion-battery"] and data.raw.technology["bob-battery-2"] then
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-2", "bob-battery-2")
  end

  if data.raw.item["bob-silver-zinc-battery"] and data.raw.technology["bob-battery-3"] then
    bobmods.lib.tech.add_prerequisite("bob-electric-energy-accumulators-3", "bob-battery-3")
  end
end

if settings.startup["bobmods-power-poles"].value == true then
  if bobmods.tech and bobmods.tech.advanced_logistic_science then
    bobmods.lib.tech.add_science_pack("bob-electric-pole-2", "chemical-science-pack", 1)
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-2", "chemical-science-pack", 1)
    bobmods.lib.tech.add_science_pack("bob-electric-pole-3", "bob-advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_science_pack("bob-electric-pole-4", "bob-advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_prerequisite("bob-electric-pole-3", "bob-advanced-logistic-science-pack")
    bobmods.lib.tech.add_science_pack("bob-electric-substation-3", "bob-advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_science_pack("bob-electric-substation-4", "bob-advanced-logistic-science-pack", 1)
    bobmods.lib.tech.add_prerequisite("bob-electric-substation-3", "bob-advanced-logistic-science-pack")
  end

  bobmods.lib.tech.set_science_pack_count("electric-energy-distribution-1", 100)
  bobmods.lib.tech.set_science_pack_count("electric-energy-distribution-2", 250)
end

if settings.startup["bobmods-power-solar"].value == true then
  bobmods.lib.tech.remove_recipe_unlock("solar-energy", "solar-panel")
  bobmods.lib.tech.add_recipe_unlock("solar-energy", "bob-solar-panel-small")
  bobmods.lib.tech.add_recipe_unlock("solar-energy", "solar-panel")
  bobmods.lib.tech.add_recipe_unlock("solar-energy", "bob-solar-panel-large")
end

if settings.startup["bobmods-power-accumulators"].value == true then
  bobmods.lib.tech.add_recipe_unlock("electric-energy-accumulators", "bob-fast-accumulator")
  bobmods.lib.tech.add_recipe_unlock("electric-energy-accumulators", "bob-slow-accumulator")
end
