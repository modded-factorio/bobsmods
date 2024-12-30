local sounds = require("__base__.prototypes.entity.sounds")

local function set_worm_animations(entiy, scale, tint)
  entiy.folded_animation = worm_folded_animation(scale, tint)
  entiy.preparing_animation = worm_preparing_animation(scale, tint, "forward")
  entiy.prepared_animation = worm_prepared_animation(scale, tint)
  entiy.prepared_alternative_animation = worm_prepared_alternative_animation(scale, tint)
  entiy.starting_attack_animation = worm_start_attack_animation(scale, tint)
  entiy.ending_attack_animation = worm_end_attack_animation(scale, tint)
  entiy.folding_animation = worm_preparing_animation(scale, tint, "backward")
end

set_worm_animations(data.raw.turret["big-worm-turret"], scale_worm_big, bobmods.enemies.acid_worm_tint)
data.raw.turret["big-worm-turret"].resistances = {
  {
    type = "physical",
    decrease = 10,
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30,
  },
  {
    type = "acid",
    decrease = 5,
    percent = 40,
  },
}
data.raw.turret["big-worm-turret"].attack_parameters = {
  type = "stream",
  damage_modifier = 5,
  cooldown = 4,
  range = 38,
  min_range = 0,
  projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
  use_shooter_direction = true,
  lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream
  ammo_category = "biological",
  ammo_type = {
    action = {
      type = "direct",
      action_delivery = {
        type = "stream",
        stream = "bob-acid-stream",
        source_offset = { 0.15, -0.5 },
      },
    },
  },
}

local function add_big_worm_turret(turret_type, seed)
  data:extend({
    util.merge({
      data.raw.turret["big-worm-turret"],
      {
        name = "bob-big-"..turret_type.."-worm-turret",
        order = "b-b-g",
        corpse = "bob-big-"..turret_type.."-worm-corpse",
        autoplace = enemy_autoplace.enemy_worm_autoplace("enemy_autoplace_base(8,"..seed..")"),
      }
    })
  })
end

local function set_worm_attack_parameters(worm_type)
  data.raw.turret["bob-big-"..worm_type.."-worm-turret"].attack_parameters = {
    type = "stream",
    damage_modifier = 5,
    cooldown = 4,
    range = 38,
    min_range = 0,
    projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),
    use_shooter_direction = true,
    lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream
    ammo_category = "biological",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = "bob-"..worm_type.."-stream",
          source_offset = { 0.15, -0.5 },
        },
      },
    },
  }
end

local function set_worm_resistance(worm_type, damage_type)
  data.raw.turret["bob-big-"..worm_type.."-worm-turret"].resistances = {
    {
      type = "physical",
      decrease = 8,
    },
    {
      type = "explosion",
      decrease = 10,
      percent = 25,
    },
    {
      type = damage_type,
      decrease = 5,
      percent = 40,
    },
  }
end

local worm_types={"explosive", "fire", "poison", "piercing", "electric"}
local damage_types={"explosive", "fire", "poison", "bob-pierce", "electric"}
local tints={bobmods.enemies.explosive_worm_tint, bobmods.enemies.fire_worm_tint, bobmods.enemies.poison_worm_tint, bobmods.enemies.piercing_worm_tint, bobmods.enemies.electric_worm_tint}
local order={2,3,4,5,6}
for i,t in pairs(worm_types)
do
  --seed is arbitrary but has to be unique
  add_big_worm_turret(t, tostring(i+2048))
  set_worm_attack_parameters(t)
  set_worm_resistance(t, damage_types[i])
  set_worm_animations(data.raw.turret["bob-big-"..t.."-worm-turret"], scale_worm_big, tints[i])
  data:extend({
    util.merge({
      data.raw.corpse["big-worm-corpse"],
      {
        name = "bob-big-"..t.."-worm-corpse",
        order = "c[corpse]-c[worm]-c[big"..tostring(order[i]).."]",
      },
    })
  })
  data.raw.corpse["bob-big-"..t.."-worm-corpse"].animation = worm_die_animation(scale_worm_big, tints[i])
end

--all worms have explosion resistance, the explosive worm has higher resistance
data.raw.turret["bob-big-explosive-worm-turret"].resistances = {
  {
    type = "physical",
    decrease = 8,
  },
  {
    type = "explosion",
    decrease = 15,
    percent = 50,
  },
}

data.raw.corpse["big-worm-corpse"].animation = worm_die_animation(scale_worm_big, bobmods.enemies.acid_worm_tint)

data:extend({
  {
    type = "turret",
    name = "bob-giant-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "not-repairable", "breaths-air" },
    max_health = 1000,
    order = "b-b-i",
    subgroup = "enemies",
    resistances = {
      {
        type = "physical",
        decrease = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 35,
      },
      {
        type = "fire",
        decrease = 3,
        percent = 70,
      },
    },
    healing_per_tick = 0.03,
    collision_box = { { -2.1, -1.8 }, { 2.1, 1.8 } },
    selection_box = { { -2.1, -1.8 }, { 2.1, 1.8 } },
    map_generator_bounding_box = { { -3.1, -2.8 }, { 3.1, 2.8 } },
    shooting_cursor_size = 6,
    rotation_speed = 1,
    corpse = "bob-giant-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = sounds.worm_dying(1.0),
    graphics_set = {},
    folded_speed = 0.01,
    folded_speed_secondary = 0.024,
    folded_animation = worm_folded_animation(bobmods.enemies.giant_scale, bobmods.enemies.giant_worm_tint),
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(
      bobmods.enemies.giant_scale,
      bobmods.enemies.giant_worm_tint,
      "forward"
    ),
    preparing_sound = sounds.worm_standup(1),
    prepared_speed = 0.015,
    prepared_speed_secondary = 0.012,
    prepared_animation = worm_prepared_animation(bobmods.enemies.giant_scale, bobmods.enemies.giant_worm_tint),
    prepared_sound = sounds.worm_breath(0.8),
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    prepared_alternative_chance = 0.2,
    prepared_alternative_animation = worm_prepared_alternative_animation(
      bobmods.enemies.giant_scale,
      bobmods.enemies.giant_worm_tint
    ),
    prepared_alternative_sound = sounds.worm_roar_alternative(0.7),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_start_attack_animation(
      bobmods.enemies.giant_scale,
      bobmods.enemies.giant_worm_tint
    ),
    starting_attack_sound = sounds.worm_roars(1.0),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_end_attack_animation(bobmods.enemies.giant_scale, bobmods.enemies.giant_worm_tint),
    folding_speed = 0.015,
    folding_animation = worm_preparing_animation(
      bobmods.enemies.giant_scale,
      bobmods.enemies.giant_worm_tint,
      "backward"
    ),
    folding_sound = sounds.worm_fold(1),
    integration = worm_integration(bobmods.enemies.giant_scale),
    secondary_animation = true,
    random_animation_offset = true,
    attack_from_start_frame = true,
    prepare_range = 70,
    allow_turning_when_starting_attack = true,
    attack_parameters = {
      type = "stream",
      ammo_category = "biological",
      damage_modifier = 8,
      cooldown = 4,
      range = 42,
      min_range = 0,
      projectile_creation_parameters = worm_shoot_shiftings(
        bobmods.enemies.giant_scale,
        bobmods.enemies.giant_scale * scale_worm_stream
      ),
      use_shooter_direction = true,
      lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream
      ammo_type = {
        action = {
          type = "direct",
          action_delivery = {
            type = "stream",
            stream = "bob-titan-stream",
            source_offset = { 0.15, -0.5 },
          },
        },
      },
    },
    build_base_evolution_requirement = 0.75,
    autoplace = enemy_autoplace.enemy_worm_autoplace("enemy_autoplace_base(7, 10)"),
    call_for_help_radius = 40,
  },

  util.merge({
    data.raw.corpse["behemoth-worm-corpse"],
    {
      name = "bob-giant-worm-corpse",
      order = "c[corpse]-c[worm]-d[a-giant]",
    },
  }),
})

data.raw.corpse["bob-giant-worm-corpse"].animation =
  worm_die_animation(bobmods.enemies.giant_scale, bobmods.enemies.giant_worm_tint)
data.raw.corpse["bob-giant-worm-corpse"].ground_patch = { sheet = worm_integration(bobmods.enemies.giant_scale) }

set_worm_animations(data.raw.turret["behemoth-worm-turret"], bobmods.enemies.behemoth_scale, tint_worm_behemoth)
data.raw.turret["behemoth-worm-turret"].collision_box = { { -2.8, -2.4 }, { 2.8, 2.4 } }
data.raw.turret["behemoth-worm-turret"].selection_box = { { -2.8, -2.4 }, { 2.8, 2.4 } }
data.raw.turret["behemoth-worm-turret"].map_generator_bounding_box = { { -3.8, -3.4 }, { 3.8, 3.4 } }
data.raw.turret["behemoth-worm-turret"].integration = worm_integration(bobmods.enemies.behemoth_scale)
data.raw.turret["behemoth-worm-turret"].max_health = 1500
data.raw.turret["behemoth-worm-turret"].shooting_cursor_size = 8

data.raw.corpse["behemoth-worm-corpse"].animation =
  worm_die_animation(bobmods.enemies.behemoth_scale, tint_worm_behemoth)
data.raw.corpse["behemoth-worm-corpse"].ground_patch = { sheet = worm_integration(bobmods.enemies.behemoth_scale) }
