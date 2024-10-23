require("prototypes.recipe.beacon-updates")
require("prototypes.recipe.electronics-updates")
require("prototypes.recipe.module-updates")
require("prototypes.recipe.module-merged-updates")
require("prototypes.technology.module-updates")

if settings.startup["bobmods-modules-transmitproductivity"].value == true then
  for i, beacon in pairs(data.raw.beacon) do
    table.insert(beacon.allowed_effects, "productivity")
  end
end
if settings.startup["bobmods-modules-transmitquality"].value == true then
  for i, beacon in pairs(data.raw.beacon) do
    table.insert(beacon.allowed_effects, "quality")
  end
end

bobmods.lib.tech.remove_science_pack("effect-transmission", "utility-science-pack")
bobmods.lib.tech.remove_science_pack("effect-transmission", "production-science-pack")

bobmods.lib.tech.remove_prerequisite("effect-transmission", "production-science-pack")
bobmods.lib.tech.add_prerequisite("effect-transmission", "modules")
bobmods.lib.tech.add_prerequisite("effect-transmission", "chemical-science-pack")

bobmods.lib.tech.remove_prerequisite("speed-module-2", "processing-unit")
bobmods.lib.tech.remove_prerequisite("productivity-module-2", "processing-unit")
bobmods.lib.tech.remove_prerequisite("efficiency-module-2", "processing-unit")
bobmods.lib.tech.remove_prerequisite("speed-module-3", "production-science-pack")
bobmods.lib.tech.remove_prerequisite("productivity-module-3", "production-science-pack")
bobmods.lib.tech.remove_prerequisite("efficiency-module-3", "production-science-pack")

if data.raw["recipe-category"]["electronics-with-fluid"] then
  data.raw.recipe["module-circuit-board"].category = "electronics-with-fluid"
  data.raw.recipe["module-processor-board"].category = "electronics-with-fluid"
  data.raw.recipe["module-processor-board-2"].category = "electronics-with-fluid"
  data.raw.recipe["module-processor-board-3"].category = "electronics-with-fluid"
end

if data.raw["recipe-category"]["electronics"] then
  data.raw.recipe["speed-processor"].category = "electronics"
  data.raw.recipe["efficiency-processor"].category = "electronics"
  data.raw.recipe["productivity-processor"].category = "electronics"
  data.raw.recipe["pollution-clean-processor"].category = "electronics"
  data.raw.recipe["pollution-create-processor"].category = "electronics"
end

if data.raw["recipe-category"]["electronics-machine"] then
  data.raw.recipe["speed-processor-2"].category = "electronics-machine"
  data.raw.recipe["efficiency-processor-2"].category = "electronics-machine"
  data.raw.recipe["productivity-processor-2"].category = "electronics-machine"
  data.raw.recipe["pollution-clean-processor-2"].category = "electronics-machine"
  data.raw.recipe["pollution-create-processor-2"].category = "electronics-machine"
  data.raw.recipe["speed-processor-3"].category = "electronics-machine"
  data.raw.recipe["efficiency-processor-3"].category = "electronics-machine"
  data.raw.recipe["productivity-processor-3"].category = "electronics-machine"
  data.raw.recipe["pollution-clean-processor-3"].category = "electronics-machine"
  data.raw.recipe["pollution-create-processor-3"].category = "electronics-machine"
end

bobmods.lib.module.add_productivity_limitation("module-case")
bobmods.lib.module.add_productivity_limitation("module-contact")
bobmods.lib.module.add_productivity_limitation("module-circuit-board")
bobmods.lib.module.add_productivity_limitation("module-processor-board")
bobmods.lib.module.add_productivity_limitation("module-processor-board-2")
bobmods.lib.module.add_productivity_limitation("module-processor-board-3")
bobmods.lib.module.add_productivity_limitation("speed-processor")
bobmods.lib.module.add_productivity_limitation("efficiency-processor")
bobmods.lib.module.add_productivity_limitation("productivity-processor")
bobmods.lib.module.add_productivity_limitation("pollution-clean-processor")
bobmods.lib.module.add_productivity_limitation("pollution-create-processor")
bobmods.lib.module.add_productivity_limitation("speed-processor-2")
bobmods.lib.module.add_productivity_limitation("efficiency-processor-2")
bobmods.lib.module.add_productivity_limitation("productivity-processor-2")
bobmods.lib.module.add_productivity_limitation("pollution-clean-processor-2")
bobmods.lib.module.add_productivity_limitation("pollution-create-processor-2")
bobmods.lib.module.add_productivity_limitation("speed-processor-3")
bobmods.lib.module.add_productivity_limitation("efficiency-processor-3")
bobmods.lib.module.add_productivity_limitation("productivity-processor-3")
bobmods.lib.module.add_productivity_limitation("pollution-clean-processor-3")
bobmods.lib.module.add_productivity_limitation("pollution-create-processor-3")
