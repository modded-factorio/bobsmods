local sounds = require("__base__.prototypes.entity.sounds")
local warefareSounds = require("prototypes.entity.sounds")

data:extend({
  {
    type = "gun",
    name = "bob-rifle",
    icon = "__bobwarfare__/graphics/icons/rifle.png",
    icon_size = 32,
    subgroup = "gun",
    order = "a[basic-clips]-c[rifle]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 30,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 0.6,
      range = 20,
      damage_modifier = 7, --7.5
      sound = warefareSounds.rifle,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0.6 },
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1,
      },
    },
    drop_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "gun",
    name = "bob-sniper-rifle",
    icon = "__bobwarfare__/graphics/icons/sniper-rifle.png",
    icon_size = 32,
    subgroup = "gun",
    order = "a[basic-clips]-d[sniper-rifle]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 120,
      movement_slow_down_factor = 0.75,
      projectile_creation_distance = 0.6,
      range = 30, --60
      damage_modifier = 25, --30
      sound = warefareSounds.sniperRifle,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0.6 },
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1,
      },
    },
    drop_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "gun",
    name = "bob-laser-rifle",
    icon = "__bobwarfare__/graphics/icons/laser-rifle.png",
    icon_size = 32,
    subgroup = "gun",
    order = "b[laser-rifle]",
    stack_size = 5,
    attack_parameters = {
      type = "beam",
      ammo_category = "bob-laser-rifle",
      cooldown = 20,
      movement_slow_down_factor = 0.5,
      damage_modifier = 1.2,
      range = 20,
    },
    drop_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})

--tank weapons
data:extend({
  {
    type = "gun",
    name = "bob-gatling-gun",
    icon = "__bobwarfare__/graphics/icons/gatling-gun.png",
    icon_size = 32,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "a[basic-clips]-e[gatling-gun]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 2,
      movement_slow_down_factor = 0.8,
      projectile_center = { -0.15625, -0.07812 },
      projectile_creation_distance = 1,
      range = 20,
      damage_modifier = 1.5,
      sound = warefareSounds.gunTurret,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0 },
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1,
      },
    },
    drop_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },

  {
    type = "gun",
    name = "bob-tank-cannon-2",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-a[cannon-2]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 60, --90
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = { -0.15625, -0.07812 },
      range = 25,
      damage_modifier = 1.5,
      sound = warefareSounds.tankTurret,
    },
  },

  {
    type = "gun",
    name = "bob-tank-cannon-3",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-a[cannon-3]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 30,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = { -0.15625, -0.07812 },
      range = 25,
      damage_modifier = 2,
      sound = warefareSounds.tankTurret,
    },
  },

  {
    type = "gun",
    name = "bob-tank-artillery-1",
    icon = "__bobwarfare__/graphics/icons/tank-artillery.png",
    icon_size = 32,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-b[artillery-1]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "artillery-shell",
      cooldown = 225,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = { -0.15625, -0.07812 },
      range = 96,
      min_range = 15,
      sound = warefareSounds.tankTurret,
    },
  },

  {
    type = "gun",
    name = "bob-tank-artillery-2",
    icon = "__bobwarfare__/graphics/icons/tank-artillery.png",
    icon_size = 32,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-b[artillery-2]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "artillery-shell",
      cooldown = 200,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = { -0.15625, -0.07812 },
      range = 128,
      min_range = 15,
      damage_modifier = 1.5,
      sound = warefareSounds.tankTurret,
    },
  },

  {
    type = "gun",
    name = "bob-tank-laser",
    icon = "__bobwarfare__/graphics/icons/tank-laser.png",
    icon_size = 32,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-c[laser]",
    stack_size = 5,
    attack_parameters = {
      type = "beam",
      ammo_category = "bob-laser-rifle",
      cooldown = 20,
      movement_slow_down_factor = 0,
      damage_modifier = 2,
      range = 25,
    },
  },

  {
    type = "gun",
    name = "bob-tank-flamethrower-2",
    localised_name = { "item-name.tank-flamethrower" },
    icon = "__base__/graphics/icons/flamethrower.png",
    icon_size = 64,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "b[flamethrower]-b[tank-flamethrower]2",
    attack_parameters = {
      type = "stream",
      ammo_category = "flamethrower",
      cooldown = 1,
      gun_barrel_length = 1.4,
      gun_center_shift = { -0.17, -1.15 },
      range = 11,
      damage_modifier = 1.2,
      min_range = 3,
      cyclic_sound = {
        begin_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 1,
          },
        },
        middle_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 1,
          },
        },
        end_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 1,
          },
        },
      },
    },
    stack_size = 1,
  },
  {
    type = "gun",
    name = "bob-tank-flamethrower-3",
    icon = "__base__/graphics/icons/flamethrower.png",
    icon_size = 64,
    localised_name = { "item-name.tank-flamethrower" },
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "b[flamethrower]-b[tank-flamethrower]3",
    attack_parameters = {
      type = "stream",
      ammo_category = "flamethrower",
      cooldown = 1,
      gun_barrel_length = 1.4,
      gun_center_shift = { -0.17, -1.15 },
      range = 13,
      damage_modifier = 1.5,
      min_range = 3,
      cyclic_sound = {
        begin_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 1,
          },
        },
        middle_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 1,
          },
        },
        end_sound = {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 1,
          },
        },
      },
    },
    stack_size = 1,
  },
})

local weapon = util.table.deepcopy(data.raw.gun["artillery-wagon-cannon"])

weapon.name = "bob-artillery-wagon-cannon-2"
weapon.attack_parameters.cooldown = 180
weapon.attack_parameters.range = 8 * 32
weapon.attack_parameters.damage_modifier = 1.3

data:extend({ weapon })

weapon = util.table.deepcopy(data.raw.gun["artillery-wagon-cannon"])

weapon.name = "bob-artillery-wagon-cannon-3"
weapon.attack_parameters.cooldown = 160
weapon.attack_parameters.range = 9 * 32
weapon.attack_parameters.damage_modifier = 1.6

data:extend({ weapon })
