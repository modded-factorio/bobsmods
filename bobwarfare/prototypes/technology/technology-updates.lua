bobmods.lib.tech.remove_science_pack("follower-robot-count-5", "production-science-pack")

bobmods.lib.tech.remove_science_pack("artillery", "utility-science-pack")
bobmods.lib.tech.remove_prerequisite("artillery", "military-4")
bobmods.lib.tech.add_prerequisite("artillery", "processing-unit")
bobmods.lib.tech.add_prerequisite("artillery", "concrete")
bobmods.lib.tech.add_prerequisite("bob-artillery-turret-2", "military-4")
bobmods.lib.tech.add_prerequisite("bob-artillery-wagon-2", "military-4")

if
  data.raw.tool["bob-science-pack-gold"]
  and data.raw.tool["bob-alien-science-pack-blue"]
  and data.raw.tool["bob-alien-science-pack-orange"]
  and data.raw.tool["bob-alien-science-pack-purple"]
  and data.raw.tool["bob-alien-science-pack-yellow"]
  and data.raw.tool["bob-alien-science-pack-green"]
  and data.raw.tool["bob-alien-science-pack-red"]
then
  data.raw.technology["bob-ap-bullets"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-blue", 1 } }
  data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-blue", 1 } }
  data.raw.technology["bob-piercing-rocket"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-blue", 1 } }

  data.raw.technology["bob-electric-bullets"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-orange", 1 } }
  data.raw.technology["bob-shotgun-electric-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-orange", 1 } }
  data.raw.technology["bob-electric-rocket"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-orange", 1 } }

  data.raw.technology["bob-acid-bullets"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-purple", 1 } }
  data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-purple", 1 } }
  data.raw.technology["bob-acid-rocket"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-purple", 1 } }

  data.raw.technology["bob-he-bullets"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-yellow", 1 } }
  data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-yellow", 1 } }
  data.raw.technology["bob-explosive-rocket"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-yellow", 1 } }

  data.raw.technology["bob-poison-bullets"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-green", 1 } }
  data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-green", 1 } }
  data.raw.technology["bob-poison-rocket"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-green", 1 } }

  data.raw.technology["bob-flame-bullets"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-red", 1 } }
  data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-red", 1 } }
  data.raw.technology["bob-flame-rocket"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-red", 1 } }

  data.raw.technology["bob-plasma-turrets-4"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-yellow", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "space-science-pack", 1 },
  }

  data.raw.technology["bob-plasma-bullets"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
    { "bob-alien-science-pack-green", 1 },
    { "bob-alien-science-pack-red", 1 },
  }
  data.raw.technology["bob-shotgun-plasma-shells"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
    { "bob-alien-science-pack-green", 1 },
    { "bob-alien-science-pack-red", 1 },
  }
  data.raw.technology["bob-plasma-rocket"].unit.ingredients = {
    { "bob-science-pack-gold", 1 },
    { "bob-alien-science-pack", 1 },
    { "bob-alien-science-pack-blue", 1 },
    { "bob-alien-science-pack-orange", 1 },
    { "bob-alien-science-pack-purple", 1 },
    { "bob-alien-science-pack-yellow", 1 },
    { "bob-alien-science-pack-green", 1 },
    { "bob-alien-science-pack-red", 1 },
  }
  data.raw.technology["bob-poison-artillery-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-green", 1 } }
  data.raw.technology["bob-fire-artillery-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-red", 1 } }
  data.raw.technology["bob-explosive-artillery-shells"].unit.ingredients =
    { { "bob-science-pack-gold", 1 }, { "bob-alien-science-pack-yellow", 1 } }
end

if data.raw.technology["bob-alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-bullets")
  bobmods.lib.tech.add_prerequisite("bob-plasma-bullets", "bob-alien-research")

  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-shotgun-shells")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-plasma-shells", "bob-alien-research")

  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-rocket")
  bobmods.lib.tech.add_prerequisite("bob-plasma-rocket", "bob-alien-research")

  bobmods.lib.tech.add_prerequisite("bob-poison-artillery-shells", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-fire-artillery-shells", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-explosive-artillery-shells", "bob-alien-research")
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

if data.raw.technology["bob-alien-blue-research"] then
  bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "bob-alien-blue-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "bob-alien-blue-research")
  bobmods.lib.tech.add_prerequisite("bob-piercing-rocket", "bob-alien-blue-research")
else
  if data.raw.technology["bob-tungsten-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "bob-tungsten-processing")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "bob-tungsten-processing")
  end
  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-piercing-rocket", "bob-alien-research")
  end
end

if data.raw.technology["bob-alien-orange-research"] then
  bobmods.lib.tech.add_prerequisite("bob-electric-bullets", "bob-alien-orange-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-electric-shells", "bob-alien-orange-research")
  bobmods.lib.tech.add_prerequisite("bob-electric-rocket", "bob-alien-orange-research")
elseif data.raw.technology["bob-alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-electric-bullets", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-electric-shells", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-electric-rocket", "bob-alien-research")
elseif data.raw.technology["bob-gold-processing"] then
  bobmods.lib.tech.add_prerequisite("bob-electric-bullets", "bob-gold-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-electric-shells", "bob-gold-processing")
  bobmods.lib.tech.add_prerequisite("bob-electric-rocket", "bob-gold-processing")
end

if data.raw.technology["bob-alien-purple-research"] then
  bobmods.lib.tech.add_prerequisite("bob-acid-bullets", "bob-alien-purple-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-acid-shells", "bob-alien-purple-research")
  bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "bob-alien-purple-research")
else
  if data.raw.technology["bob-nitrogen-processing"] then
    bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "bob-nitrogen-processing")
  end
  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-acid-bullets", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-acid-shells", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "bob-alien-research")
  end
end

if data.raw.technology["bob-alien-yellow-research"] then
  bobmods.lib.tech.add_prerequisite("bob-he-bullets", "bob-alien-yellow-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "bob-alien-yellow-research")
  bobmods.lib.tech.add_prerequisite("bob-explosive-rocket", "bob-alien-yellow-research")
else
  bobmods.lib.tech.add_prerequisite("bob-he-bullets", "explosives")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "explosives")
  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-he-bullets", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-explosive-rocket", "bob-alien-research")
  end
end

if data.raw.technology["bob-alien-green-research"] then
  bobmods.lib.tech.add_prerequisite("bob-poison-bullets", "bob-alien-green-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-poison-shells", "bob-alien-green-research")
  bobmods.lib.tech.add_prerequisite("bob-poison-rocket", "bob-alien-green-research")
elseif data.raw.technology["bob-alien-research"] then
  bobmods.lib.tech.add_prerequisite("bob-poison-bullets", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-poison-shells", "bob-alien-research")
  bobmods.lib.tech.add_prerequisite("bob-poison-rocket", "bob-alien-research")
end

if data.raw.technology["bob-alien-red-research"] then
  bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "bob-alien-red-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "bob-alien-red-research")
  bobmods.lib.tech.add_prerequisite("bob-flame-rocket", "bob-alien-red-research")
else
  bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "flammables")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "flammables")
  if data.raw.technology["bob-alien-research"] then
    bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "bob-alien-research")
    bobmods.lib.tech.add_prerequisite("bob-flame-rocket", "bob-alien-research")
  end
end

bobmods.lib.tech.add_recipe_unlock("military-3", "bob-rifle")
bobmods.lib.tech.add_recipe_unlock("military-3", "bob-sniper-rifle")
bobmods.lib.tech.add_recipe_unlock("military-3", "bob-fire-capsule")

bobmods.lib.tech.add_recipe_unlock("uranium-ammo", "bob-uranium-bullet-projectile")
bobmods.lib.tech.add_recipe_unlock("uranium-ammo", "bob-uranium-bullet")
bobmods.lib.tech.add_prerequisite("uranium-ammo", "bob-bullets")
bobmods.lib.tech.add_prerequisite("uranium-ammo", "bob-shotgun-shells")
bobmods.lib.tech.add_recipe_unlock("uranium-ammo", "bob-shotgun-uranium-shell")

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
  data.raw.technology["laser-weapons-damage-1"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.2 }
)
table.insert(
  data.raw.technology["laser-weapons-damage-2"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.2 }
)
table.insert(
  data.raw.technology["laser-weapons-damage-3"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.3 }
)
table.insert(
  data.raw.technology["laser-weapons-damage-4"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.4 }
)
table.insert(
  data.raw.technology["laser-weapons-damage-5"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.5 }
)
table.insert(
  data.raw.technology["laser-weapons-damage-6"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.7 }
)
table.insert(
  data.raw.technology["laser-weapons-damage-7"].effects,
  { type = "ammo-damage", ammo_category = "bob-laser-rifle", modifier = 0.7 }
)

table.insert(
  data.raw.technology["laser-shooting-speed-3"].effects,
  { type = "gun-speed", ammo_category = "bob-laser-rifle", modifier = 0.3 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-4"].effects,
  { type = "gun-speed", ammo_category = "bob-laser-rifle", modifier = 0.4 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-5"].effects,
  { type = "gun-speed", ammo_category = "bob-laser-rifle", modifier = 0.4 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-6"].effects,
  { type = "gun-speed", ammo_category = "bob-laser-rifle", modifier = 0.5 }
)
table.insert(
  data.raw.technology["laser-shooting-speed-7"].effects,
  { type = "gun-speed", ammo_category = "bob-laser-rifle", modifier = 0.5 }
)

bobmods.lib.tech.remove_science_pack("laser-weapons-damage-1", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-weapons-damage-2", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-weapons-damage-3", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-shooting-speed-1", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-shooting-speed-2", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser", "chemical-science-pack")
bobmods.lib.tech.remove_prerequisite("laser", "chemical-science-pack")
bobmods.lib.tech.remove_science_pack("laser-turret", "chemical-science-pack")
-- Remove chemical-science-pack prerequisite in case vehicle equipment or some other mod has added it
bobmods.lib.tech.remove_prerequisite("laser-turret", "chemical-science-pack")
bobmods.lib.tech.set_science_pack_count("laser-turret", 100)

if mods["boblogistics"] then
  bobmods.lib.tech.remove_science_pack("bob-robot-gun-drones", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("bob-robot-laser-drones", "chemical-science-pack")
  bobmods.lib.tech.remove_science_pack("bob-robot-flamethrower-drones", "chemical-science-pack")
end
