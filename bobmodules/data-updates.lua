require("prototypes.recipe.beacon-updates")
require("prototypes.recipe.electronics-updates")
require("prototypes.recipe.module-updates")
require("prototypes.recipe.module-merged-updates")
require("prototypes.technology.module-updates")

if mods["classic-beacon"] then
  require("__classic-beacon__.prototypes.beacon")
  data.raw.item["bob-beacon-2"].icon = data.raw.item["beacon"].icon
  data.raw.item["bob-beacon-3"].icon = data.raw.item["beacon"].icon
  data.raw.beacon["bob-beacon-2"].icon = data.raw.item["beacon"].icon
  data.raw.beacon["bob-beacon-3"].icon = data.raw.item["beacon"].icon
  data.raw.beacon["bob-beacon-2"].graphics_set = data.raw.beacon["beacon"].graphics_set
  data.raw.beacon["bob-beacon-3"].graphics_set = data.raw.beacon["beacon"].graphics_set
  data.raw.technology["effect-transmission-2"].icon = data.raw.technology["effect-transmission"].icon
  data.raw.technology["effect-transmission-3"].icon = data.raw.technology["effect-transmission"].icon
  data.raw.technology["effect-transmission-2"].icon_size = 128
  data.raw.technology["effect-transmission-3"].icon_size = 128
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
