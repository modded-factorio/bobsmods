require("prototypes.drill-updates")
require("prototypes.areadrill-updates")
require("prototypes.pumpjack-updates")
require("prototypes.water-miner-updates")

data.raw.item["electric-mining-drill"].icon = "__bobmining__/graphics/icons/electric-mining-drill-1.png"
data.raw["mining-drill"]["electric-mining-drill"].icon = "__bobmining__/graphics/icons/electric-mining-drill-1.png"

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "bob-area-mining-drill-1",
    "bob-area-mining-drill-2",
    "bob-area-mining-drill-3",
    "bob-area-mining-drill-4",
    "electric-mining-drill",
    "bob-mining-drill-1",
    "bob-mining-drill-2",
    "bob-mining-drill-3",
    "bob-mining-drill-4",
    "bob-pumpjack-1",
    "bob-pumpjack-2",
    "bob-pumpjack-3",
    "bob-water-miner-1",
    "bob-water-miner-2",
    "bob-water-miner-3",
    "bob-water-miner-4",
  })
end
