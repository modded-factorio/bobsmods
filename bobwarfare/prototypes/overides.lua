if
  data.raw.ammo["piercing-rounds-magazine"].ammo_type
  and data.raw.ammo["piercing-rounds-magazine"].ammo_type.action
  and data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery
  and data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery.target_effects
then
  local delivery = data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery
  -- If we have a single target, convert to array
  if delivery.target_effects.damage then
    delivery.target_effects = { delivery.target_effects }
  end
  table.insert(delivery.target_effects, { type = "damage", damage = { amount = 2, type = "bob-pierce" } })
end

if
  data.raw.projectile["piercing-shotgun-pellet"].action
  and data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery
  and data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects
then
  local delivery = data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery
  -- If we have a single target, convert to array
  if delivery.target_effects.damage then
    delivery.target_effects = { delivery.target_effects }
  end
  table.insert(delivery.target_effects, { type = "damage", damage = { amount = 2, type = "bob-pierce" } })
end

data.raw.ammo["uranium-rounds-magazine"].magazine_size = 25

data.raw.ammo["artillery-shell"].stack_size = 20
data.raw.ammo["artillery-shell"].ammo_type.clamp_position = true

data.raw["artillery-turret"]["artillery-turret"].ammo_stack_limit = 50

--Make cannon shells only hit enemies, so tankotrons don't shoot their own legs and AAI Programmable Vehicles tanks don't hit each other
data.raw.projectile["cannon-projectile"].force_condition = "not-same"
data.raw.projectile["explosive-cannon-projectile"].force_condition = "not-same"
data.raw.projectile["uranium-cannon-projectile"].force_condition = "not-same"
data.raw.projectile["explosive-uranium-cannon-projectile"].force_condition = "not-same"

--Update AAI vehicle resistances to be comparable to Warfare's vehicles, restore machine gun to tank
if data.raw.car["vehicle-hauler"] then
  data.raw.car["vehicle-hauler"].resistances = {
    {
      type = "fire",
      decrease = 5,
      percent = 40,
    },
    {
      type = "physical",
      percent = 25,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "acid",
      percent = 25,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car["vehicle-chaingunner"] then
  data.raw.car["vehicle-chaingunner"].resistances = {
    {
      type = "fire",
      percent = 50,
    },
    {
      type = "physical",
      decrease = 5,
      percent = 25,
    },
    {
      type = "impact",
      decrease = 40,
      percent = 40,
    },
    {
      type = "acid",
      percent = 25,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car["vehicle-warden"] then
  data.raw.car["vehicle-warden"].resistances = {
    {
      type = "fire",
      decrease = 5,
      percent = 40,
    },
    {
      type = "poison",
      decrease = 5,
      percent = 50,
    },
    {
      type = "physical",
      decrease = 5,
      percent = 30,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 50,
    },
    {
      type = "explosion",
      decrease = 10,
      percent = 30,
    },
    {
      type = "acid",
      decrease = 5,
      percent = 60,
    },
    {
      type = "electric",
      percent = 20,
    },
    {
      type = "laser",
      percent = 40,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car["vehicle-laser-tank"] then
  data.raw.car["vehicle-laser-tank"].resistances = {
    {
      type = "fire",
      decrease = 5,
      percent = 40,
    },
    {
      type = "poison",
      decrease = 5,
      percent = 50,
    },
    {
      type = "physical",
      decrease = 15,
      percent = 45,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 70,
    },
    {
      type = "explosion",
      decrease = 20,
      percent = 60,
    },
    {
      type = "acid",
      decrease = 5,
      percent = 60,
    },
    {
      type = "electric",
      decrease = 7,
      percent = 25,
    },
    {
      type = "laser",
      percent = 20,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car["vehicle-flame-tank"] then
  data.raw.car["vehicle-flame-tank"].resistances = {
    {
      type = "fire",
      percent = 100,
    },
    {
      type = "poison",
      decrease = 5,
      percent = 50,
    },
    {
      type = "physical",
      decrease = 15,
      percent = 45,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 70,
    },
    {
      type = "explosion",
      decrease = 20,
      percent = 60,
    },
    {
      type = "acid",
      decrease = 5,
      percent = 60,
    },
    {
      type = "electric",
      decrease = 10,
      percent = 30,
    },
    {
      type = "laser",
      percent = 20,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car["vehicle-flame-tumbler"] then
  data.raw.car["vehicle-flame-tumbler"].resistances = {
    {
      type = "fire",
      decrease = 30,
      percent = 99,
    },
    {
      type = "poison",
      decrease = 3,
      percent = 40,
    },
    {
      type = "physical",
      decrease = 5,
      percent = 25,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 90,
    },
    {
      type = "explosion",
      decrease = 10,
      percent = 30,
    },
    {
      type = "acid",
      decrease = 5,
      percent = 35,
    },
    {
      type = "electric",
      percent = 20,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car.ironclad then
  data.raw.car.ironclad.resistances = {
    {
      type = "fire",
      decrease = 12,
      percent = 60,
    },
    {
      type = "physical",
      decrease = 15,
      percent = 60,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 80,
    },
    {
      type = "explosion",
      decrease = 20,
      percent = 70,
    },
    {
      type = "acid",
      decrease = 15,
      percent = 50,
    },
    {
      type = "electric",
      decrease = 15,
      percent = 50,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if data.raw.car["vehicle-miner-mk5"] then
  data.raw.car["vehicle-miner"].resistances = {
    {
      type = "fire",
      decrease = 5,
      percent = 40,
    },
    {
      type = "poison",
      decrease = 4,
      percent = 40,
    },
    {
      type = "physical",
      decrease = 3,
      percent = 20,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "acid",
      decrease = 4,
      percent = 40,
    },
    {
      type = "electric",
      decrease = 5,
      percent = 40,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
  data.raw.car["vehicle-miner-mk2"].resistances = {
    {
      type = "fire",
      decrease = 7,
      percent = 50,
    },
    {
      type = "poison",
      decrease = 6,
      percent = 50,
    },
    {
      type = "physical",
      decrease = 7,
      percent = 30,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "explosion",
      percent = 20,
    },
    {
      type = "acid",
      decrease = 6,
      percent = 50,
    },
    {
      type = "electric",
      decrease = 7,
      percent = 50,
    },
    {
      type = "laser",
      percent = 20,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
  data.raw.car["vehicle-miner-mk3"].resistances = {
    {
      type = "fire",
      decrease = 10,
      percent = 60,
    },
    {
      type = "poison",
      decrease = 8,
      percent = 60,
    },
    {
      type = "physical",
      decrease = 12,
      percent = 40,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "explosion",
      percent = 30,
    },
    {
      type = "acid",
      decrease = 8,
      percent = 60,
    },
    {
      type = "electric",
      decrease = 10,
      percent = 60,
    },
    {
      type = "laser",
      percent = 30,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
  data.raw.car["vehicle-miner-mk4"].resistances = {
    {
      type = "fire",
      decrease = 15,
      percent = 70,
    },
    {
      type = "poison",
      decrease = 10,
      percent = 70,
    },
    {
      type = "physical",
      decrease = 18,
      percent = 50,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "explosion",
      percent = 40,
    },
    {
      type = "acid",
      decrease = 10,
      percent = 70,
    },
    {
      type = "electric",
      decrease = 15,
      percent = 70,
    },
    {
      type = "laser",
      percent = 40,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
  data.raw.car["vehicle-miner-mk5"].resistances = {
    {
      type = "fire",
      decrease = 20,
      percent = 80,
    },
    {
      type = "poison",
      decrease = 12,
      percent = 80,
    },
    {
      type = "physical",
      decrease = 25,
      percent = 60,
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60,
    },
    {
      type = "explosion",
      percent = 60,
    },
    {
      type = "acid",
      decrease = 12,
      percent = 80,
    },
    {
      type = "electric",
      decrease = 20,
      percent = 80,
    },
    {
      type = "laser",
      percent = 60,
    },
    {
      type = "bob-plasma",
      decrease = 15,
      percent = 50,
    },
  }
end
if mods["aai-programmable-vehicles"] then
  --Temporarily change new spidertrons to only have one gun so that they don't generate an excessive number of essentially identical AI versions. Proper armaments will be restored in data-final-fixes.
  data.raw["spider-vehicle"]["bob-tankotron"].guns = { "bob-spidertron-cannon-1" }
  data.raw["spider-vehicle"]["bob-heavy-spidertron"].guns = { "spidertron-rocket-launcher-1" }
end
