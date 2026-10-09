require("prototypes.recipe.beacon-updates")
require("prototypes.recipe.electronics-updates")
require("prototypes.recipe.module-updates")
require("prototypes.recipe.module-merged-updates")
require("prototypes.technology.module-updates")

if mods["module-category-defaults"] then
  bobmods.lib.safe_insert(ModuleCategoryDefaults.default_categories, "pollution-clean")
  bobmods.lib.safe_insert(ModuleCategoryDefaults.default_categories, "pollution-create")
  bobmods.lib.safe_insert(ModuleCategoryDefaults.default_categories, "god")
end

if mods["recycler"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "beacon",
    "bob-beacon-2",
    "bob-beacon-3",
    "bob-efficiency-module-4",
    "bob-efficiency-module-5",
    "bob-efficiency-processor",
    "bob-efficiency-processor-2",
    "bob-efficiency-processor-3",
    "bob-module-circuit-board",
    "bob-module-contact",
    "bob-module-processor-board",
    "bob-module-processor-board-2",
    "bob-module-processor-board-3",
    "bob-pollution-clean-module-4",
    "bob-pollution-clean-module-5",
    "bob-pollution-clean-processor",
    "bob-pollution-clean-processor-2",
    "bob-pollution-clean-processor-3",
    "bob-pollution-create-module-4",
    "bob-pollution-create-module-5",
    "bob-pollution-create-processor",
    "bob-pollution-create-processor-2",
    "bob-pollution-create-processor-3",
    "bob-productivity-module-4",
    "bob-productivity-module-5",
    "bob-productivity-processor",
    "bob-productivity-processor-2",
    "bob-productivity-processor-3",
    "bob-speed-module-4",
    "bob-speed-module-5",
    "bob-speed-processor",
    "bob-speed-processor-2",
    "bob-speed-processor-3",
  })
  if data.raw.recipe["bob-god-module"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-god-module",
      "bob-god-module-productivity",
    })
  end
  if mods["quality"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-quality-module-4",
      "bob-quality-module-5",
      "bob-quality-processor",
      "bob-quality-processor-2",
      "bob-quality-processor-3",
    })
    if data.raw.recipe["bob-god-module"] then
      bobmods.lib.recipe.update_recycling_recipe({
        "bob-god-module-quality",
      })
    end
  end
end
