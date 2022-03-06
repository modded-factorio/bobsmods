if data.raw.ammo["piercing-rounds-magazine"].ammo_type and
  data.raw.ammo["piercing-rounds-magazine"].ammo_type.action and
  data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery and
  data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery.target_effects
then
  table.insert(data.raw.ammo["piercing-rounds-magazine"].ammo_type.action.action_delivery.target_effects, { type = "damage", damage = {amount = 2 , type = "bob-pierce"} } )
end

if data.raw.projectile["piercing-shotgun-pellet"].action and
  data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery and
  data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects
then
  table.insert(data.raw.projectile["piercing-shotgun-pellet"].action.action_delivery.target_effects, { type = "damage",  damage = {amount = 2 , type = "bob-pierce"} } )
end

data.raw.ammo["uranium-rounds-magazine"].magazine_size = 25


data.raw.ammo["artillery-shell"].stack_size = 20
data.raw.ammo["artillery-shell"].ammo_type.clamp_position = true

data.raw["artillery-turret"]["artillery-turret"].ammo_stack_limit = 50

