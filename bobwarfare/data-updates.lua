require("prototypes.overides")
require("prototypes.recipe.recipe-updates")
require("prototypes.technology.technology-updates")

require("prototypes.robots-updates")
require("prototypes.train-updates")
require("prototypes.recipe.drone-updates")
require("prototypes.spidertron-updates")

if settings.startup["bobmods-warfare-drainlesslaserturrets"].value == true then
  for index, turret in pairs(data.raw["electric-turret"]) do
    turret.energy_source.drain = "0W"
  end
end

table.insert(data.raw.car.tank.resistances, { type = "plasma", decrease = 15, percent = 50 })

if settings.startup["bobmods-warfare-vehicleflamethrowerstartsfires"].value == true then
  data.raw.ammo["flamethrower-ammo"].ammo_type = {
    {
      category = "flamethrower",
      clamp_position = true,
      source_type = "default",
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = "handheld-flamethrower-fire-stream",
        },
      },
    },
    {
      category = "flamethrower",
      clamp_position = true,
      source_type = "vehicle",
      target_type = "position",
      consumption_modifier = 1.125,
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = "flamethrower-fire-stream",
        },
      },
    },
  }
end

if feature_flags["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "heavy-armor-2",
    "heavy-armor-3",
    "modular-armor",
    "power-armor",
    "power-armor-mk2",
    "bob-power-armor-mk3",
    "bob-power-armor-mk4",
    "bob-power-armor-mk5",
    "rifle",
    "sniper-rifle",
    "laser-rifle",
    "tank",
    "bob-tank-2",
    "bob-tank-3",
    "bob-artillery-wagon-2",
    "bob-artillery-wagon-3",
    "robot-drone-frame",
    "robot-drone-frame-large",
    "bob-robot-gun-drone",
    "bob-robot-laser-drone",
    "bob-robot-flamethrower-drone",
    "bob-robot-plasma-drone",
    "bullet-casing",
    "bullet-projectile",
    "ap-bullet-projectile",
    "he-bullet-projectile",
    "flame-bullet-projectile",
    "acid-bullet-projectile",
    "poison-bullet-projectile",
    "electric-bullet-projectile",
    "uranium-bullet-projectile",
    "plasma-bullet-projectile",
    "shotgun-shell-casing",
    "shot",
    "rocket-engine",
    "rocket-body",
    "piercing-rocket-warhead",
    "electric-rocket-warhead",
    "explosive-rocket-warhead",
    "acid-rocket-warhead",
    "flame-rocket-warhead",
    "poison-rocket-warhead",
    "plasma-rocket-warhead",
    "shotgun-ap-shell",
    "shotgun-electric-shell",
    "shotgun-explosive-shell",
    "shotgun-flame-shell",
    "shotgun-acid-shell",
    "shotgun-poison-shell",
    "shotgun-plasma-shell",
    "laser-rifle-battery",
    "laser-rifle-battery-ruby",
    "laser-rifle-battery-sapphire",
    "laser-rifle-battery-emerald",
    "laser-rifle-battery-amethyst",
    "laser-rifle-battery-topaz",
    "laser-rifle-battery-diamond",
    "poison-artillery-shell",
    "fire-artillery-shell",
    "explosive-artillery-shell",
    "distractor-artillery-shell",
    "radar",
    "radar-2",
    "radar-3",
    "radar-4",
    "radar-5",
    "bob-gun-turret-2",
    "bob-gun-turret-3",
    "bob-gun-turret-4",
    "bob-gun-turret-5",
    "bob-sniper-turret-2",
    "bob-sniper-turret-3",
    "bob-laser-turret-2",
    "bob-laser-turret-3",
    "bob-laser-turret-4",
    "bob-laser-turret-5",
    "bob-plasma-turret-1",
    "bob-plasma-turret-2",
    "bob-plasma-turret-3",
    "bob-plasma-turret-4",
    "bob-plasma-turret-5",
    "bob-artillery-turret-2",
    "bob-artillery-turret-3",
    "robot-brain-combat",
    "robot-brain-combat-2",
    "robot-brain-combat-3",
    "robot-brain-combat-4",
    "robot-tool-combat",
    "robot-tool-combat-2",
    "robot-tool-combat-3",
    "robot-tool-combat-4",
    "defender-robot",
    "distractor-robot",
    "destroyer-robot",
    "bob-laser-robot",
    "defender-capsule",
    "distractor-capsule",
    "destroyer-capsule",
    "mech-leg-segment",
    "mech-foot",
    "mech-hip",
    "mech-knee",
    "mech-leg",
    "mech-brain",
    "mech-armor-plate",
    "antron",
    "tankotron",
    "spidertron",
    "logistic-spidertron",
    "heavy-spidertron",
  })
  bobmods.lib.recipe.update_recycling_recipe_to_self_recipe("gun-cotton")
  bobmods.lib.recipe.update_recycling_recipe_to_self_recipe("cordite")
end
