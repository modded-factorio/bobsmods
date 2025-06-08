if not bobmods then
  bobmods = {}
end
if not bobmods.equipment then
  bobmods.equipment = {}
end

data:extend({
  {
    type = "damage-type",
    name = "bob-plasma",
  },
})

require("prototypes.category")
require("prototypes.equipment-grid")

require("prototypes.entities")
require("prototypes.projectiles")
require("prototypes.beams")

require("prototypes.battery")
require("prototypes.generator")
require("prototypes.fission-cell")
require("prototypes.laser-defense")
require("prototypes.plasma-defense")
require("prototypes.roboport")
require("prototypes.shield")
require("prototypes.solar-panel")
require("prototypes.speed")
require("prototypes.belt-immunity")
