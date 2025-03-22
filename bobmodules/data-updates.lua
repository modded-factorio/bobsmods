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

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "bob-module-contact",
    "bob-module-circuit-board",
    "bob-module-processor-board",
    "bob-module-processor-board-2",
    "bob-module-processor-board-3",
    "bob-speed-processor",
    "bob-speed-processor-2",
    "bob-speed-processor-3",
    "bob-efficiency-processor",
    "bob-efficiency-processor-2",
    "bob-efficiency-processor-3",
    "bob-productivity-processor",
    "bob-productivity-processor-2",
    "bob-productivity-processor-3",
    "bob-pollution-clean-processor",
    "bob-pollution-clean-processor-2",
    "bob-pollution-clean-processor-3",
    "bob-pollution-create-processor",
    "bob-pollution-create-processor-2",
    "bob-pollution-create-processor-3",
    "bob-quality-processor",
    "bob-quality-processor-2",
    "bob-quality-processor-3",
    "bob-speed-module-4",
    "bob-speed-module-5",
    "bob-efficiency-module-4",
    "bob-efficiency-module-5",
    "bob-productivity-module-4",
    "bob-productivity-module-5",
    "bob-pollution-clean-module-4",
    "bob-pollution-clean-module-5",
    "bob-pollution-create-module-4",
    "bob-pollution-create-module-5",
    "bob-quality-module-4",
    "bob-quality-module-5",
    "bob-beacon-2",
    "bob-beacon-3",
  })
  if data.raw.recipe["bob-god-module"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-god-module",
      "bob-god-module-productivity",
      "bob-god-module-quality",
    })
  end
end
