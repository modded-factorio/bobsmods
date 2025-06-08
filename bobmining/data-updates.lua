require("prototypes.drill-updates")
require("prototypes.areadrill-updates")
require("prototypes.pumpjack-updates")
require("prototypes.water-miner-updates")

if mods["quality"] then
  if settings.startup["bobmods-mining-areadrills"].value == true then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-area-mining-drill-1",
      "bob-area-mining-drill-2",
      "bob-area-mining-drill-3",
      "bob-area-mining-drill-4",
    })
  end
  if settings.startup["bobmods-mining-miningdrills"].value == true then
    bobmods.lib.recipe.update_recycling_recipe({
      "electric-mining-drill",
      "bob-mining-drill-1",
      "bob-mining-drill-2",
      "bob-mining-drill-3",
      "bob-mining-drill-4",
    })
  end
  if settings.startup["bobmods-mining-pumpjacks"].value == true then
    bobmods.lib.recipe.update_recycling_recipe({
      "pumpjack",
      "bob-pumpjack-1",
      "bob-pumpjack-2",
      "bob-pumpjack-3",
    })
  end
  if settings.startup["bobmods-mining-waterminers"].value == true and data.raw["resource-category"]["water"] then
    bobmods.lib.recipe.update_recycling_recipe({
      "bob-water-miner-1",
      "bob-water-miner-2",
      "bob-water-miner-3",
      "bob-water-miner-4",
    })
  end
end
