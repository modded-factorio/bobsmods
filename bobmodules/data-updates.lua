require("prototypes.recipe.beacon-updates")
require("prototypes.recipe.electronics-updates")
require("prototypes.recipe.module-updates")
require("prototypes.recipe.module-merged-updates")
require("prototypes.technology.module-updates")

if data.raw["recipe-category"]["electronics-with-fluid"] then
  data.raw.recipe["bob-module-circuit-board"].category = "electronics-with-fluid"
  data.raw.recipe["bob-module-processor-board"].category = "electronics-with-fluid"
  data.raw.recipe["bob-module-processor-board-2"].category = "electronics-with-fluid"
  data.raw.recipe["bob-module-processor-board-3"].category = "electronics-with-fluid"
end

if data.raw["recipe-category"]["bob-electronics"] then
  data.raw.recipe["bob-speed-processor"].category = "bob-electronics"
  data.raw.recipe["bob-efficiency-processor"].category = "bob-electronics"
  data.raw.recipe["bob-productivity-processor"].category = "bob-electronics"
  data.raw.recipe["bob-pollution-clean-processor"].category = "bob-electronics"
  data.raw.recipe["bob-pollution-create-processor"].category = "bob-electronics"
  if mods["quality"] then
    data.raw.recipe["bob-quality-processor"].category = "bob-electronics"
  end
end

if data.raw["recipe-category"]["bob-electronics-machine"] then
  data.raw.recipe["bob-speed-processor-2"].category = "bob-electronics-machine"
  data.raw.recipe["bob-efficiency-processor-2"].category = "bob-electronics-machine"
  data.raw.recipe["bob-productivity-processor-2"].category = "bob-electronics-machine"
  data.raw.recipe["bob-pollution-clean-processor-2"].category = "bob-electronics-machine"
  data.raw.recipe["bob-pollution-create-processor-2"].category = "bob-electronics-machine"
  data.raw.recipe["bob-speed-processor-3"].category = "bob-electronics-machine"
  data.raw.recipe["bob-efficiency-processor-3"].category = "bob-electronics-machine"
  data.raw.recipe["bob-productivity-processor-3"].category = "bob-electronics-machine"
  data.raw.recipe["bob-pollution-clean-processor-3"].category = "bob-electronics-machine"
  data.raw.recipe["bob-pollution-create-processor-3"].category = "bob-electronics-machine"
  if mods["quality"] then
    data.raw.recipe["bob-quality-processor-2"].category = "bob-electronics-machine"
    data.raw.recipe["bob-quality-processor-3"].category = "bob-electronics-machine"
  end
end
