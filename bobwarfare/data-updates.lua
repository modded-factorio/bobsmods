require("prototypes.overides")
require("prototypes.recipe.recipe-updates")
require("prototypes.technology.technology-updates")
require("prototypes.productivity-limitations")

require("prototypes.robots-updates")
require("prototypes.train-updates")
require("prototypes.recipe.drone-updates")
require("prototypes.spidertron-updates")

if settings.startup["bobmods-warfare-drainlesslaserturrets"].value == true then
  for index, turret in pairs(data.raw["electric-turret"]) do
    turret.energy_source.drain = "0W"
  end
end

table.insert(data.raw.car.tank.resistances, { type = "plasma", decrease = 15, percent = 50 })

if settings.startup["bobmods-warfare-vehicleflamethrowerstartsfires"].value == true then
  data.raw.ammo["flamethrower-ammo"].ammo_type = {
    {
      category = "flamethrower",
      clamp_position = true,
      source_type = "default",
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = "handheld-flamethrower-fire-stream"
        }
      }
    },
    {
      category = "flamethrower",
      clamp_position = true,
      source_type = "vehicle",
      target_type = "position",
      consumption_modifier = 1.125,
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = "flamethrower-fire-stream"
        }
      }
    }
  }
end
