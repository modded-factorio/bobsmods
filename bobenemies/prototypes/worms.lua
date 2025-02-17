--Basic
bobmods.enemies.new_worm({
  name = "small-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "a-b-a",
  tier = 1,
  explosion_resist = "high",
  tint = bobmods.enemies.small_worm_tint,
  autoplace = enemy_autoplace.enemy_worm_autoplace("enemy_autoplace_base(0, 2)"),
  build_base_evolution_requirement = 0,

  sticker_name = "acid-sticker-small",

  attack_range = 25,
  attack_damage = 2,
  attack_damage_modifier = 18,
  attack_stream_name = "acid-stream-worm-small",
  attack_spit_radius = 1.4,

  splash_fire_name = "acid-splash-fire-worm-small",

  factoriopedia_simulation = {
    init = enemy_simulation("small-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "medium-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "a-b-b",
  tier = 2,
  explosion_resist = "high",
  tint = bobmods.enemies.medium_worm_tint,
  autoplace = enemy_autoplace.enemy_worm_autoplace("enemy_autoplace_base(2, 3)"),
  build_base_evolution_requirement = 0.3,

  sticker_name = "acid-sticker-medium",

  attack_range = 30,
  attack_damage = 2,
  attack_damage_modifier = 36,
  attack_stream_name = "acid-stream-worm-medium",
  attack_spit_radius = 1.6,

  splash_fire_name = "acid-splash-fire-worm-medium",
  fire_damage_per_tick = 0.2,

  factoriopedia_simulation = {
    init = enemy_simulation("medium-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "big-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "a-b-c",
  tier = 3,
  explosion_resist = "high",
  tint = bobmods.enemies.big_worm_tint,
  autoplace = enemy_autoplace.enemy_worm_autoplace("enemy_autoplace_base(4, 4)"),
  build_base_evolution_requirement = 0.45,

  sticker_name = "acid-sticker-big",

  attack_range = 35,
  attack_damage = 2,
  attack_damage_modifier = 48,
  attack_stream_name = "acid-stream-worm-big",
  attack_spit_radius = 1.8,

  splash_fire_name = "acid-splash-fire-worm-big",
  fire_damage_per_tick = 0.4,

  factoriopedia_simulation = {
    init = enemy_simulation("big-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "a-b-d",
  tier = 4,
  explosion_resist = "high",
  tint = bobmods.enemies.huge_worm_tint,

  sticker_name = "acid-sticker-huge",
  sticker_slow_player_movement = 0.4,
  sticker_slow_vehicle_speed = 0.4,
  sticker_slow_vehicle_friction = 1.5,

  attack_range = 40,
  attack_damage = 2,
  attack_damage_modifier = 60,
  attack_stream_name = "acid-stream-worm-huge",
  attack_spit_radius = 2,

  splash_fire_name = "acid-splash-fire-worm-huge",
  fire_damage_per_tick = 0.6,
  fire_scale = 1.05,

  created_effect = {
    {
      type = "cluster",
      cluster_count = 14,
      distance = 45,
      distance_deviation = 15,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-entity",
          entity_name = "bob-hardened-bile",
          probability = 0.2,
          check_buildability = true,
        },
      },
    },
  },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "a-b-e",
  tier = 5,
  explosion_resist = "high",
  tint = bobmods.enemies.giant_worm_tint,

  sticker_name = "acid-sticker-giant",
  sticker_slow_player_movement = 0.35,
  sticker_slow_vehicle_speed = 0.35,
  sticker_slow_vehicle_friction = 1.6,

  attack_range = 45,
  attack_damage = 2,
  attack_damage_modifier = 72,
  attack_stream_name = "acid-stream-worm-giant",
  attack_spit_radius = 2.2,

  splash_fire_name = "acid-splash-fire-worm-giant",
  fire_damage_per_tick = 0.8,
  fire_scale = 1.1,

  created_effect = {
    {
      type = "cluster",
      cluster_count = 16,
      distance = 45,
      distance_deviation = 15,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-entity",
          entity_name = "bob-hardened-bile",
          probability = 0.21,
          check_buildability = true,
        },
      },
    },
  },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "a-b-f",
  tier = 6,
  explosion_resist = "high",
  tint = bobmods.enemies.titan_worm_tint,

  sticker_name = "acid-sticker-titan",
  sticker_duration_in_ticks = 135,
  sticker_slow_player_movement = 0.325,
  sticker_slow_vehicle_speed = 0.325,
  sticker_slow_vehicle_friction = 1.7,

  attack_range = 50,
  attack_damage = 2,
  attack_damage_modifier = 84,
  attack_stream_name = "acid-stream-worm-titan",
  attack_spit_radius = 2.4,

  splash_fire_name = "acid-splash-fire-worm-titan",
  fire_damage_per_tick = 1,
  fire_scale = 1.15,

  created_effect = {
    {
      type = "cluster",
      cluster_count = 18,
      distance = 45,
      distance_deviation = 15,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-entity",
          entity_name = "bob-hardened-bile",
          probability = 0.23,
          check_buildability = true,
        },
      },
    },
  },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "behemoth-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "a-b-g",
  tier = 7,
  explosion_resist = "high",
  tint = bobmods.enemies.behemoth_worm_tint,

  sticker_name = "acid-sticker-behemoth",
  sticker_duration_in_ticks = 150,
  sticker_slow_player_movement = 0.3,
  sticker_slow_vehicle_speed = 0.3,
  sticker_slow_vehicle_friction = 1.8,

  attack_range = 55,
  attack_damage = 2,
  attack_damage_modifier = 108,
  attack_stream_name = "acid-stream-worm-behemoth",
  attack_spit_radius = 2.6,

  splash_fire_name = "acid-splash-fire-worm-behemoth",
  fire_damage_per_tick = 1.2,
  fire_scale = 1.2,

  created_effect = {
    {
      type = "cluster",
      cluster_count = 20,
      distance = 45,
      distance_deviation = 15,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-entity",
          entity_name = "bob-hardened-bile",
          probability = 0.25,
          check_buildability = true,
        },
      },
    },
  },

  factoriopedia_simulation = {
    init = enemy_simulation("behemoth-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/basic-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "a-b-h",
  tier = 8,
  explosion_resist = "high",
  tint = bobmods.enemies.leviathan_worm_tint,

  sticker_name = "acid-sticker-leviathan",
  sticker_duration_in_ticks = 180,
  sticker_slow_player_movement = 0.25,
  sticker_slow_vehicle_speed = 0.25,
  sticker_slow_vehicle_friction = 2,

  attack_range = 60,
  attack_damage = 2,
  attack_damage_modifier = 160,
  attack_stream_name = "acid-stream-worm-leviathan",
  attack_spit_radius = 3,

  splash_fire_name = "acid-splash-fire-worm-leviathan",
  fire_damage_per_tick = 1.5,
  fire_scale = 1.3,

  created_effect = {
    {
      type = "cluster",
      cluster_count = 20,
      distance = 45,
      distance_deviation = 15,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-entity",
          entity_name = "bob-hardened-bile",
          probability = 0.4,
          check_buildability = true,
        },
      },
    },
  },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-worm-turret", 1.4),
  },
})

--Piercing
local piercing_shot = function(attack_range)
  return {
    action = {
      type = "direct",
      repeat_count = 5,
      action_delivery = {
        type = "projectile",
        starting_speed = 2,
        max_range = 2 + attack_range,
        projectile = "bob-piercing-spine",
        direction_deviation = 0.3,
      },
    },
  }
end

bobmods.enemies.new_worm({
  name = "bob-small-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "b-b-a",
  tier = 1,
  healing_per_tick = 0.08,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.small_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 30,
  attack_damage_modifier = 6,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(30),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-piercing-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "bob-medium-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "b-b-b",
  tier = 2,
  healing_per_tick = 0.08,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.medium_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 35,
  attack_damage_modifier = 12,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(35),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-piercing-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "bob-big-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "b-b-c",
  tier = 3,
  healing_per_tick = 0.16,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.big_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 40,
  attack_damage_modifier = 20,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(40),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-piercing-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "b-b-d",
  tier = 4,
  healing_per_tick = 0.32,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.huge_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 45,
  attack_damage_modifier = 30,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(45),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-piercing-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "b-b-e",
  tier = 5,
  healing_per_tick = 0.8,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.giant_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 50,
  attack_damage_modifier = 45,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(50),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-piercing-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "b-b-f",
  tier = 6,
  healing_per_tick = 1.6,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.titan_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 55,
  attack_damage_modifier = 60,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(55),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-piercing-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "bob-behemoth-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "b-b-g",
  tier = 7,
  healing_per_tick = 2.4,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.behemoth_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 60,
  attack_damage_modifier = 75,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(60),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-piercing-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-piercing-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/piercing-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "b-b-h",
  tier = 8,
  healing_per_tick = 4,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.leviathan_worm_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,

  no_acid_stream = true,
  attack_range = 65,
  attack_damage_modifier = 120,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(65),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-piercing-worm-turret", 1.4),
  },
})

--Electric
bobmods.enemies.new_worm({
  name = "bob-small-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "c-b-a",
  tier = 1,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.small_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 25,
  attack_damage = 6,
  attack_damage_modifier = 3,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-small",
  attack_spit_radius = 1.4,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-electric-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "bob-medium-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "c-b-b",
  tier = 2,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.medium_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 30,
  attack_damage = 6,
  attack_damage_modifier = 6,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-medium",
  attack_spit_radius = 1.6,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-electric-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "bob-big-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "c-b-c",
  tier = 3,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.big_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 35,
  attack_damage = 6,
  attack_damage_modifier = 9,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-big",
  attack_spit_radius = 1.8,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-electric-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "c-b-d",
  tier = 4,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.huge_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 40,
  attack_damage = 4,
  attack_damage_modifier = 22.5,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-huge",
  attack_spit_radius = 2,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-electric-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "c-b-e",
  tier = 5,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.giant_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 45,
  attack_damage = 3,
  attack_damage_modifier = 45,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-giant",
  attack_spit_radius = 2.2,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-electric-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "c-b-f",
  tier = 6,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.titan_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 50,
  attack_damage = 3,
  attack_damage_modifier = 67.5,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-titan",
  attack_spit_radius = 2.4,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-electric-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "bob-behemoth-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "c-b-g",
  tier = 7,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.behemoth_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 55,
  attack_damage = 2.7,
  attack_damage_modifier = 90,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-behemoth",
  attack_spit_radius = 2.6,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-electric-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-electric-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/electric-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "c-b-h",
  tier = 8,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.leviathan_worm_tint,
  tint2 = bobmods.enemies.electric_worm_tint,

  sticker_name = "enemy-electric-sticker",

  attack_range = 60,
  attack_damage = 1.8,
  attack_damage_modifier = 180,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-worm-leviathan",
  attack_spit_radius = 3,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-electric-worm-turret", 1.4),
  },
})

for _, turret_name in pairs({
  "bob-small-electric-worm-turret",
  "bob-medium-electric-worm-turret",
  "bob-big-electric-worm-turret",
  "bob-huge-electric-worm-turret",
  "bob-giant-electric-worm-turret",
  "bob-titan-electric-worm-turret",
  "bob-behemoth-electric-worm-turret",
  "bob-leviathan-electric-worm-turret",
}) do
  for _, animation_name in pairs({
    "ending_attack_animation",
    "folded_animation",
    "folding_animation",
    "prepared_alternative_animation",
    "prepared_animation",
    "preparing_animation",
    "starting_attack_animation",
  }) do
    data.raw.turret[turret_name][animation_name].layers[2].draw_as_glow = true
    data.raw.turret[turret_name][animation_name].layers[2].tint_as_overlay = true
    data.raw.turret[turret_name][animation_name].layers[2].blend_mode = "additive-soft"
  end
  data.raw.turret[turret_name].graphics_set = {
    base_visualisation = {
      animation = {
        filename = "__core__/graphics/light-medium.png",
        width = 300,
        height = 300,
        scale = 4 * data.raw.turret[turret_name].folded_animation.layers[1].scale,
        priority = "high",
        draw_as_light = true,
        tint = { 0.7, 0.7, 0.85 },
      },
    },
  }
end

--Acid
local acid_dying_action = function(inputs)
  return {
    type = "nested-result",
    action = {
      type = "cluster",
      cluster_count = inputs.dying_cluster_count,
      distance = inputs.dying_distance,
      distance_deviation = inputs.dying_distance_deviation,
      probability = inputs.dying_probability,
      action_delivery = {
        type = "stream",
        stream = inputs.dying_stream,
      },
    },
  }
end

local acid_reaction = function(inputs)
  return {
    {
      type = "create-entity",
      damage_type_filters = "fire",
      entity_name = "enemy-damaged-explosion",
      offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      offsets = { { 0, 0 } },
    },
    {
      type = "nested-result",
      damage_type_filters = { whitelist = true, types = "impact" },
      action = {
        {
          type = "area",
          radius = 3,
          trigger_target_mask = { "ground-unit" },
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = inputs.damage, type = "acid" },
              },
              {
                type = "create-fire",
                entity_name = inputs.fire_name,
                tile_collision_mask = { layers = { water_tile = true } },
              },
            },
          },
        },
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "play-sound",
                sound = {
                  category = "enemy",
                  variations = {
                    {
                      filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                      volume = 0.65,
                      modifiers = volume_multiplier("main-menu", 0.9),
                    },
                    {
                      filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                      volume = 0.65,
                      modifiers = volume_multiplier("main-menu", 0.9),
                    },
                    {
                      filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                      volume = 0.65,
                      modifiers = volume_multiplier("main-menu", 0.9),
                    },
                    {
                      filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                      volume = 0.65,
                      modifiers = volume_multiplier("main-menu", 0.9),
                    },
                  },
                  aggregation = { max_count = 3, remove = true, count_already_playing = true },
                },
              },
            },
          },
        },
      },
    },
  }
end

bobmods.enemies.new_worm({
  name = "bob-small-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "d-b-a",
  tier = 1,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.small_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-small",
    dying_cluster_count = 2,
    dying_distance = 4,
    dying_distance_deviation = 1,
    dying_probability = 0.1,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 4,
    fire_name = "acid-acid-splash-fire-small",
  }),

  sticker_name = "enemy-acid-sticker-small",

  attack_range = 25,
  attack_damage = 36,
  attack_stream_name = "acid-acid-stream-worm-small",
  attack_spit_radius = 1.65,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-small",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-acid-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "bob-medium-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "d-b-b",
  tier = 2,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.medium_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-medium",
    dying_cluster_count = 3,
    dying_distance = 5,
    dying_distance_deviation = 1.1,
    dying_probability = 0.2,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 8,
    fire_name = "acid-acid-splash-fire-medium",
  }),

  sticker_name = "enemy-acid-sticker-medium",

  attack_range = 30,
  attack_damage = 72,
  attack_stream_name = "acid-acid-stream-worm-medium",
  attack_spit_radius = 1.95,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-medium",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-acid-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "bob-big-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "d-b-c",
  tier = 3,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.big_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-big",
    dying_cluster_count = 4,
    dying_distance = 5.25,
    dying_distance_deviation = 1.2,
    dying_probability = 0.3,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 10,
    fire_name = "acid-acid-splash-fire-big",
  }),

  sticker_name = "enemy-acid-sticker-big",

  attack_range = 35,
  attack_damage = 96,
  attack_stream_name = "acid-acid-stream-worm-big",
  attack_spit_radius = 2.05,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-big",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-acid-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "d-b-d",
  tier = 4,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.huge_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-huge",
    dying_cluster_count = 5,
    dying_distance = 5.5,
    dying_distance_deviation = 1.3,
    dying_probability = 0.4,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 12,
    fire_name = "acid-acid-splash-fire-huge",
  }),

  sticker_name = "enemy-acid-sticker-huge",

  attack_range = 40,
  attack_damage = 120,
  attack_stream_name = "acid-acid-stream-worm-huge",
  attack_spit_radius = 2.25,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-huge",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-acid-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "d-b-e",
  tier = 5,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.giant_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-giant",
    dying_cluster_count = 6,
    dying_distance = 5.8,
    dying_distance_deviation = 1.4,
    dying_probability = 0.45,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 14,
    fire_name = "acid-acid-splash-fire-giant",
  }),

  sticker_name = "enemy-acid-sticker-giant",

  attack_range = 45,
  attack_damage = 144,
  attack_stream_name = "acid-acid-stream-worm-giant",
  attack_spit_radius = 2.45,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-giant",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-acid-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "d-b-f",
  tier = 6,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.titan_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-titan",
    dying_cluster_count = 7,
    dying_distance = 6.1,
    dying_distance_deviation = 1.5,
    dying_probability = 0.5,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 16,
    fire_name = "acid-acid-splash-fire-titan",
  }),

  sticker_name = "enemy-acid-sticker-titan",

  attack_range = 50,
  attack_damage = 168,
  attack_stream_name = "acid-acid-stream-worm-titan",
  attack_spit_radius = 2.65,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-titan",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-acid-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "bob-behemoth-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "d-b-g",
  tier = 7,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.behemoth_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-behemoth",
    dying_cluster_count = 8,
    dying_distance = 6.5,
    dying_distance_deviation = 1.6,
    dying_probability = 0.55,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 18,
    fire_name = "acid-acid-splash-fire-behemoth",
  }),

  sticker_name = "enemy-acid-sticker-behemoth",

  attack_range = 55,
  attack_damage = 216,
  attack_stream_name = "acid-acid-stream-worm-behemoth",
  attack_spit_radius = 2.85,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-behemoth",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-acid-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-acid-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/acid-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "d-b-h",
  tier = 8,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.leviathan_worm_tint,
  tint2 = bobmods.enemies.acid_worm_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-worm-leviathan",
    dying_cluster_count = 10,
    dying_distance = 7,
    dying_distance_deviation = 1.75,
    dying_probability = 0.6,
  }),
  damaged_trigger_effect = acid_reaction({
    damage = 25,
    fire_name = "acid-acid-splash-fire-leviathan",
  }),

  sticker_name = "enemy-acid-sticker-leviathan",

  attack_range = 60,
  attack_damage = 320,
  attack_stream_name = "acid-acid-stream-worm-leviathan",
  attack_spit_radius = 3.25,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-leviathan",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-acid-worm-turret", 1.4),
  },
})

--Explosive
local expl_attack = function(inputs)
  local second_inputs = inputs
  second_inputs.attack_damage_type = "explosion"
  second_inputs.attack_no_sound = true
  local expl_action = basic_stream_attack(second_inputs)
  expl_action[2].ignore_collision_condition = false
  table.insert(expl_action[1].action_delivery.target_effects, {
    entity_name = "big-explosion",
    type = "create-entity",
  })
  table.insert(expl_action[1].action_delivery.target_effects, {
    type = "create-entity",
    entity_name = "big-scorchmark",
    probability = 0.1,
    check_buildability = true,
  })
  local expl_action2 = {
    type = "area",
    radius = inputs.attack_spit_radius2,
    force = "enemy",
    ignore_collision_condition = true,
    trigger_target_mask = { "ground-unit", "ground-structure", "flying-robot" },
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = { amount = inputs.attack_damage2, type = "explosion" },
        },
      },
    },
  }
  local expl_action3 = {
    type = "direct",
    probability = inputs.secondary_probability,
    action_delivery = {
      type = "delayed",
      delayed_trigger = inputs.delayed_action_name,
    },
  }
  table.insert(expl_action, expl_action2)
  table.insert(expl_action, expl_action3)

  local delayed_action = {
    type = "delayed-active-trigger",
    name = inputs.delayed_action_name,
    delay = 900,
    action = {
      expl_action2,
      {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            entity_name = "big-explosion",
            type = "create-entity",
          },
        },
      },
      {
        type = "direct",
        probability = inputs.secondary_probability2,
        action_delivery = {
          {
            type = "delayed",
            delayed_trigger = inputs.delayed_action_name,
          },
          {
            type = "instant",
            target_effects = {
              type = "create-fire",
              entity_name = inputs.splash_fire_name,
              show_in_tooltip = false,
            },
          },
        },
      },
    },
  }
  data:extend({ delayed_action })
  return expl_action
end

bobmods.enemies.new_worm({
  name = "bob-small-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "e-b-a",
  tier = 1,
  max_health = 150,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.small_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 2,
    attack_damage = 4,
    attack_spit_radius2 = 3,
    attack_damage2 = 2,
    secondary_probability = 0.4,
    secondary_probability2 = 0.15,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-small",
  }),
  attack_range = 25,
  attack_damage_modifier = 8,
  attack_stream_name = "explosion-stream-worm-small",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-explosive-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "bob-medium-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "e-b-b",
  tier = 2,
  max_health = 375,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.medium_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 2.25,
    attack_damage = 4,
    attack_spit_radius2 = 3.25,
    attack_damage2 = 2,
    secondary_probability = 0.45,
    secondary_probability2 = 0.2,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-medium",
  }),
  attack_range = 30,
  attack_damage_modifier = 16,
  attack_stream_name = "explosion-stream-worm-medium",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-explosive-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "bob-big-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "e-b-c",
  tier = 3,
  max_health = 900,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.big_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 2.5,
    attack_damage = 4,
    attack_spit_radius2 = 3.5,
    attack_damage2 = 2,
    secondary_probability = 0.5,
    secondary_probability2 = 0.25,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-big",
  }),
  attack_range = 35,
  attack_damage_modifier = 28,
  attack_stream_name = "explosion-stream-worm-big",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-explosive-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "e-b-d",
  tier = 4,
  max_health = 1600,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.huge_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 2.75,
    attack_damage = 4,
    attack_spit_radius2 = 3.75,
    attack_damage2 = 2,
    secondary_probability = 0.55,
    secondary_probability2 = 0.3,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-huge",
  }),
  attack_range = 40,
  attack_damage_modifier = 42,
  attack_stream_name = "explosion-stream-worm-huge",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-explosive-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "e-b-e",
  tier = 5,
  max_health = 4000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.giant_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 3,
    attack_damage = 4,
    attack_spit_radius2 = 4,
    attack_damage2 = 2,
    secondary_probability = 0.6,
    secondary_probability2 = 0.35,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-giant",
  }),
  attack_range = 45,
  attack_damage_modifier = 58,
  attack_stream_name = "explosion-stream-worm-giant",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-explosive-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "e-b-f",
  tier = 6,
  max_health = 8000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.titan_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 3.25,
    attack_damage = 4,
    attack_spit_radius2 = 4.25,
    attack_damage2 = 2,
    secondary_probability = 0.65,
    secondary_probability2 = 0.4,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-titan",
  }),
  attack_range = 50,
  attack_damage_modifier = 76,
  attack_stream_name = "explosion-stream-worm-titan",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-explosive-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "bob-behemoth-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "e-b-g",
  tier = 7,
  max_health = 30000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.behemoth_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 3.5,
    attack_damage = 4,
    attack_spit_radius2 = 4.5,
    attack_damage2 = 2,
    secondary_probability = 0.7,
    secondary_probability2 = 0.45,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-behemoth",
  }),
  attack_range = 55,
  attack_damage_modifier = 96,
  attack_stream_name = "explosion-stream-worm-behemoth",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-explosive-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-explosive-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/explosive-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "e-b-h",
  tier = 8,
  max_health = 80000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.leviathan_worm_tint,
  tint2 = bobmods.enemies.explosive_worm_tint,

  attack_action = expl_attack({
    attack_spit_radius = 4,
    attack_damage = 4,
    attack_spit_radius2 = 5.5,
    attack_damage2 = 2,
    secondary_probability = 0.8,
    secondary_probability2 = 0.5,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-worm-leviathan",
  }),
  attack_range = 60,
  attack_damage_modifier = 120,
  attack_stream_name = "explosion-stream-worm-leviathan",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-explosive-worm-turret", 1.4),
  },
})

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw.turret["bob-huge-explosive-worm-turret"].max_health = 2800
  data.raw.turret["bob-giant-explosive-worm-turret"].max_health = 7200
  data.raw.turret["bob-titan-explosive-worm-turret"].max_health = 23000
  data.raw.turret["bob-behemoth-explosive-worm-turret"].max_health = 64000
  data.raw.turret["bob-leviathan-explosive-worm-turret"].max_health = 270000
end

--Poison
local poison_attack_action = function(radius, attack_smoke_name, defense_smoke_name, damage, healing)
  local attack_action = basic_stream_attack({
    attack_damage = 20,
    attack_damage_type = "poison",
    attack_spit_radius = radius,
    sticker_name = "enemy-poison-sticker",
    show_sticker_in_attack = true,
  })

  table.insert(attack_action[1].action_delivery.target_effects, {
    type = "create-smoke",
    entity_name = attack_smoke_name,
    initial_height = 0,
    show_in_tooltip = true,
  })

  attack_action[1].action_delivery.source_effects = {
    type = "create-smoke",
    entity_name = defense_smoke_name,
    initial_height = 0,
    show_in_tooltip = true,
  }

  local defense_smoke = {
    type = "smoke-with-trigger",
    name = defense_smoke_name,
    localised_name = { "entity-name.poison-cloud" },
    flags = { "not-on-map" },
    hidden = true,
    show_when_smoke_off = true,
    animation = {
      filename = "__bobenemies__/graphics/entity/invisible.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    affected_by_wind = false,
    cyclic = true,
    duration = 60,
    fade_away_duration = 20,
    spread_duration = 10,
    color = { r = 0.3, g = 1, b = 0.3, a = 1 },
    created_effect = {
      {
        type = "cluster",
        cluster_count = 3 * (radius ^ 2),
        distance = 1.5 * radius,
        distance_deviation = 1.5 * radius,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "bob-enemy-poison-smoke-visual-dummy",
            initial_height = 0,
          },
        },
      },
    },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              {
                type = "area",
                radius = 3 * radius,
                force = "enemy",
                trigger_target_mask = { "ground-structure", "ground-unit", "flying-robot" },
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    type = "damage",
                    damage = { amount = damage, type = "poison" },
                  },
                },
              },
              {
                type = "area",
                radius = 3 * radius,
                force = "ally",
                entity_flags = { "breaths-air" },
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    type = "damage",
                    damage = { amount = healing, type = "poison" },
                  },
                },
              },
            },
          },
        },
      },
    },
    action_cooldown = 30,
  }

  data:extend({ defense_smoke })

  return attack_action
end

bobmods.enemies.new_worm({
  name = "bob-small-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "f-b-a",
  tier = 1,
  healing_per_tick = 0.08,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.small_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-small" },

  attack_action = poison_attack_action(
    1.4,
    "enemy-poison-attack-smoke-small",
    "enemy-poison-defense-smoke-small",
    6,
    -2
  ),
  attack_range = 25,
  attack_damage_modifier = 0.6,
  attack_stream_name = "poison-stream-worm-small",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-poison-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "bob-medium-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "f-b-b",
  tier = 2,
  healing_per_tick = 0.08,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.medium_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-medium" },

  attack_action = poison_attack_action(
    1.6,
    "enemy-poison-attack-smoke-medium",
    "enemy-poison-defense-smoke-medium",
    12,
    -4
  ),
  attack_range = 30,
  attack_damage_modifier = 1.2,
  attack_stream_name = "poison-stream-worm-medium",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-poison-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "bob-big-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "f-b-c",
  tier = 3,
  healing_per_tick = 0.16,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.big_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-big" },

  attack_action = poison_attack_action(1.8, "enemy-poison-attack-smoke-big", "enemy-poison-defense-smoke-big", 18, -6),
  attack_range = 35,
  attack_damage_modifier = 2.4,
  attack_stream_name = "poison-stream-worm-big",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-poison-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "f-b-d",
  tier = 4,
  healing_per_tick = 0.32,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.huge_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-huge" },

  attack_action = poison_attack_action(2, "enemy-poison-attack-smoke-huge", "enemy-poison-defense-smoke-huge", 24, -8),
  attack_range = 40,
  attack_damage_modifier = 4,
  attack_stream_name = "poison-stream-worm-huge",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-poison-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "f-b-e",
  tier = 5,
  healing_per_tick = 0.8,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.giant_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-giant" },

  attack_action = poison_attack_action(
    2.2,
    "enemy-poison-attack-smoke-giant",
    "enemy-poison-defense-smoke-giant",
    30,
    -20
  ),
  attack_range = 45,
  attack_damage_modifier = 6,
  attack_stream_name = "poison-stream-worm-giant",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-poison-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "f-b-f",
  tier = 6,
  healing_per_tick = 1.6,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.titan_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-titan" },

  attack_action = poison_attack_action(
    2.4,
    "enemy-poison-attack-smoke-titan",
    "enemy-poison-defense-smoke-titan",
    36,
    -24
  ),
  attack_range = 50,
  attack_damage_modifier = 8,
  attack_stream_name = "poison-stream-worm-titan",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-poison-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "bob-behemoth-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "f-b-g",
  tier = 7,
  healing_per_tick = 2.4,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.behemoth_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-behemoth" },

  attack_action = poison_attack_action(
    2.6,
    "enemy-poison-attack-smoke-behemoth",
    "enemy-poison-defense-smoke-behemoth",
    42,
    -42
  ),
  attack_range = 55,
  attack_damage_modifier = 11,
  attack_stream_name = "poison-stream-worm-behemoth",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-poison-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-poison-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/poison-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "f-b-h",
  tier = 8,
  healing_per_tick = 4,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.leviathan_worm_tint,
  tint2 = bobmods.enemies.poison_worm_tint,
  localised_description = { "entity-description.bob-poison-enemy-worm-leviathan" },

  attack_action = poison_attack_action(
    3,
    "enemy-poison-attack-smoke-leviathan",
    "enemy-poison-defense-smoke-leviathan",
    60,
    -60
  ),
  attack_range = 60,
  attack_damage_modifier = 16,
  attack_stream_name = "poison-stream-worm-leviathan",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-poison-worm-turret", 1.4),
  },
})

--Fire
local fire_attack_action = function(inputs)
  local attack_action = basic_stream_attack({
    attack_spit_radius = inputs.attack_spit_radius,
    attack_damage = inputs.attack_damage,
    attack_damage_type = "fire",
    sticker_name = "bob-enemy-fire-sticker",
    show_sticker_in_attack = true,
  })

  table.insert(attack_action[1].action_delivery.target_effects, {
    type = "create-fire",
    entity_name = "bob-enemy-fire",
    tile_collision_mask = { layers = { water_tile = true } },
    show_in_tooltip = false,
  })

  table.insert(attack_action, {
    type = "cluster",
    cluster_count = inputs.cluster_count,
    distance = inputs.attack_spit_radius,
    distance_deviation = 0.5 * inputs.attack_spit_radius,
    action_delivery = {
      type = "instant",
      target_effects = {
        type = "create-fire",
        entity_name = "bob-enemy-fire",
        tile_collision_mask = { layers = { water_tile = true } },
        show_in_tooltip = true,
      },
    },
  })

  if inputs.cluster_count then
    table.insert(attack_action, {
      type = "cluster",
      cluster_count = 2 * inputs.cluster_count,
      distance = 1.5 * inputs.attack_spit_radius,
      distance_deviation = 0.75 * inputs.attack_spit_radius,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-fire",
          entity_name = "bob-enemy-fire-secondary",
          tile_collision_mask = { layers = { water_tile = true } },
          show_in_tooltip = false,
        },
      },
    })
  end

  table.insert(attack_action[2].action_delivery.target_effects, {
    type = "damage",
    damage = { amount = inputs.attack_damage, type = "acid" },
  })

  return attack_action
end

bobmods.enemies.new_worm({
  name = "bob-small-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/small-worm.png" },
  },
  order = "g-b-a",
  tier = 1,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.small_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.4,
    attack_damage = 6,
    cluster_count = 2,
  }),
  attack_range = 25,
  attack_damage_modifier = 1,
  attack_stream_name = "fire-stream-worm-small",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-fire-worm-turret", 2.3),
  },
})

bobmods.enemies.new_worm({
  name = "bob-medium-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/medium-worm.png" },
  },
  order = "g-b-b",
  tier = 2,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.medium_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.6,
    attack_damage = 6,
    cluster_count = 2,
  }),
  attack_range = 30,
  attack_damage_modifier = 2,
  attack_stream_name = "fire-stream-worm-medium",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-fire-worm-turret", 2),
  },
})

bobmods.enemies.new_worm({
  name = "bob-big-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/big-worm.png" },
  },
  order = "g-b-c",
  tier = 3,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.big_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.8,
    attack_damage = 6,
    cluster_count = 3,
  }),
  attack_range = 35,
  attack_damage_modifier = 3,
  attack_stream_name = "fire-stream-worm-big",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-fire-worm-turret", 1.7),
  },
})

bobmods.enemies.new_worm({
  name = "bob-huge-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/huge-worm.png" },
  },
  order = "g-b-d",
  tier = 4,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.huge_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 2,
    attack_damage = 6,
    cluster_count = 4,
  }),
  attack_range = 40,
  attack_damage_modifier = 4,
  attack_stream_name = "fire-stream-worm-huge",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-fire-worm-turret", 1.6),
  },
})

bobmods.enemies.new_worm({
  name = "bob-giant-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/giant-worm.png" },
  },
  order = "g-b-e",
  tier = 5,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.giant_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 2.2,
    attack_damage = 6,
    cluster_count = 5,
  }),
  attack_range = 45,
  attack_damage_modifier = 5,
  attack_stream_name = "fire-stream-worm-giant",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-fire-worm-turret", 1.55),
  },
})

bobmods.enemies.new_worm({
  name = "bob-titan-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/titan-worm.png" },
  },
  order = "g-b-f",
  tier = 6,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.titan_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 2.4,
    attack_damage = 6,
    cluster_count = 6,
  }),
  attack_range = 50,
  attack_damage_modifier = 6,
  attack_stream_name = "fire-stream-worm-titan",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-fire-worm-turret", 1.5),
  },
})

bobmods.enemies.new_worm({
  name = "bob-behemoth-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/behemoth-worm.png" },
  },
  order = "g-b-g",
  tier = 7,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.behemoth_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 2.6,
    attack_damage = 6,
    cluster_count = 8,
  }),
  attack_range = 55,
  attack_damage_modifier = 8,
  attack_stream_name = "fire-stream-worm-behemoth",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-fire-worm-turret", 1.45),
  },
})

bobmods.enemies.new_worm({
  name = "bob-leviathan-fire-worm-turret",
  icons = {
    { icon = "__bobenemies__/graphics/icons/fire-worm.png" },
    { icon = "__bobenemies__/graphics/icons/leviathan-worm.png" },
  },
  order = "g-b-h",
  tier = 8,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.leviathan_worm_tint,
  tint2 = bobmods.enemies.fire_worm_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-structure" },

  attack_action = fire_attack_action({
    attack_spit_radius = 3,
    attack_damage = 6,
    cluster_count = 10,
  }),
  attack_range = 60,
  attack_damage_modifier = 10,
  attack_stream_name = "fire-stream-worm-leviathan",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-fire-worm-turret", 1.4),
  },
})
