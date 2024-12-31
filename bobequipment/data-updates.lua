require("prototypes.recipe.updates")
require("prototypes.technology.technology-updates")

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "energy-shield-mk2-equipment",
    "energy-shield-mk3-equipment",
    "energy-shield-mk4-equipment",
    "energy-shield-mk5-equipment",
    "energy-shield-mk6-equipment",
    "battery-equipment",
    "battery-mk2-equipment",
    "battery-mk3-equipment",
    "battery-mk4-equipment",
    "battery-mk5-equipment",
    "battery-mk6-equipment",
    "fission-reactor-equipment",
    "fission-reactor-equipment-2",
    "fission-reactor-equipment-3",
    "fission-reactor-equipment-4",
    "night-vision-equipment",
    "night-vision-equipment-2",
    "night-vision-equipment-3",
    "solar-panel-equipment",
    "solar-panel-equipment-2",
    "solar-panel-equipment-3",
    "personal-laser-defense-equipment",
    "personal-laser-defense-equipment-2",
    "personal-laser-defense-equipment-3",
    "personal-laser-defense-equipment-4",
    "personal-laser-defense-equipment-5",
    "personal-laser-defense-equipment-6",
    "exoskeleton-equipment",
    "exoskeleton-equipment-2",
    "exoskeleton-equipment-3",
    "personal-roboport-equipment",
    "personal-roboport-mk2-equipment",
    "personal-roboport-mk3-equipment",
    "personal-roboport-mk4-equipment",
    "personal-roboport-antenna-equipment",
    "personal-roboport-antenna-equipment-2",
    "personal-roboport-antenna-equipment-3",
    "personal-roboport-antenna-equipment-4",
    "personal-roboport-chargepad-equipment",
    "personal-roboport-chargepad-equipment-2",
    "personal-roboport-chargepad-equipment-3",
    "personal-roboport-chargepad-equipment-4",
    "personal-roboport-robot-equipment",
    "personal-roboport-robot-equipment-2",
    "personal-roboport-robot-equipment-3",
    "personal-roboport-robot-equipment-4",
  })
  if data.raw.recipe["solar-panel-equipment-4"] then
    bobmods.lib.recipe.update_recycling_recipe_single("solar-panel-equipment-4", false)
  end
  if data.raw.recipe["solar-panel-equipment-5"] then
    bobmods.lib.recipe.update_recycling_recipe_single("solar-panel-equipment-5", false)
  end
end
