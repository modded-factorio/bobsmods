local fluids = {
  "glycerol",
  "nitroglycerin"
}

local parts = {
  "petroleum-jelly",
  "gun-cotton",
  "cordite",
  "bullet-casing",
  "magazine",
  "bullet-projectile",
  "ap-bullet-projectile",
  "he-bullet-projectile",
  "flame-bullet-projectile",
  "acid-bullet-projectile",
  "poison-bullet-projectile",
  "electric-bullet-projectile",
  "shotgun-shell-casing",
  "shot",
  "laser-rifle-battery-case",
  "rocket-engine",
  "rocket-body",
  "rocket-warhead",
  "piercing-rocket-warhead",
  "explosive-rocket-warhead",
  "acid-rocket-warhead",
  "flame-rocket-warhead",
  "poison-rocket-warhead",
  "electric-rocket-warhead",
}

local bullets = {
  "bullet",
  "ap-bullet",
  "he-bullet",
  "flame-bullet",
  "acid-bullet",
  "poison-bullet",
  "electric-bullet",
}




bobmods.lib.module.add_productivity_limitations(fluids)
if data.raw.fluid["sulfuric-nitric-acid"] then
  bobmods.lib.module.add_productivity_limitation("sulfuric-nitric-acid")
end
bobmods.lib.module.add_productivity_limitations(parts)

-- Might be a bit unfair to include the completed bullets, even though they're an intermediate.
--bobmods.lib.module.add_productivity_limitations(bullets)

if settings.startup["bobmods-warfare-spidertron-overhaul"].value == true then
  bobmods.lib.module.add_productivity_limitations{
    "mech-leg-segment",
    "mech-knee",
    "mech-foot",
    "mech-hip",
    "mech-brain",
    "mech-armor-plate"
  }
end

if settings.startup["bobmods-warfare-robotupdate"].value == true and bobmods.warfare.RobotParts == true then
  bobmods.lib.module.add_productivity_limitations{
    "robot-brain-combat",
    "robot-brain-combat-2",
    "robot-brain-combat-3",
    "robot-brain-combat-4",
    "robot-tool-combat",
    "robot-tool-combat-2",
    "robot-tool-combat-3",
    "robot-tool-combat-4"
  }
end

