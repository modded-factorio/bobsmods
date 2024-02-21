if not bobmods then
  bobmods = {}
end
if not bobmods.classes then
  bobmods.classes = {}
end
if not bobmods.avatars then
  bobmods.avatars = {}
end

require("prototypes.category")
require("prototypes.style")
require("prototypes.character")
require("prototypes.bodies")
require("prototypes.parts")

data:extend({
  {
    type = "sprite",
    name = "class-balanced-button",
    filename = "__bobclasses__/icons/balanced.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-miner-button",
    filename = "__bobclasses__/icons/miner.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-fighter-button",
    filename = "__bobclasses__/icons/fighter.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-builder-button",
    filename = "__bobclasses__/icons/builder.png",
    priority = "medium",
    width = 32,
    height = 32,
  },

  {
    type = "sprite",
    name = "class-balanced-2-button",
    filename = "__bobclasses__/icons/balanced-2.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-miner-2-button",
    filename = "__bobclasses__/icons/miner-2.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-fighter-2-button",
    filename = "__bobclasses__/icons/fighter-2.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-builder-2-button",
    filename = "__bobclasses__/icons/builder-2.png",
    priority = "medium",
    width = 32,
    height = 32,
  },

  {
    type = "sprite",
    name = "class-engineer-button",
    filename = "__bobclasses__/icons/engineer.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
  {
    type = "sprite",
    name = "class-prospector-button",
    filename = "__bobclasses__/icons/prospector.png",
    priority = "medium",
    width = 32,
    height = 32,
  },
})
