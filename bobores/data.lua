if not bobmods then
  bobmods = {}
end
if not bobmods.ores then
  bobmods.ores = {}
end
if not bobmods.gems then
  bobmods.gems = {}
end
if not bobmods.ores.settings then
  bobmods.ores.settings = {}
end

data:extend({
  {
    type = "item-subgroup",
    name = "bob-ores",
    group = "intermediate-products",
    order = "b-a",
  },
  {
    type = "item-subgroup",
    name = "bob-gems-ore",
    group = "intermediate-products",
    order = "2",
  },
  {
    type = "resource-category",
    name = "water",
  },
})

bobmods.ores.settings.UnsortedGemOre = settings.startup["bobmods-ores-unsortedgemore"].value
bobmods.ores.settings.GemsFromOtherOres = settings.startup["bobmods-ores-gemsfromotherores"].value
if bobmods.ores.settings.GemsFromOtherOres == true then
  bobmods.ores.settings.UnsortedGemOre = false
end
bobmods.ores.settings.GemProbability = settings.startup["bobmods-ores-gemprobability"].value

bobmods.ores.settings.LeadGivesNickel = settings.startup["bobmods-ores-leadgivesnickel"].value
bobmods.ores.settings.LeadNickelRatio = settings.startup["bobmods-ores-leadnickelratio"].value

bobmods.ores.settings.NickelGivesCobalt = settings.startup["bobmods-ores-nickelgivescobalt"].value
bobmods.ores.settings.NickelCobaltRatio = settings.startup["bobmods-ores-nickelcobaltratio"].value

bobmods.gems.RubyRatio = settings.startup["bobmods-gems-rubyratio"].value
bobmods.gems.SapphireRatio = settings.startup["bobmods-gems-sapphireratio"].value
bobmods.gems.EmeraldRatio = settings.startup["bobmods-gems-emeraldratio"].value
bobmods.gems.AmethystRatio = settings.startup["bobmods-gems-amethystratio"].value
bobmods.gems.TopazRatio = settings.startup["bobmods-gems-topazratio"].value
bobmods.gems.DiamondRatio = settings.startup["bobmods-gems-diamondratio"].value

require("prototypes.gems") -- must be after gem changes are defined.
require("prototypes.tin-ore")
require("prototypes.lead-ore")
require("prototypes.quartz")
require("prototypes.silver-ore")
require("prototypes.zinc-ore")
require("prototypes.gold-ore")
require("prototypes.bauxite")
require("prototypes.rutile")
require("prototypes.tungsten-ore")
require("prototypes.thorium-ore")
require("prototypes.nickel-ore")
require("prototypes.cobalt-ore")
require("prototypes.sulfur")
require("prototypes.gem-ore")

require("prototypes.fluids")

for i, ore in pairs(bobmods.ores) do
  bobmods.lib.resource.generate_data_stage(ore)
end

if settings.startup["bobmods-ores-enablebauxite"].value == true then
  bobmods.ores.bauxite.create_autoplace()
end
if settings.startup["bobmods-ores-enablecobaltore"].value == true then
  bobmods.ores.cobalt.create_autoplace()
end
if settings.startup["bobmods-ores-enablegemsore"].value == true then
  bobmods.ores.gems.create_autoplace()
end
if settings.startup["bobmods-ores-enablegoldore"].value == true then
  bobmods.ores.gold.create_autoplace()
end
if settings.startup["bobmods-ores-enableleadore"].value == true then
  bobmods.ores.lead.create_autoplace()
end
if settings.startup["bobmods-ores-enablenickelore"].value == true then
  bobmods.ores.nickel.create_autoplace()
end
if settings.startup["bobmods-ores-enablequartz"].value == true then
  bobmods.ores.quartz.create_autoplace()
end
if settings.startup["bobmods-ores-enablerutile"].value == true then
  bobmods.ores.rutile.create_autoplace()
end
if settings.startup["bobmods-ores-enablesilverore"].value == true then
  bobmods.ores.silver.create_autoplace()
end
if settings.startup["bobmods-ores-enablesulfur"].value == true then
  bobmods.ores.sulfur.create_autoplace()
end
if settings.startup["bobmods-ores-enabletinore"].value == true then
  bobmods.ores.tin.create_autoplace()
end
if settings.startup["bobmods-ores-enabletungstenore"].value == true then
  bobmods.ores.tungsten.create_autoplace()
end
if settings.startup["bobmods-ores-enablezincore"].value == true then
  bobmods.ores.zinc.create_autoplace()
end
if settings.startup["bobmods-ores-enablewaterores"].value == true then
  bobmods.ores.water.create_autoplace()
  bobmods.ores.lithia_water.create_autoplace()
end
if settings.startup["bobmods-ores-enablethoriumore"].value == true then
  bobmods.ores.thorium.create_autoplace()
end

data.raw.item["copper-ore"].stack_size = 200
data.raw.item["iron-ore"].stack_size = 200
data.raw.item["stone"].stack_size = 200
data.raw.item["coal"].stack_size = 200
data.raw.item["uranium-ore"].stack_size = 200
data.raw.item["sulfur"].stack_size = 200
