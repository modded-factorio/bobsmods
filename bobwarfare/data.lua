if not bobmods then bobmods = {} end
if not bobmods.warfare then bobmods.warfare = {} end

bobmods.warfare.FlyingRobotFrames = true
bobmods.warfare.RobotParts = true
bobmods.warfare.RobotRequirePrevious = true


if settings.startup["bobmods-logistics-flyingrobotframes"] then
  bobmods.warfare.FlyingRobotFrames = settings.startup["bobmods-logistics-flyingrobotframes"].value
end

if settings.startup["bobmods-logistics-robotparts"] then
  bobmods.warfare.RobotParts = settings.startup["bobmods-logistics-robotparts"].value
end

if settings.startup["bobmods-logistics-robotrequireprevious"] then
  bobmods.warfare.RobotRequirePrevious = settings.startup["bobmods-logistics-robotrequireprevious"].value
end


require("prototypes.damage-type")
require("prototypes.category")
require("prototypes.equipment-grid")

require("prototypes.item.fluid")
require("prototypes.item.parts")
require("prototypes.item.gun")
require("prototypes.item.ammo")
require("prototypes.item.mine")
require("prototypes.item.armor")
require("prototypes.item.drone")
require("prototypes.item.wall")
require("prototypes.item.turrets")
require("prototypes.item.tank")
require("prototypes.item.radar")

require("prototypes.recipe.fluid-recipe")
require("prototypes.recipe.parts-recipe")
require("prototypes.recipe.gun-recipe")
require("prototypes.recipe.ammo-recipe")
require("prototypes.recipe.mine-recipe")
require("prototypes.recipe.armor-recipe")
require("prototypes.recipe.drone")
require("prototypes.recipe.wall")
require("prototypes.recipe.turrets")
require("prototypes.recipe.tank")
require("prototypes.recipe.radar-recipe")

require("prototypes.entity.effects")
require("prototypes.entity.projectiles")
require("prototypes.entity.beams")
require("prototypes.entity.mine")
require("prototypes.entity.drone")
require("prototypes.entity.wall")
require("prototypes.entity.turrets")
require("prototypes.entity.tank")
require("prototypes.entity.radar")

require("prototypes.technology.technology")
require("prototypes.technology.gun")
require("prototypes.technology.ammo")
require("prototypes.technology.armor")
require("prototypes.technology.mine")
require("prototypes.technology.drone")
require("prototypes.technology.wall")
require("prototypes.technology.turrets")
require("prototypes.technology.tank")
require("prototypes.technology.radar")


require("prototypes.robots")
require("prototypes.robot-parts")
require("prototypes.train")
require("prototypes.spidertron")
