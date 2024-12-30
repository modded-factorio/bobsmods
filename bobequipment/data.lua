if not bobmods then
  bobmods = {}
end
if not bobmods.equipment then
  bobmods.equipment = {}
end

function bobmods.equipment.technology_icon_constant_equipment(technology_icon)
  local scale = 0.5
  local icons = {
    technology_icon,
    {
      icon = "__bobequipment__/graphics/icons/technology/constant-equipment.png",
      icon_size = 104,
      scale = scale,
      shift = { 48 * scale, 76 * scale },
    },
  }
  return icons
end

require("prototypes.item.equipment")
require("prototypes.recipe.equipment")
require("prototypes.technology.equipment")
require("prototypes.equipment.equipment")
require("prototypes.beams")

require("prototypes.personal-roboport")
