bobmods.lib.tech.remove_science_pack("follower-robot-count-7", "production-science-pack")

bobmods.lib.tech.remove_science_pack("artillery", "utility-science-pack")
bobmods.lib.tech.remove_prerequisite("artillery", "military-4")
bobmods.lib.tech.add_prerequisite("artillery", "advanced-electronics-2")
bobmods.lib.tech.add_prerequisite("artillery", "concrete")
bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "military-4")
bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-2", "military-4")

if
  data.raw.tool["science-pack-gold"]
  and data.raw.tool["alien-science-pack-blue"]
  and data.raw.tool["alien-science-pack-orange"]
  and data.raw.tool["alien-science-pack-purple"]
  and data.raw.tool["alien-science-pack-yellow"]
  and data.raw.tool["alien-science-pack-green"]
  and data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["bob-ap-bullets"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-blue", 1 } }
  data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-blue", 1 } }
  data.raw.technology["bob-piercing-rocket"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-blue", 1 } }

  data.raw.technology["bob-electric-bullets"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-orange", 1 } }
  data.raw.technology["bob-shotgun-electric-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-orange", 1 } }
  data.raw.technology["bob-electric-rocket"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-orange", 1 } }

  data.raw.technology["bob-acid-bullets"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-purple", 1 } }
  data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-purple", 1 } }
  data.raw.technology["bob-acid-rocket"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-purple", 1 } }

  data.raw.technology["bob-he-bullets"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-yellow", 1 } }
  data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-yellow", 1 } }
  data.raw.technology["bob-explosive-rocket"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-yellow", 1 } }

  data.raw.technology["bob-poison-bullets"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-green", 1 } }
  data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-green", 1 } }
  data.raw.technology["bob-poison-rocket"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-green", 1 } }

  data.raw.technology["bob-flame-bullets"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-red", 1 } }
  data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-red", 1 } }
  data.raw.technology["bob-flame-rocket"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-red", 1 } }

  data.raw.technology["bob-power-armor-3"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
  }
  data.raw.technology["bob-power-armor-4"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
  }
  data.raw.technology["bob-power-armor-5"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-green", 1 },
    {
      "alien-science-pack-red",
      1,
    },
  }

  data.raw.technology["bob-plasma-bullets"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
    { "alien-science-pack-green", 1 },
    { "alien-science-pack-red", 1 },
  }
  data.raw.technology["bob-shotgun-plasma-shells"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
    { "alien-science-pack-green", 1 },
    { "alien-science-pack-red", 1 },
  }
  data.raw.technology["bob-plasma-rocket"].unit.ingredients = {
    { "science-pack-gold", 1 },
    { "alien-science-pack", 1 },
    { "alien-science-pack-blue", 1 },
    { "alien-science-pack-orange", 1 },
    { "alien-science-pack-purple", 1 },
    { "alien-science-pack-yellow", 1 },
    { "alien-science-pack-green", 1 },
    { "alien-science-pack-red", 1 },
  }
  data.raw.technology["bob-poison-artillery-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-green", 1 } }
  data.raw.technology["bob-fire-artillery-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-red", 1 } }
  data.raw.technology["bob-explosive-artillery-shells"].unit.ingredients =
    { { "science-pack-gold", 1 }, { "alien-science-pack-yellow", 1 } }
end

if data.raw.technology["alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "alien-research")

  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "alien-research")

  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "alien-research")

  bobmods.lib.tech.add_prerequisite("bob-poison-artillery-shells", "alien-research")
  bobmods.lib.tech.add_prerequisite("bob-fire-artillery-shells", "alien-research")
  bobmods.lib.tech.add_prerequisite("bob-explosive-artillery-shells", "alien-research")

  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "alien-research")
else
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-ap-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-electric-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-acid-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-he-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-poison-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-flame-bullets")

  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-ap-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-electric-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-acid-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-explosive-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-poison-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-flame-shells")

  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-piercing-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-electric-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-acid-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-explosive-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-poison-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-flame-rocket")
end

if data.raw.technology["alien-blue-research"] then
  bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "alien-blue-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "alien-blue-research")
  bobmods.lib.tech.add_prerequisite("bob-piercing-rocket", "alien-blue-research")
else
  if data.raw.technology["tungsten-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "tungsten-processing")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "tungsten-processing")
  end
  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-piercing-rocket", "alien-research")
  end
end

if data.raw.technology["alien-orange-research"] then
  bobmods.lib.tech.add_prerequisite("bob-electric-bullets", "alien-orange-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-electric-shells", "alien-orange-research")
  bobmods.lib.tech.add_prerequisite("bob-electric-rocket", "alien-orange-research")
elseif data.raw.technology["alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-electric-bullets", "alien-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-electric-shells", "alien-research")
  bobmods.lib.tech.add_prerequisite("bob-electric-rocket", "alien-research")
end

if data.raw.technology["alien-purple-research"] then
  bobmods.lib.tech.add_prerequisite("bob-acid-bullets", "alien-purple-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-acid-shells", "alien-purple-research")
  bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "alien-purple-research")
else
  if data.raw.technology["nitrogen-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "nitrogen-processing")
  end
  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-acid-bullets", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-acid-shells", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "alien-research")
  end
end

if data.raw.technology["alien-yellow-research"] then
  bobmods.lib.tech.add_prerequisite("bob-he-bullets", "alien-yellow-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "alien-yellow-research")
  bobmods.lib.tech.add_prerequisite("bob-explosive-rocket", "alien-yellow-research")
else
  bobmods.lib.tech.add_prerequisite("bob-he-bullets", "explosives")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "explosives")
  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-he-bullets", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-explosive-rocket", "alien-research")
  end
end

if data.raw.technology["alien-green-research"] then
  bobmods.lib.tech.add_prerequisite("bob-poison-bullets", "alien-green-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-poison-shells", "alien-green-research")
  bobmods.lib.tech.add_prerequisite("bob-poison-rocket", "alien-green-research")
elseif data.raw.technology["alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-poison-bullets", "alien-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-poison-shells", "alien-research")
  bobmods.lib.tech.add_prerequisite("bob-poison-rocket", "alien-research")
end

if data.raw.technology["alien-red-research"] then
  bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "alien-red-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "alien-red-research")
  bobmods.lib.tech.add_prerequisite("bob-flame-rocket", "alien-red-research")
else
  bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "flammables")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "flammables")
  if data.raw.technology["alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "alien-research")
    bobmods.lib.tech.add_prerequisite("bob-flame-rocket", "alien-research")
  end
end

bobmods.lib.tech.add_recipe_unlock("military-3", "rifle")
bobmods.lib.tech.add_recipe_unlock("military-3", "sniper-rifle")
bobmods.lib.tech.add_recipe_unlock("military-3", "fire-capsule")

bobmods.lib.tech.add_recipe_unlock("uranium-ammo", "uranium-bullet-projectile")
bobmods.lib.tech.add_recipe_unlock("uranium-ammo", "uranium-bullet")
bobmods.lib.tech.add_prerequisite("uranium-ammo", "bob-bullets")
bobmods.lib.tech.add_prerequisite("uranium-ammo", "bob-shotgun-shells")
bobmods.lib.tech.add_recipe_unlock("uranium-ammo", "shotgun-uranium-shell")

table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-1"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.1 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.1 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-2"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.1 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-3"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.2 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-4"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.2 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.2 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.2 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.4 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.4 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.4 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.4 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.4 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.4 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.4 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = 0.7 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = 0.7 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = 0.7 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = 0.7 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-1", modifier = 0.7 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-2", modifier = 0.7 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "turret-attack", turret_id = "bob-sniper-turret-3", modifier = 0.7 }
)

table.insert(
  data.raw.technology["physical-projectile-damage-5"].effects,
  { type = "ammo-damage", ammo_category = "artillery-shell", modifier = 0.9 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-6"].effects,
  { type = "ammo-damage", ammo_category = "artillery-shell", modifier = 1.3 }
)
table.insert(
  data.raw.technology["physical-projectile-damage-7"].effects,
  { type = "ammo-damage", ammo_category = "artillery-shell", modifier = 1 }
)

table.insert(
  data.raw.technology["energy-weapons-damage-1"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.2 }
)
table.insert(
  data.raw.technology["energy-weapons-damage-2"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.2 }
)
table.insert(
  data.raw.technology["energy-weapons-damage-3"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.3 }
)
table.insert(
  data.raw.technology["energy-weapons-damage-4"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.4 }
)
table.insert(
  data.raw.technology["energy-weapons-damage-5"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.5 }
)
table.insert(
  data.raw.technology["energy-weapons-damage-6"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.7 }
)
table.insert(
  data.raw.technology["energy-weapons-damage-7"].effects,
  { type = "ammo-damage", ammo_category = "laser-rifle", modifier = 0.7 }
)

table.insert(
  data.raw.technology["laser-shooting-speed-3"].effects,
  { type = "gun-speed", ammo_category = "laser-rifle", modifier = 0.3 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-4"].effects,
  { type = "gun-speed", ammo_category = "laser-rifle", modifier = 0.4 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-5"].effects,
  { type = "gun-speed", ammo_category = "laser-rifle", modifier = 0.4 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-6"].effects,
  { type = "gun-speed", ammo_category = "laser-rifle", modifier = 0.5 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-7"].effects,
  { type = "gun-speed", ammo_category = "laser-rifle", modifier = 0.5 }
)

--0.17.60
bobmods.lib.tech.remove_science_pack("energy-weapons-damage-1", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("energy-weapons-damage-2", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("energy-weapons-damage-3", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-shooting-speed-1", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-shooting-speed-2", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser", "chemical-science-pack")
bobmods.lib.tech.remove_prerequisite("laser", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-turret", "chemical-science-pack")
bobmods.lib.tech.set_science_pack_count("laser-turret", 100)

if data.raw.recipe["gun-cotton-synthetic"] then
  bobmods.lib.tech.add_recipe_unlock("cordite-processing", "gun-cotton-synthetic")
end

if mods["bobmodules"] then
  if data.raw.technology["speed-module-4"] then
    bobmods.lib.tech.remove_prerequisite("bob-power-armor-3", "speed-module-2")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "speed-module-4")
  end

  if data.raw.technology["efficiency-module-4"] then
    bobmods.lib.tech.remove_prerequisite("bob-power-armor-3", "efficiency-module-2")
    bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "efficiency-module-4")
  end

  if data.raw.technology["speed-module-6"] then
    bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "speed-module-6")
  end

  if data.raw.technology["efficiency-module-6"] then
    bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "efficiency-module-6")
  end

  if data.raw.technology["speed-module-8"] then
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "speed-module-8")
  end

  if data.raw.technology["efficiency-module-8"] then
    bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "efficiency-module-8")
  end
else
  bobmods.lib.tech.replace_prerequisite("power-armor-mk2", "speed-module-2", "speed-module")
  bobmods.lib.tech.replace_prerequisite("power-armor-mk2", "efficiency-module-2", "efficiency-module")
end

if mods["boblogistics"] then
  bobmods.lib.tech.remove_science_pack("bob-robot-gun-drones", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("bob-robot-laser-drones", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("bob-robot-flamethrower-drones", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("bob-robot-plasma-drones", "chemical-science-pack")
end

if mods["aai-industry"] then
  bobmods.lib.tech.add_prerequisite("radars-2", "radar")
else
  bobmods.lib.tech.add_prerequisite("artillery", "radars-1")
  bobmods.lib.tech.add_prerequisite("spidertron", "radars-1")
end

-- Armor

bobmods.lib.tech.remove_prerequisite("modular-armor", "advanced-electronics")
bobmods.lib.tech.add_prerequisite("modular-armor", "logistic-science-pack")

bobmods.lib.tech.remove_science_pack("power-armor", "chemical-science-pack")
bobmods.lib.tech.add_science_pack("power-armor", "military-science-pack", 1)
bobmods.lib.tech.remove_prerequisite("power-armor", "advanced-electronics-2")
bobmods.lib.tech.add_prerequisite("power-armor", "military-science-pack")
bobmods.lib.tech.add_prerequisite("power-armor", "advanced-electronics")
-- By default, electric engines are Blue Science
if (not mods["bobplates"]) and not mods["boblogistics"] then
  bobmods.lib.tech.remove_prerequisite("power-armor", "electric-engine")
  bobmods.lib.tech.add_prerequisite("power-armor-mk2", "electric-engine")
end

bobmods.lib.tech.remove_science_pack("power-armor-mk2", "utility-science-pack")
bobmods.lib.tech.remove_prerequisite("power-armor-mk2", "military-4")
bobmods.lib.tech.add_prerequisite("power-armor-mk2", "military-3")
bobmods.lib.tech.add_prerequisite("power-armor-mk2", "low-density-structure")

bobmods.lib.tech.replace_prerequisite("battery-mk2-equipment", "power-armor", "chemical-science-pack")
bobmods.lib.tech.replace_prerequisite("discharge-defense-equipment", "power-armor", "advanced-electronics-2")
