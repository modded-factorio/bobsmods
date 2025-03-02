if not bobmods then
  bobmods = {}
end
if not bobmods.logistics then
  bobmods.logistics = {}
end

if settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
  data:extend({
    {
      type = "custom-input",
      name = "bob-inserter-long",
      key_sequence = "SHIFT + L",
      consuming = "none",
    },
  })
end

require("prototypes.category")

require("prototypes.robot-parts")

require("prototypes.item.train")
require("prototypes.item.robots")
require("prototypes.item.roboport")
require("prototypes.item.roboport-parts")
require("prototypes.item.belt")
require("prototypes.item.inserter")
require("prototypes.item.pipes")
require("prototypes.item.storage-tank")
require("prototypes.item.logistic-container")
require("prototypes.item.pump")

require("prototypes.entity.train")
require("prototypes.entity.robots")
require("prototypes.entity.roboport")
require("prototypes.entity.belt")
require("prototypes.entity.inserter")
require("prototypes.entity.pipes")
require("prototypes.entity.storage-tank")
require("prototypes.entity.logistic-container")
require("prototypes.entity.pump")

require("prototypes.recipe.train-recipe")
require("prototypes.recipe.robots-recipe")
require("prototypes.recipe.roboport-recipe")
require("prototypes.recipe.roboport-parts-recipe")
require("prototypes.recipe.belt-recipe")
require("prototypes.recipe.inserter-recipe")
require("prototypes.recipe.pipes-recipe")
require("prototypes.recipe.storage-tank-recipe")
require("prototypes.recipe.logistic-container-recipe")
require("prototypes.recipe.pump-recipe")
require("prototypes.recipe.chemicals")

require("prototypes.technology")
require("prototypes.technology-logistics")
require("prototypes.technology-inserter")

require("prototypes.chests")
require("prototypes.repair-pack")

require("prototypes.aai-loaders")

require("prototypes.tips-and-tricks")
