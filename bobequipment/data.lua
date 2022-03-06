if not bobmods then bobmods = {} end
if not bobmods.equipment then bobmods.equipment = {} end

function bobmods.equipment.technology_icon_constant_equipment(technology_icon)
  local scale = ((technology_icon.icon_size or 256)/256) * (technology_icon.scale or 1)
  local icons =
  {
    technology_icon,
    {
      icon = "__core__/graphics/icons/technology/constants/constant-equipment.png",
      icon_size = 128,
      icon_mipmaps = 3,
      scale = scale,
      shift = {100 * scale, 100 * scale}
    }
  }
  return icons
end


require("prototypes.item.equipment")
require("prototypes.recipe.equipment")
require("prototypes.technology.equipment")
require("prototypes.equipment.equipment")
require("prototypes.beams")

require("prototypes.personal-roboport")
