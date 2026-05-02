if not bobmods then
  bobmods = {}
end
if not bobmods.plates then
  bobmods.plates = {}
end

if bobmods.ores.bauxite.create_autoplace then
  bobmods.ores.bauxite.create_autoplace()
  bobmods.ores.gold.create_autoplace()
  bobmods.ores.lead.create_autoplace()
  bobmods.ores.quartz.create_autoplace()
  bobmods.ores.rutile.create_autoplace()
  bobmods.ores.silver.create_autoplace()
  bobmods.ores.tin.create_autoplace()
  bobmods.ores.tungsten.create_autoplace()
  bobmods.ores.zinc.create_autoplace()
  if bobmods.ores.settings and bobmods.ores.settings.LeadGivesNickel == false then
    bobmods.ores.nickel.create_autoplace()
  end
  if bobmods.ores.settings and bobmods.ores.settings.GemsFromOtherOres == false then
    bobmods.ores.gems.create_autoplace()
  end
  if settings.startup["bobmods-plates-groundwater"].value == false then
    bobmods.ores.water.create_autoplace()
    bobmods.ores.lithia_water.create_autoplace()
  end
  bobmods.ores.thorium.create_autoplace()
end

require("prototypes.category")

require("prototypes.distillery")

require("prototypes.item.gems")
require("prototypes.item.chemicals")
require("prototypes.item.resource")
require("prototypes.item.plates")
require("prototypes.item.alloys")
require("prototypes.item.parts")
require("prototypes.item.electronics")
require("prototypes.item.entities")
require("prototypes.item.nuclear")

require("prototypes.entity.entities")
require("prototypes.entity.pumps")
require("prototypes.entity.nuclear")

require("prototypes.recipe.gems-recipe")
require("prototypes.recipe.chemistry-recipe")
require("prototypes.recipe.resource-recipe")
require("prototypes.recipe.plates-recipe")
require("prototypes.recipe.alloy-recipe")
require("prototypes.recipe.parts-recipe")
require("prototypes.recipe.electronics-recipe")
require("prototypes.recipe.entity-recipe")
require("prototypes.recipe.void-recipe")
require("prototypes.recipe.nuclear-recipe")

require("prototypes.technology")
require("prototypes.technology-metal")
require("prototypes.technology-nuclear")

require("prototypes.item.alien")
require("prototypes.recipe.alien-recipe")
require("prototypes.technology-alien")

require("prototypes.tips-and-tricks")

if feature_flags["quality"] then
  table.insert(data.raw["assembling-machine"]["bob-electrolyser"].allowed_effects, "quality")
  table.insert(data.raw["assembling-machine"]["bob-electric-chemical-furnace"].allowed_effects, "quality")
  table.insert(data.raw["assembling-machine"]["bob-electric-mixing-furnace"].allowed_effects, "quality")
end
