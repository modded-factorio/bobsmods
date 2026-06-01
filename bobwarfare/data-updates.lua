require("prototypes.overides")
require("prototypes.recipe.recipe-updates")
require("prototypes.technology.technology-updates")

require("prototypes.armor-updates")
require("prototypes.robots-updates")
require("prototypes.train-updates")
require("prototypes.recipe.drone-updates")
require("prototypes.spidertron-updates")

if settings.startup["bobmods-warfare-drainlesslaserturrets"].value == true then
  for index, turret in pairs(data.raw["electric-turret"]) do
    turret.energy_source.drain = "0W"
  end
end

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

if mods["space-age"] then
  for _, spacerock in pairs(data.raw.asteroid) do
    local has_acid = false
    local has_poison = false
    spacerock.resistances = spacerock.resistances or {}
    for _, resist in pairs(spacerock.resistances) do
      if resist.type == "acid" then
        has_acid = true
      end
      if resist.type == "poison" then
        has_poison = true
      end
    end
    if has_acid == false then
      table.insert(spacerock.resistances, { type = "acid", percent = 99 })
    end
    if has_poison == false then
      table.insert(spacerock.resistances, { type = "poison", percent = 100 })
    end
  end
end

if mods["quality"] then
  bobmods.lib.recipe.update_recycling_recipe({
    "artillery-shell",
    "artillery-turret",
    "artillery-wagon",
    "bob-acid-bullet-projectile",
    "bob-acid-rocket-warhead",
    "bob-antron",
    "bob-ap-bullet-projectile",
    "bob-artillery-turret-2",
    "bob-artillery-turret-3",
    "bob-artillery-wagon-2",
    "bob-artillery-wagon-3",
    "bob-bullet-casing",
    "bob-bullet-projectile",
    "bob-defender-robot",
    "bob-destroyer-robot",
    "bob-distractor-artillery-shell",
    "bob-distractor-robot",
    "bob-electric-bullet-projectile",
    "bob-electric-rocket-warhead",
    "bob-explosive-artillery-shell",
    "bob-explosive-rocket-warhead",
    "bob-fire-artillery-shell",
    "bob-flame-bullet-projectile",
    "bob-flame-rocket-warhead",
    "bob-gun-turret-2",
    "bob-gun-turret-3",
    "bob-gun-turret-4",
    "bob-gun-turret-5",
    "bob-heavy-spidertron",
    "bob-he-bullet-projectile",
    "bob-laser-rifle",
    "bob-laser-rifle-battery",
    "bob-laser-rifle-battery-amethyst",
    "bob-laser-rifle-battery-diamond",
    "bob-laser-rifle-battery-emerald",
    "bob-laser-rifle-battery-ruby",
    "bob-laser-rifle-battery-sapphire",
    "bob-laser-rifle-battery-topaz",
    "bob-laser-robot",
    "bob-laser-turret-2",
    "bob-laser-turret-3",
    "bob-laser-turret-4",
    "bob-laser-turret-5",
    "bob-logistic-spidertron",
    "bob-mech-armor-plate",
    "bob-mech-brain",
    "bob-mech-foot",
    "bob-mech-hip",
    "bob-mech-knee",
    "bob-mech-leg",
    "bob-mech-leg-segment",
    "bob-piercing-rocket-warhead",
    "bob-plasma-bullet-projectile",
    "bob-plasma-rocket-warhead",
    "bob-plasma-turret-1",
    "bob-plasma-turret-2",
    "bob-plasma-turret-3",
    "bob-plasma-turret-4",
    "bob-poison-artillery-shell",
    "bob-poison-bullet-projectile",
    "bob-poison-rocket-warhead",
    "bob-power-armor-mk3",
    "bob-power-armor-mk4",
    "bob-power-armor-mk5",
    "bob-radar-2",
    "bob-radar-3",
    "bob-radar-4",
    "bob-radar-5",
    "bob-rifle",
    "bob-robot-brain-combat",
    "bob-robot-brain-combat-2",
    "bob-robot-brain-combat-3",
    "bob-robot-brain-combat-4",
    "bob-robot-drone-frame",
    "bob-robot-drone-frame-large",
    "bob-robot-flamethrower-drone",
    "bob-robot-gun-drone",
    "bob-robot-laser-drone",
    "bob-robot-plasma-drone",
    "bob-robot-tool-combat",
    "bob-robot-tool-combat-2",
    "bob-robot-tool-combat-3",
    "bob-robot-tool-combat-4",
    "bob-rocket-body",
    "bob-rocket-engine",
    "bob-shot",
    "bob-shotgun-acid-shell",
    "bob-shotgun-ap-shell",
    "bob-shotgun-electric-shell",
    "bob-shotgun-explosive-shell",
    "bob-shotgun-flame-shell",
    "bob-shotgun-plasma-shell",
    "bob-shotgun-poison-shell",
    "bob-shotgun-shell-casing",
    "bob-sniper-rifle",
    "bob-sniper-turret-1",
    "bob-sniper-turret-2",
    "bob-sniper-turret-3",
    "bob-spidertron-cannon",
    "bob-tank-2",
    "bob-tank-3",
    "bob-tankotron",
    "bob-uranium-bullet-projectile",
    "combat-shotgun",
    "defender-capsule",
    "destroyer-capsule",
    "distractor-capsule",
    "flamethrower",
    "flamethrower-turret",
    "modular-armor",
    "power-armor",
    "power-armor-mk2",
    "radar",
    "rocket-launcher",
    "spidertron",
    "tank",
  })
end
