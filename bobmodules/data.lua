if not bobmods then
  bobmods = {}
end
if not bobmods.modules then
  bobmods.modules = {}
end

bobmods.modules.SpeedPerLevel = settings.startup["bobmods-modules-perlevel-bonus-speed"].value
bobmods.modules.PollutionPerLevel = settings.startup["bobmods-modules-perlevel-bonus-pollution"].value
bobmods.modules.ConsumptionPerLevel = settings.startup["bobmods-modules-perlevel-bonus-consumption"].value
bobmods.modules.ProductivityPerLevel = settings.startup["bobmods-modules-perlevel-bonus-productivity"].value
bobmods.modules.PollutionCreatePerLevel = settings.startup["bobmods-modules-perlevel-bonus-pollutioncreate"].value
bobmods.modules.SpeedPenaltyPerLevel = settings.startup["bobmods-modules-perlevel-penalty-speed"].value
bobmods.modules.PollutionPenaltyPerLevel = settings.startup["bobmods-modules-perlevel-penalty-pollution"].value
bobmods.modules.ConsumptionPenaltyPerLevel = settings.startup["bobmods-modules-perlevel-penalty-consumption"].value

bobmods.modules.SpeedBonus = settings.startup["bobmods-modules-start-bonus-speed"].value
bobmods.modules.PollutionBonus = settings.startup["bobmods-modules-start-bonus-pollution"].value
bobmods.modules.ConsumptionBonus = settings.startup["bobmods-modules-start-bonus-consumption"].value
bobmods.modules.ProductivityBonus = settings.startup["bobmods-modules-start-bonus-productivity"].value
bobmods.modules.PollutionCreateBonus = settings.startup["bobmods-modules-start-bonus-pollutioncreate"].value
bobmods.modules.SpeedPenalty = settings.startup["bobmods-modules-start-penalty-speed"].value
bobmods.modules.PollutionPenalty = settings.startup["bobmods-modules-start-penalty-pollution"].value
bobmods.modules.ConsumptionPenalty = settings.startup["bobmods-modules-start-penalty-consumption"].value

require("prototypes.category")
require("prototypes.lab")
require("prototypes.beacon")

require("prototypes.item.module")
require("prototypes.item.module-merged")
require("prototypes.item.electronics")

require("prototypes.recipe.module")
require("prototypes.recipe.module-merged")
require("prototypes.recipe.electronics")

require("prototypes.technology.module")
require("prototypes.technology.module-merged")

if settings.startup["bobmods-modules-enableproductivitylimitation"].value == true then
  for i, module in pairs(data.raw.module) do
    if module.effect.productivity then
      module.limitation = productivity_module_limitation()
      if not module.limitation_message_key then
        module.limitation_message_key = "production-module-usable-only-on-intermediates"
      end
    end
  end
end
