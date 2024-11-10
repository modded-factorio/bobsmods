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
data.raw.projectile["cannon-projectile"].force_condition = "enemy"
data.raw.projectile["explosive-cannon-projectile"].force_condition = "enemy"
data.raw.projectile["uranium-cannon-projectile"].force_condition = "enemy"
data.raw.projectile["explosive-uranium-cannon-projectile"].force_condition = "enemy"
