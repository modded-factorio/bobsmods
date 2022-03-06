for i, drill in pairs(data.raw["mining-drill"]) do
  if not drill.storage_slots then drill.storage_slots = 6 end
end


require("prototypes.drill-updates")
require("prototypes.areadrill-updates")
require("prototypes.pumpjack-updates")
require("prototypes.water-miner-updates")


