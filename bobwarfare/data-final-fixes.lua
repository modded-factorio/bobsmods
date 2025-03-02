if mods["aai-programmable-vehicles"] then
  --Restore new spidertron armaments
  data.raw["spider-vehicle"]["bob-tankotron"].guns = { "bob-spidertron-cannon-1", "bob-spidertron-cannon-2" }
  data.raw["spider-vehicle"]["bob-heavy-spidertron"].guns = {
    "spidertron-rocket-launcher-1",
    "spidertron-rocket-launcher-2",
    "spidertron-rocket-launcher-3",
    "spidertron-rocket-launcher-4",
    "spidertron-rocket-launcher-1",
    "spidertron-rocket-launcher-2",
    "spidertron-rocket-launcher-3",
    "spidertron-rocket-launcher-4",
  }
  if mods["aai-vehicles-chaingunner"] then
    --Restore machine gun to tank 1, since the chaingunner alone is far too fragile to survive midgame enemies
    if mods["aai-vehicles-flame-tank"] then
      data.raw.car.tank.guns = { "tank-cannon", "tank-machine-gun" }
      aai_make_ai_vehicles(data.raw.car.tank)
      data.raw.technology.tank.effects = {
        {
          recipe = "tank",
          type = "unlock-recipe",
        },
        {
          recipe = "cannon-shell",
          type = "unlock-recipe",
        },
        {
          recipe = "explosive-cannon-shell",
          type = "unlock-recipe",
        },
        {
          recipe = "cannon-shell-precision",
          type = "unlock-recipe",
        },
        {
          recipe = "explosive-cannon-shell-precision",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-cannon",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-cannon-reverse",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-machine-gun",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-machine-gun-reverse",
          type = "unlock-recipe",
        },
      }
    else
      data.raw.car.tank.guns = { "tank-cannon", "tank-machine-gun", "tank-flamethrower" }
      aai_make_ai_vehicles(data.raw.car.tank)
      data.raw.technology.tank.effects = {
        {
          recipe = "tank",
          type = "unlock-recipe",
        },
        {
          recipe = "cannon-shell",
          type = "unlock-recipe",
        },
        {
          recipe = "explosive-cannon-shell",
          type = "unlock-recipe",
        },
        {
          recipe = "cannon-shell-precision",
          type = "unlock-recipe",
        },
        {
          recipe = "explosive-cannon-shell-precision",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-cannon",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-cannon-reverse",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-machine-gun",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-machine-gun-reverse",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-flamethrower",
          type = "unlock-recipe",
        },
        {
          recipe = "tank-tank-flamethrower-reverse",
          type = "unlock-recipe",
        },
      }
    end
  end
end

if mods["combat-mechanics-overhaul"] then
  if not settings.startup["shotguns-hit-friendly"].value == true then
    data.raw.projectile["bob-better-shotgun-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-acid-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-acid-projectile"].action.action_delivery.target_effects[1].action.force =
      "not-same"
    data.raw.projectile["bob-shotgun-ap-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-electric-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-explosive-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-explosive-projectile"].action.action_delivery.target_effects[2].action.force =
      "not-same"
    data.raw.projectile["bob-shotgun-flame-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-flame-projectile"].action.action_delivery.target_effects[1].action.force =
      "not-same"
    data.raw.projectile["bob-shotgun-plasma-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-plasma-projectile"].action.action_delivery.target_effects[1].action.force =
      "not-same"
    data.raw.projectile["bob-shotgun-poison-projectile"].force_condition = "not-same"
    data.raw.projectile["bob-shotgun-poison-projectile"].action.action_delivery.target_effects[1].action.force =
      "not-same"
    data.raw.projectile["bob-shotgun-uranium-projectile"].force_condition = "not-same"
  end
end
