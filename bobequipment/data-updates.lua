require("prototypes.recipe.updates")
require("prototypes.technology.technology-updates")
require("prototypes.armor-updates")

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "energy-shield-mk2-equipment",
    "bob-energy-shield-mk3-equipment",
    "bob-energy-shield-mk4-equipment",
    "bob-energy-shield-mk5-equipment",
    "bob-energy-shield-mk6-equipment",
    "battery-equipment",
    "battery-mk2-equipment",
    "bob-battery-mk3-equipment",
    "bob-battery-mk4-equipment",
    "bob-battery-mk5-equipment",
    "bob-battery-mk6-equipment",
    "fission-reactor-equipment",
    "bob-fission-reactor-equipment-2",
    "bob-fission-reactor-equipment-3",
    "bob-fission-reactor-equipment-4",
    "night-vision-equipment",
    "bob-night-vision-equipment-2",
    "bob-night-vision-equipment-3",
    "solar-panel-equipment",
    "bob-solar-panel-equipment-2",
    "bob-solar-panel-equipment-3",
    "personal-laser-defense-equipment",
    "bob-personal-laser-defense-equipment-2",
    "bob-personal-laser-defense-equipment-3",
    "bob-personal-laser-defense-equipment-4",
    "bob-personal-laser-defense-equipment-5",
    "bob-personal-laser-defense-equipment-6",
    "exoskeleton-equipment",
    "bob-exoskeleton-equipment-2",
    "bob-exoskeleton-equipment-3",
    "personal-roboport-equipment",
    "personal-roboport-mk2-equipment",
    "bob-personal-roboport-antenna-equipment",
    "bob-personal-roboport-antenna-equipment-2",
    "bob-personal-roboport-antenna-equipment-3",
    "bob-personal-roboport-antenna-equipment-4",
    "bob-personal-roboport-chargepad-equipment",
    "bob-personal-roboport-chargepad-equipment-2",
    "bob-personal-roboport-chargepad-equipment-3",
    "bob-personal-roboport-chargepad-equipment-4",
    "bob-personal-roboport-robot-equipment",
    "bob-personal-roboport-robot-equipment-2",
    "bob-personal-roboport-robot-equipment-3",
    "bob-personal-roboport-robot-equipment-4",
    "modular-armor",
    "power-armor",
    "power-armor-mk2",
    "bob-power-armor-mk3",
    "bob-power-armor-mk4",
    "bob-power-armor-mk5",
  })
  if data.raw.recipe["bob-solar-panel-equipment-4"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-solar-panel-equipment-4", false)
  end
  if data.raw.recipe["bob-solar-panel-equipment-5"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-solar-panel-equipment-5", false)
  end
  if data.raw.recipe["bob-personal-roboport-mk3-equipment"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-personal-roboport-mk3-equipment",
      "bob-personal-roboport-mk4-equipment",
    })
  end
end
