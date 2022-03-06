if not bobmods then bobmods = {} end
if not bobmods.equipment then bobmods.equipment = {} end

data:extend(
{
  {
    type = "damage-type",
    name = "plasma"
  },
}
)


function bobmods.equipment.technology_icon_constant_vehicle_equipment(technology_icon)
  local scale = ((technology_icon.icon_size or 256)/256) * (technology_icon.scale or 1)
  local icons =
  {
    technology_icon,
    {
      icon = "__bobvehicleequipment__/graphics/technology/constant-vehicle-equipment.png",
      icon_size = 128,
      scale = scale,
      shift = {70 * scale, 100 * scale}
    }
  }
  return icons
end


require("prototypes.category")
require("prototypes.equipment-grid")

require("prototypes.entities")
require("prototypes.projectiles")
require("prototypes.beams")

require("prototypes.battery")
require("prototypes.generator")
require("prototypes.fusion-cell")
require("prototypes.laser-defense")
require("prototypes.plasma-defense")
require("prototypes.roboport")
require("prototypes.shield")
require("prototypes.solar-panel")
require("prototypes.speed")
require("prototypes.belt-immunity")

