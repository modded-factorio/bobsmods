require("prototypes.recipe.beacon-updates")
require("prototypes.recipe.electronics-updates")
require("prototypes.recipe.module-updates")
require("prototypes.recipe.module-merged-updates")
require("prototypes.technology.module-updates")

if mods["aai-industry"] then
  if not mods["bobgreenhouse"] then
    bobmods.lib.recipe.replace_ingredient("bob-module-circuit-board", "bob-wooden-board", "bob-phenolic-board")
  end
end

bobmods.lib.recipe.add_additional_category("bob-module-circuit-board", "electronics-with-fluid")
bobmods.lib.recipe.add_additional_category("bob-module-processor-board", "electronics-with-fluid")
bobmods.lib.recipe.add_additional_category("bob-module-processor-board-2", "electronics-with-fluid")
bobmods.lib.recipe.add_additional_category("bob-module-processor-board-3", "electronics-with-fluid")

bobmods.lib.recipe.add_additional_category("bob-module-case", "electronics")
bobmods.lib.recipe.add_additional_category("bob-module-contact", "electronics")
bobmods.lib.recipe.add_additional_category("bob-speed-processor", "electronics")
bobmods.lib.recipe.add_additional_category("bob-speed-processor-2", "electronics")
bobmods.lib.recipe.add_additional_category("bob-speed-processor-3", "electronics")
bobmods.lib.recipe.add_additional_category("bob-efficiency-processor", "electronics")
bobmods.lib.recipe.add_additional_category("bob-efficiency-processor-2", "electronics")
bobmods.lib.recipe.add_additional_category("bob-efficiency-processor-3", "electronics")
bobmods.lib.recipe.add_additional_category("bob-productivity-processor", "electronics")
bobmods.lib.recipe.add_additional_category("bob-productivity-processor-2", "electronics")
bobmods.lib.recipe.add_additional_category("bob-productivity-processor-3", "electronics")
bobmods.lib.recipe.add_additional_category("bob-pollution-clean-processor", "electronics")
bobmods.lib.recipe.add_additional_category("bob-pollution-clean-processor-2", "electronics")
bobmods.lib.recipe.add_additional_category("bob-pollution-clean-processor-3", "electronics")
bobmods.lib.recipe.add_additional_category("bob-pollution-create-processor", "electronics")
bobmods.lib.recipe.add_additional_category("bob-pollution-create-processor-2", "electronics")
bobmods.lib.recipe.add_additional_category("bob-pollution-create-processor-3", "electronics")
if mods["quality"] then
  bobmods.lib.recipe.add_additional_category("bob-quality-processor", "electronics")
  bobmods.lib.recipe.add_additional_category("bob-quality-processor-2", "electronics")
  bobmods.lib.recipe.add_additional_category("bob-quality-processor-3", "electronics")
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
