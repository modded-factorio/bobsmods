if not bobmods then
  bobmods = {}
end
if not bobmods.mining then
  bobmods.mining = {}
end

data:extend({
  {
    type = "item-subgroup",
    name = "bob-tool",
    group = "production",
    order = "a-1",
  },
})

require("prototypes.drill-functions")

require("prototypes.drills")
require("prototypes.areadrills")
require("prototypes.axes")
require("prototypes.pumpjacks")
require("prototypes.water-miner")
require("prototypes.steam-drills")
