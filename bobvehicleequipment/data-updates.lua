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
