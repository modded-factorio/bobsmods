require("prototypes.recipe-updates")
require("prototypes.technology-updates")

if settings.startup["bobmods-vehicleequipment-enablevehiclegrids"].value == true then
  data.raw["locomotive"]["locomotive"].equipment_grid = "bob-locomotive"
  data.raw["cargo-wagon"]["cargo-wagon"].equipment_grid = "bob-cargo-wagon"
  data.raw["fluid-wagon"]["fluid-wagon"].equipment_grid = "bob-wagon"
  data.raw["artillery-wagon"]["artillery-wagon"].equipment_grid = "bob-armoured-wagon"

  data.raw["cargo-wagon"]["cargo-wagon"].allow_robot_dispatch_in_automatic_mode = true
  data.raw.car.car.equipment_grid = "bob-car"
  data.raw.car.tank.equipment_grid = "bob-tank"
end

if data.raw["locomotive"]["bob-locomotive-2"] then
  data.raw["locomotive"]["bob-locomotive-2"].equipment_grid = "bob-locomotive-2"
end
if data.raw["cargo-wagon"]["bob-cargo-wagon-2"] then
  data.raw["cargo-wagon"]["bob-cargo-wagon-2"].equipment_grid = "bob-cargo-wagon-2"
  data.raw["cargo-wagon"]["bob-cargo-wagon-2"].allow_robot_dispatch_in_automatic_mode = true
end
if data.raw["fluid-wagon"]["bob-fluid-wagon-2"] then
  data.raw["fluid-wagon"]["bob-fluid-wagon-2"].equipment_grid = "bob-wagon-2"
end

if data.raw["locomotive"]["bob-locomotive-3"] then
  data.raw["locomotive"]["bob-locomotive-3"].equipment_grid = "bob-locomotive-3"
end
if data.raw["cargo-wagon"]["bob-cargo-wagon-3"] then
  data.raw["cargo-wagon"]["bob-cargo-wagon-3"].equipment_grid = "bob-cargo-wagon-3"
  data.raw["cargo-wagon"]["bob-cargo-wagon-3"].allow_robot_dispatch_in_automatic_mode = true
end
if data.raw["fluid-wagon"]["bob-fluid-wagon-3"] then
  data.raw["fluid-wagon"]["bob-fluid-wagon-3"].equipment_grid = "bob-wagon-3"
end

if data.raw["locomotive"]["bob-armoured-locomotive"] then
  data.raw["locomotive"]["bob-armoured-locomotive"].equipment_grid = "bob-armoured-locomotive"
end
if data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"] then
  data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].equipment_grid = "bob-armoured-cargo-wagon"
  data.raw["cargo-wagon"]["bob-armoured-cargo-wagon"].allow_robot_dispatch_in_automatic_mode = true
end
if data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"] then
  data.raw["fluid-wagon"]["bob-armoured-fluid-wagon"].equipment_grid = "bob-armoured-wagon-2"
end
if data.raw["artillery-wagon"]["bob-artillery-wagon-2"] then
  data.raw["artillery-wagon"]["bob-artillery-wagon-2"].equipment_grid = "bob-armoured-wagon-2"
end

if data.raw["locomotive"]["bob-armoured-locomotive-2"] then
  data.raw["locomotive"]["bob-armoured-locomotive-2"].equipment_grid = "bob-armoured-locomotive-2"
end
if data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"] then
  data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].equipment_grid = "bob-armoured-cargo-wagon-2"
  data.raw["cargo-wagon"]["bob-armoured-cargo-wagon-2"].allow_robot_dispatch_in_automatic_mode = true
end
if data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"] then
  data.raw["fluid-wagon"]["bob-armoured-fluid-wagon-2"].equipment_grid = "bob-armoured-wagon-3"
end
if data.raw["artillery-wagon"]["bob-artillery-wagon-3"] then
  data.raw["artillery-wagon"]["bob-artillery-wagon-3"].equipment_grid = "bob-armoured-wagon-3"
end

if data.raw.car["bob-tank-2"] then
  data.raw.car["bob-tank-2"].equipment_grid = "bob-tank-2"
end
if data.raw.car["bob-tank-3"] then
  data.raw.car["bob-tank-3"].equipment_grid = "bob-tank-3"
end

data.raw["equipment-grid"]["spidertron-equipment-grid"].equipment_categories =
  { "spidertron", "vehicle", "armoured-vehicle" }

if data.raw.car["vehicle-hauler"] then
  data.raw.car["vehicle-hauler"].equipment_grid = "bob-car"
end
if data.raw.car["vehicle-chaingunner"] then
  data.raw.car["vehicle-chaingunner"].equipment_grid = "bob-car"
end
if data.raw.car["vehicle-warden"] then
  data.raw.car["vehicle-warden"].equipment_grid = "unarmed-grid"
end
if data.raw.car["vehicle-laser-tank"] then
  data.raw.car["vehicle-laser-tank"].equipment_grid = "bob-tank-2"
end
if data.raw.car["vehicle-flame-tank"] then
  data.raw.car["vehicle-flame-tank"].equipment_grid = "bob-tank"
end
if data.raw.car["vehicle-flame-tumbler"] then
  data.raw.car["vehicle-flame-tumbler"].equipment_grid = "bob-car"
end
if data.raw.car.ironclad then
  data.raw.car.ironclad.equipment_grid = "boat-grid"
end
if data.raw.car["vehicle-miner-mk5"] then
  data.raw.car["vehicle-miner"].equipment_grid = "bob-tank"
  data.raw.car["vehicle-miner-mk2"].equipment_grid = "bob-tank"
  data.raw.car["vehicle-miner-mk3"].equipment_grid = "bob-tank-2"
  data.raw.car["vehicle-miner-mk4"].equipment_grid = "bob-tank-2"
  data.raw.car["vehicle-miner-mk5"].equipment_grid = "bob-tank-3"
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "bob-vehicle-roboport-antenna-equipment",
    "bob-vehicle-roboport-antenna-equipment-2",
    "bob-vehicle-roboport-antenna-equipment-3",
    "bob-vehicle-roboport-antenna-equipment-4",
    "bob-vehicle-roboport-chargepad-equipment",
    "bob-vehicle-roboport-chargepad-equipment-2",
    "bob-vehicle-roboport-chargepad-equipment-3",
    "bob-vehicle-roboport-chargepad-equipment-4",
    "bob-vehicle-roboport-robot-equipment",
    "bob-vehicle-roboport-robot-equipment-2",
    "bob-vehicle-roboport-robot-equipment-3",
    "bob-vehicle-roboport-robot-equipment-4",
    "bob-vehicle-solar-panel-equipment-1",
    "bob-vehicle-solar-panel-equipment-2",
    "bob-vehicle-solar-panel-equipment-3",
    "bob-vehicle-fission-cell-equipment-1",
    "bob-vehicle-fission-cell-equipment-2",
    "bob-vehicle-fission-cell-equipment-3",
    "bob-vehicle-fission-cell-equipment-4",
    "bob-vehicle-fission-cell-equipment-5",
    "bob-vehicle-fission-cell-equipment-6",
    "bob-vehicle-fission-reactor-equipment-1",
    "bob-vehicle-fission-reactor-equipment-2",
    "bob-vehicle-fission-reactor-equipment-3",
    "bob-vehicle-fission-reactor-equipment-4",
    "bob-vehicle-fission-reactor-equipment-5",
    "bob-vehicle-fission-reactor-equipment-6",
    "bob-vehicle-shield-equipment-3",
    "bob-vehicle-shield-equipment-4",
    "bob-vehicle-shield-equipment-5",
    "bob-vehicle-shield-equipment-6",
    "bob-vehicle-battery-equipment-3",
    "bob-vehicle-battery-equipment-4",
    "bob-vehicle-battery-equipment-5",
    "bob-vehicle-battery-equipment-6",
    "bob-vehicle-laser-defense-equipment-1",
    "bob-vehicle-laser-defense-equipment-2",
    "bob-vehicle-laser-defense-equipment-3",
    "bob-vehicle-laser-defense-equipment-4",
    "bob-vehicle-laser-defense-equipment-5",
    "bob-vehicle-laser-defense-equipment-6",
    "bob-vehicle-big-turret-equipment-1",
    "bob-vehicle-big-turret-equipment-2",
    "bob-vehicle-big-turret-equipment-3",
    "bob-vehicle-big-turret-equipment-4",
    "bob-vehicle-engine-equipment",
  })
  if data.raw.recipe["bob-vehicle-solar-panel-equipment-4"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-vehicle-solar-panel-equipment-4", false)
  end
  if data.raw.recipe["bob-vehicle-solar-panel-equipment-5"] then
    bobmods.lib.recipe.update_recycling_recipe_single("bob-vehicle-solar-panel-equipment-5", false)
  end
  if data.raw.recipe["bob-vehicle-roboport-equipment-1"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-vehicle-roboport-equipment-1",
      "bob-vehicle-roboport-equipment-2",
      "bob-vehicle-roboport-equipment-3",
      "bob-vehicle-roboport-equipment-4",
    })
  end
end
