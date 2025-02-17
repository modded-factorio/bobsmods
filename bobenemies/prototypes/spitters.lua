data.raw.sticker["acid-sticker-medium"].target_movement_modifier_from = 0.55
data.raw.sticker["acid-sticker-big"].target_movement_modifier_from = 0.5
data.raw.sticker["acid-sticker-behemoth"].target_movement_modifier_from = 0.42
data.raw.sticker["acid-sticker-big"].vehicle_speed_modifier_from = 0.45
data.raw.sticker["acid-sticker-behemoth"].vehicle_friction_modifier_from = 1.8
data.raw.sticker["acid-sticker-behemoth"].duration_in_ticks = 150

--Basic
bobmods.enemies.new_spitter({
  name = "small-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-a",
  tier = 1,
  explosion_resist = "high",
  tint = bobmods.enemies.small_biter_tint1,
  tint2 = bobmods.enemies.small_biter_tint2,

  sticker_name = "acid-sticker-small",

  attack_range = 13,
  attack_damage_modifier = 12,
  attack_stream_name = "acid-stream-spitter-small",
  attack_spit_radius = 1,

  splash_fire_name = "acid-splash-fire-spitter-small",

  factoriopedia_simulation = {
    init = enemy_simulation("small-spitter", 3.6),
  },
})

bobmods.enemies.new_spitter({
  name = "medium-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-b",
  tier = 2,
  explosion_resist = "high",
  tint = bobmods.enemies.medium_spitter_tint1,
  tint2 = bobmods.enemies.medium_spitter_tint2,

  sticker_name = "acid-sticker-medium",

  attack_range = 14,
  attack_damage_modifier = 24,
  attack_stream_name = "acid-stream-spitter-medium",
  attack_spit_radius = 1.1,

  splash_fire_name = "acid-splash-fire-spitter-medium",
  fire_damage_per_tick = 0.2,

  factoriopedia_simulation = {
    init = enemy_simulation("medium-spitter", 2.6),
  },
})

bobmods.enemies.new_spitter({
  name = "big-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-c",
  tier = 3,
  explosion_resist = "high",
  tint = bobmods.enemies.big_spitter_tint1,
  tint2 = bobmods.enemies.big_spitter_tint2,

  sticker_name = "acid-sticker-big",

  attack_range = 15,
  attack_damage_modifier = 40,
  attack_stream_name = "acid-stream-spitter-big",
  attack_spit_radius = 1.2,

  splash_fire_name = "acid-splash-fire-spitter-big",
  fire_damage_per_tick = 0.4,

  factoriopedia_simulation = {
    init = enemy_simulation("big-spitter", 1.8),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-huge-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-d",
  tier = 4,
  explosion_resist = "high",
  tint = bobmods.enemies.huge_spitter_tint1,
  tint2 = bobmods.enemies.huge_spitter_tint2,

  sticker_name = "acid-sticker-huge",
  sticker_slow_player_movement_from = 0.48,
  sticker_slow_vehicle_speed_from = 0.4,
  sticker_slow_vehicle_friction_from = 1.5,

  attack_range = 16,
  attack_damage_modifier = 64,
  attack_stream_name = "acid-stream-spitter-huge",
  attack_spit_radius = 1.35,

  splash_fire_name = "acid-splash-fire-spitter-huge",
  fire_damage_per_tick = 0.6,
  fire_scale = 1.05,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-spitter", 1.5),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-giant-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-e",
  tier = 5,
  explosion_resist = "high",
  tint = bobmods.enemies.giant_spitter_tint1,
  tint2 = bobmods.enemies.giant_spitter_tint2,

  sticker_name = "acid-sticker-giant",
  sticker_slow_player_movement_from = 0.46,
  sticker_slow_vehicle_speed_from = 0.35,
  sticker_slow_vehicle_friction_from = 1.6,

  attack_range = 17,
  attack_damage_modifier = 90,
  attack_stream_name = "acid-stream-spitter-giant",
  attack_spit_radius = 1.5,

  splash_fire_name = "acid-splash-fire-spitter-giant",
  fire_damage_per_tick = 0.8,
  fire_scale = 1.10,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-spitter", 1.3),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-titan-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-f",
  tier = 6,
  explosion_resist = "high",
  tint = bobmods.enemies.titan_spitter_tint1,
  tint2 = bobmods.enemies.titan_spitter_tint2,

  sticker_name = "acid-sticker-titan",
  sticker_duration_in_ticks = 135,
  sticker_slow_player_movement_from = 0.44,
  sticker_slow_vehicle_speed_from = 0.325,
  sticker_slow_vehicle_friction_from = 1.7,

  attack_range = 18,
  attack_damage_modifier = 108,
  attack_stream_name = "acid-stream-spitter-titan",
  attack_spit_radius = 1.75,

  splash_fire_name = "acid-splash-fire-spitter-titan",
  fire_damage_per_tick = 1,
  fire_scale = 1.15,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-spitter", 1.15),
  },
})

bobmods.enemies.new_spitter({
  name = "behemoth-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-g",
  tier = 7,
  explosion_resist = "high",
  tint = bobmods.enemies.behemoth_spitter_tint1,
  tint2 = bobmods.enemies.behemoth_spitter_tint2,

  sticker_name = "acid-sticker-behemoth",

  attack_range = 19,
  attack_damage_modifier = 126,
  attack_stream_name = "acid-stream-spitter-behemoth",
  attack_spit_radius = 2,

  splash_fire_name = "acid-splash-fire-spitter-behemoth",
  fire_damage_per_tick = 1.2,
  fire_scale = 1.2,

  factoriopedia_simulation = {
    init = enemy_simulation("behemoth-spitter", 1),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-leviathan-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-spitter.png" },
  },
  order = "a-d-h",
  tier = 8,
  explosion_resist = "high",
  tint = bobmods.enemies.leviathan_spitter_tint1,
  tint2 = bobmods.enemies.leviathan_spitter_tint2,

  sticker_name = "acid-sticker-leviathan",
  sticker_duration_in_ticks = 180,
  sticker_slow_player_movement_from = 0.4,
  sticker_slow_vehicle_speed_from = 0.25,
  sticker_slow_vehicle_friction_from = 2,

  attack_range = 20,
  attack_damage_modifier = 180,
  attack_stream_name = "acid-stream-spitter-leviathan",
  attack_spit_radius = 2.5,

  splash_fire_name = "acid-splash-fire-spitter-leviathan",
  fire_damage_per_tick = 1.5,
  fire_scale = 1.3,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-spitter", 0.9),
  },
})

--Piercing
local piercing_reaction = {
  {
    type = "create-entity",
    damage_type_filters = "fire",
    entity_name = "enemy-damaged-explosion",
    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    offsets = { { 0, 0 } },
  },
  {
    type = "create-sticker",
    damage_type_filters = { "electric", "acid" },
    sticker = "bob-piercing-rage-sticker",
  },
}
local piercing_shot = function(attack_range)
  return {
    action = {
      type = "direct",
      action_delivery = {
        type = "projectile",
        starting_speed = 2,
        max_range = 2 + attack_range,
        projectile = "bob-piercing-spine",
      },
    },
  }
end

bobmods.enemies.new_spitter({
  name = "bob-small-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-a",
  tier = 1,
  healing_per_tick = 0.04,
  movement_speed = 0.215,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.small_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 13,
  attack_damage_modifier = 10,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(13),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-piercing-spitter", 3.6),
  },
})

data.raw.unit["bob-small-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-small-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-small-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-small-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-medium-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-b",
  tier = 2,
  healing_per_tick = 0.04,
  movement_speed = 0.19,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.medium_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 14,
  attack_damage_modifier = 18,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(14),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-piercing-spitter", 2.6),
  },
})

data.raw.unit["bob-medium-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-medium-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-medium-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-medium-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-big-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-c",
  tier = 3,
  healing_per_tick = 0.08,
  movement_speed = 0.21,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.big_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 15,
  attack_damage_modifier = 36,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(15),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-piercing-spitter", 1.8),
  },
})

data.raw.unit["bob-big-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-big-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-big-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-big-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-huge-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-d",
  tier = 4,
  healing_per_tick = 0.16,
  movement_speed = 0.215,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.huge_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 16,
  attack_damage_modifier = 50,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(16),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-piercing-spitter", 1.5),
  },
})

data.raw.unit["bob-huge-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-huge-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-huge-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-huge-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-giant-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-e",
  tier = 5,
  healing_per_tick = 0.4,
  movement_speed = 0.22,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.giant_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 17,
  attack_damage_modifier = 66,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(17),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-piercing-spitter", 1.3),
  },
})

data.raw.unit["bob-giant-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-giant-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-giant-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-giant-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-titan-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-f",
  tier = 6,
  healing_per_tick = 0.8,
  movement_speed = 0.23,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.titan_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 18,
  attack_damage_modifier = 90,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(18),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-piercing-spitter", 1.15),
  },
})

data.raw.unit["bob-titan-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-titan-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-titan-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-titan-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-behemoth-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-g",
  tier = 7,
  healing_per_tick = 1.2,
  movement_speed = 0.24,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 19,
  attack_damage_modifier = 110,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(19),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-piercing-spitter", 1),
  },
})

data.raw.unit["bob-behemoth-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-behemoth-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-behemoth-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-behemoth-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

bobmods.enemies.new_spitter({
  name = "bob-leviathan-piercing-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-spitter.png" },
  },
  order = "b-d-h",
  tier = 8,
  healing_per_tick = 2,
  movement_speed = 0.25,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  acid_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  damaged_trigger_effect = piercing_reaction,

  no_acid_stream = true,
  attack_warmup = 15,
  attack_cooldown = 50,
  attack_range = 20,
  attack_damage_modifier = 180,
  attack_lead_target_for_projectile_speed = 0,
  attack_ammo_type = piercing_shot(20),

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-piercing-spitter", 0.9),
  },
})

data.raw.unit["bob-leviathan-piercing-spitter"].attack_parameters.animation.layers[1].animation_speed = 0.8
data.raw.unit["bob-leviathan-piercing-spitter"].attack_parameters.animation.layers[2].animation_speed = 0.8
data.raw.unit["bob-leviathan-piercing-spitter"].attack_parameters.animation.layers[3].animation_speed = 0.8
data.raw.unit["bob-leviathan-piercing-spitter"].attack_parameters.animation.layers[4].animation_speed = 0.8

--Electric
local electric_reaction = {
  {
    type = "create-entity",
    damage_type_filters = "fire",
    entity_name = "enemy-damaged-explosion",
    offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    offsets = { { 0, 0 } },
  },
  {
    type = "create-sticker",
    damage_type_filters = { whitelist = true, types = "electric" },
    sticker = "bob-electric-rage-sticker",
  },
}

bobmods.enemies.new_spitter({
  name = "bob-small-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-a",
  tier = 1,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.small_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",
  sticker_duration_in_ticks = 60,
  sticker_slow_player_movement_from = 0.1,
  sticker_slow_player_movement_to = 0.1,
  sticker_slow_vehicle_speed_from = 0.1,
  sticker_slow_vehicle_speed_to = 0.1,
  sticker_slow_vehicle_friction_from = 10,
  sticker_slow_vehicle_friction_to = 10,
  sticker_animation = {
    layers = {
      {
        filename = "__base__/graphics/entity/beam/tileable-beam-END.png",
        line_length = 4,
        width = 91,
        height = 93,
        frame_count = 16,
        blend_mode = "additive",
        animation_speed = 1,
        scale = 0.4,
      },
    },
  },

  attack_range = 13,
  attack_damage = 6,
  attack_damage_modifier = 2,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-small",
  attack_spit_radius = 1,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  splash_localised_name = { "entity-name.bob-enemy-electric-fire" },
  fire_scale = 1.5,
  fire_initial_lifetime = 900,
  fire_maximum_lifetime = 900,
  fire_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },
  fire_damage_type = "electric",
  fire_damage_per_tick = 1.5,
  fire_maximum_damage_multiplier = 20,
  fire_force_target = "all",
  fire_trigger_target_mask = { "not-electric-unit" },
  fire_light = {
    color = { 0.85, 0.85, 1 },
    flicker_interval = 12,
    flicker_max_modifier = 1.05,
    flicker_min_modifier = 0.95,
    intensity = 0.4,
    size = 15,
  },
  fire_light_size_modifier_maximum = 3,
  fire_light_size_modifier_per_flame = 0.1,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-electric-spitter", 3.6),
  },
})

table.insert(data.raw.fire["bob-enemy-electric-fire"].on_damage_tick_effect, {
  type = "direct",
  force = "all",
  filter_enabled = true,
  trigger_target_mask = { "electric-unit" },
  action_delivery = {
    type = "instant",
    target_effects = {
      {
        type = "create-sticker",
        sticker = "bob-electric-rage-sticker",
        show_in_tooltip = false,
      },
    },
  },
})

bobmods.enemies.new_spitter({
  name = "bob-medium-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-b",
  tier = 2,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.medium_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 14,
  attack_damage = 6,
  attack_damage_modifier = 4,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-medium",
  attack_spit_radius = 1.1,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-electric-spitter", 2.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-big-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-c",
  tier = 3,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.big_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 15,
  attack_damage = 6,
  attack_damage_modifier = 6,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-big",
  attack_spit_radius = 1.2,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-electric-spitter", 1.8),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-huge-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-d",
  tier = 4,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.huge_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 16,
  attack_damage = 4,
  attack_damage_modifier = 12,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-huge",
  attack_spit_radius = 1.35,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-electric-spitter", 1.5),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-giant-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-e",
  tier = 5,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.giant_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 17,
  attack_damage = 3,
  attack_damage_modifier = 20,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-giant",
  attack_spit_radius = 1.5,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-electric-spitter", 1.3),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-titan-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-f",
  tier = 6,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.titan_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 18,
  attack_damage = 3,
  attack_damage_modifier = 35,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-titan",
  attack_spit_radius = 1.75,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-electric-spitter", 1.15),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-behemoth-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-g",
  tier = 7,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 19,
  attack_damage = 2.7,
  attack_damage_modifier = 50,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-behemoth",
  attack_spit_radius = 2,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-electric-spitter", 1),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-leviathan-electric-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-spitter.png" },
  },
  order = "c-d-h",
  tier = 8,
  laser_resist = "high",
  fire_resist = "low",
  poison_resist = "low",
  electric_resist = "high",
  acid_resist = "low",
  tint = bobmods.enemies.electric_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  damaged_trigger_effect = electric_reaction,
  trigger_target_mask = { "common", "ground-unit", "electric-unit", "not-fire-unit" },

  sticker_name = "enemy-electric-sticker",

  attack_range = 20,
  attack_damage = 1.8,
  attack_damage_modifier = 90,
  attack_damage_type = "electric",
  attack_stream_name = "electric-stream-spitter-leviathan",
  attack_spit_radius = 2.5,
  attack_tint = { r = 1.0, g = 0.6, b = 0.2, a = 0.9 },

  splash_fire_name = "bob-enemy-electric-fire",
  skip_generate_fire = true,

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-electric-spitter", 0.9),
  },
})

data.raw.unit["bob-small-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 8,
}
data.raw.unit["bob-medium-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 12,
}
data.raw.unit["bob-big-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 16,
}
data.raw.unit["bob-huge-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 20,
}
data.raw.unit["bob-giant-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 24,
}
data.raw.unit["bob-titan-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.6,
  size = 28,
}
data.raw.unit["bob-behemoth-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.7,
  size = 32,
}
data.raw.unit["bob-leviathan-electric-spitter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.8,
  size = 40,
}
data.raw.unit["bob-small-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-medium-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-big-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-huge-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-giant-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-titan-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-behemoth-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-leviathan-electric-spitter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-small-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-medium-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-big-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-huge-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-giant-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-titan-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-behemoth-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-leviathan-electric-spitter"].attack_parameters.animation.layers[2].draw_as_glow = true

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

bobmods.enemies.new_spitter({
  name = "bob-small-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-a",
  tier = 1,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.small_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-small",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 3 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 13,
  attack_damage = 12,
  attack_stream_name = "acid-acid-stream-spitter-small",
  attack_spit_radius = 1.25,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-small",
  fire_damage_per_tick = 1.5,
  fire_structure_damage_per_tick = 0.3,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-acid-spitter", 3.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-medium-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-b",
  tier = 2,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.medium_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-medium",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 6 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 14,
  attack_damage = 24,
  attack_stream_name = "acid-acid-stream-spitter-medium",
  attack_spit_radius = 1.35,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-medium",
  fire_damage_per_tick = 5.5,
  fire_structure_damage_per_tick = 1.1,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-acid-spitter", 2.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-big-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-c",
  tier = 3,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.big_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-big",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 12 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 15,
  attack_damage = 40,
  attack_stream_name = "acid-acid-stream-spitter-big",
  attack_spit_radius = 1.45,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-big",
  fire_damage_per_tick = 16,
  fire_structure_damage_per_tick = 3.2,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-acid-spitter", 1.8),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-huge-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-d",
  tier = 4,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.huge_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-huge",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 16 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 16,
  attack_damage = 64,
  attack_stream_name = "acid-acid-stream-spitter-huge",
  attack_spit_radius = 1.6,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-huge",
  fire_damage_per_tick = 32,
  fire_structure_damage_per_tick = 6.4,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_scale = 1.05,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-acid-spitter", 1.5),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-giant-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-e",
  tier = 5,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.giant_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-giant",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 20 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 17,
  attack_damage = 90,
  attack_stream_name = "acid-acid-stream-spitter-giant",
  attack_spit_radius = 1.75,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-giant",
  fire_damage_per_tick = 52,
  fire_structure_damage_per_tick = 11.5,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_scale = 1.10,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-acid-spitter", 1.3),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-titan-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-f",
  tier = 6,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.titan_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-titan",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 24 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 18,
  attack_damage = 108,
  attack_stream_name = "acid-acid-stream-spitter-titan",
  attack_spit_radius = 2,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-titan",
  fire_damage_per_tick = 76,
  fire_structure_damage_per_tick = 18.5,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_scale = 1.15,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-acid-spitter", 1.15),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-behemoth-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-g",
  tier = 7,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-behemoth",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 28 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 19,
  attack_damage = 126,
  attack_stream_name = "acid-acid-stream-spitter-behemoth",
  attack_spit_radius = 2.25,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-behemoth",
  fire_damage_per_tick = 104,
  fire_structure_damage_per_tick = 27,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_scale = 1.2,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-acid-spitter", 1),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-leviathan-acid-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-spitter.png" },
  },
  order = "d-d-h",
  tier = 8,
  poison_resist = "high",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.acid_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  dying_trigger_effect = acid_dying_action({
    dying_stream = "acid-acid-stream-spitter-leviathan",
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
  sticker_duration_in_ticks = 300,
  sticker_damage_interval = 15,
  sticker_damage_per_tick = { type = "acid", amount = 36 },
  sticker_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  attack_range = 20,
  attack_damage = 180,
  attack_stream_name = "acid-acid-stream-spitter-leviathan",
  attack_spit_radius = 2.75,
  attack_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  splash_fire_name = "acid-acid-splash-fire-leviathan",
  fire_damage_per_tick = 190,
  fire_structure_damage_per_tick = 57,
  fire_initial_lifetime = 3600,
  fire_maximum_lifetime = 7200,
  fire_scale = 1.3,
  fire_tint = { r = 1, g = 0.5, b = 1.0, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-acid-spitter", 0.9),
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

local expl_dying_action = function(inputs)
  return {
    type = "nested-result",
    action = {
      type = "direct",
      probability = dying_probability,
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            entity_name = "big-explosion",
            type = "create-entity",
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = inputs.dying_radius,
              force = "enemy",
              ignore_collision_condition = true,
              trigger_target_mask = { "ground-unit", "ground-structure", "flying-robot" },
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = { amount = inputs.attack_damage, type = "explosion" },
                  },
                },
              },
            },
          },
        },
      },
    },
  }
end

bobmods.enemies.new_spitter({
  name = "bob-small-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-a",
  tier = 1,
  max_health = 7,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.small_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 12,
    dying_radius = 2.5,
    dying_probability = 1,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 1.5,
    attack_damage = 4,
    attack_spit_radius2 = 2.5,
    attack_damage2 = 2,
    secondary_probability = 0.1,
    secondary_probability2 = 0.1,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-small",
  }),
  attack_range = 13,
  attack_damage_modifier = 5,
  attack_stream_name = "explosion-stream-spitter-small",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 0.9 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-explosive-spitter", 3.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-medium-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-b",
  tier = 2,
  max_health = 35,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.medium_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 24,
    dying_radius = 2.75,
    dying_probability = 0.22,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 1.75,
    attack_damage = 4,
    attack_spit_radius2 = 2.75,
    attack_damage2 = 2,
    secondary_probability = 0.15,
    secondary_probability2 = 0.12,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-medium",
  }),
  attack_range = 14,
  attack_damage_modifier = 10,
  attack_stream_name = "explosion-stream-spitter-medium",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-explosive-spitter", 2.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-big-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-c",
  tier = 3,
  max_health = 100,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.big_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 36,
    dying_radius = 3,
    dying_probability = 0.24,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 2,
    attack_damage = 4,
    attack_spit_radius2 = 3,
    attack_damage2 = 2,
    secondary_probability = 0.2,
    secondary_probability2 = 0.14,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-big",
  }),
  attack_range = 15,
  attack_damage_modifier = 15,
  attack_stream_name = "explosion-stream-spitter-big",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-explosive-spitter", 1.8),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-huge-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-d",
  tier = 4,
  max_health = 350,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.huge_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 48,
    dying_radius = 3.25,
    dying_probability = 0.26,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 2.15,
    attack_damage = 4,
    attack_spit_radius2 = 3.25,
    attack_damage2 = 2,
    secondary_probability = 0.25,
    secondary_probability2 = 0.15,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-big",
  }),
  attack_range = 16,
  attack_damage_modifier = 20,
  attack_stream_name = "explosion-stream-spitter-huge",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-explosive-spitter", 1.5),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-giant-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-e",
  tier = 5,
  max_health = 1200,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.giant_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 60,
    dying_radius = 3.5,
    dying_probability = 0.29,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 2.3,
    attack_damage = 4,
    attack_spit_radius2 = 3.5,
    attack_damage2 = 2,
    secondary_probability = 0.3,
    secondary_probability2 = 0.16,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-huge",
  }),
  attack_range = 17,
  attack_damage_modifier = 25,
  attack_stream_name = "explosion-stream-spitter-giant",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-explosive-spitter", 1.3),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-titan-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-f",
  tier = 6,
  max_health = 4500,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.titan_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 72,
    dying_radius = 3.75,
    dying_probability = 0.32,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 2.45,
    attack_damage = 4,
    attack_spit_radius2 = 3.75,
    attack_damage2 = 2,
    secondary_probability = 0.35,
    secondary_probability2 = 0.17,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-titan",
  }),
  attack_range = 18,
  attack_damage_modifier = 30,
  attack_stream_name = "explosion-stream-spitter-titan",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-explosive-spitter", 1.15),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-behemoth-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-g",
  tier = 7,
  max_health = 12000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 84,
    dying_radius = 4,
    dying_probability = 0.35,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 2.6,
    attack_damage = 4,
    attack_spit_radius2 = 4,
    attack_damage2 = 2,
    secondary_probability = 0.4,
    secondary_probability2 = 0.18,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-behemoth",
  }),
  attack_range = 19,
  attack_damage_modifier = 35,
  attack_stream_name = "explosion-stream-spitter-behemoth",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-explosive-spitter", 1),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-leviathan-explosive-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-spitter.png" },
  },
  order = "e-d-h",
  tier = 8,
  max_health = 45000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 120,
    dying_radius = 4.5,
    dying_probability = 0.4,
  }),

  attack_action = expl_attack({
    attack_spit_radius = 2.75,
    attack_damage = 4,
    attack_spit_radius2 = 4.5,
    attack_damage2 = 2,
    secondary_probability = 0.5,
    secondary_probability2 = 0.2,
    splash_fire_name = "bob-explosive-fire-blank",
    skip_generate_fire = true,
    splash_fire_do_not_show_in_tooltip = true,
    delayed_action_name = "alien-waiting-explosion-leviathan",
  }),
  attack_range = 20,
  attack_damage_modifier = 50,
  attack_stream_name = "explosion-stream-spitter-leviathan",
  attack_tint = { r = 1.0, g = 1.0, b = 0.2, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-explosive-spitter", 1),
  },
})

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw.unit["bob-huge-explosive-spitter"].max_health = 1300
  data.raw.unit["bob-giant-explosive-spitter"].max_health = 4500
  data.raw.unit["bob-titan-explosive-spitter"].max_health = 13000
  data.raw.unit["bob-behemoth-explosive-spitter"].max_health = 45000
  data.raw.unit["bob-leviathan-explosive-spitter"].max_health = 200000
end

--Poison
local poison_reaction = function(sticker_name)
  return {
    {
      type = "create-entity",
      damage_type_filters = "fire",
      entity_name = "enemy-damaged-explosion",
      offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
      offsets = { { 0, 0 } },
    },
    {
      type = "create-sticker",
      sticker = sticker_name,
    },
  }
end

local poison_attack_action = function(radius, smoke_name, damage, healing)
  local attack_action = basic_stream_attack({
    attack_damage = 6,
    attack_damage_type = "poison",
    attack_spit_radius = radius,
    sticker_name = "enemy-poison-sticker",
    show_sticker_in_attack = true,
  })

  table.insert(attack_action[1].action_delivery.target_effects, {
    type = "create-smoke",
    entity_name = smoke_name,
    initial_height = 0,
    show_in_tooltip = true,
  })

  local attack_smoke = {
    type = "smoke-with-trigger",
    name = smoke_name,
    localised_name = { "entity-name.poison-cloud" },
    flags = { "not-on-map" },
    hidden = true,
    show_when_smoke_off = true,
    animation = {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      shift = { -0.53125, -0.4375 },
      priority = "high",
      animation_speed = 0.25,
      filename = "__base__/graphics/entity/smoke/smoke.png",
      flags = { "smoke" },
    },
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 5,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.3, g = 1, b = 0.3, a = 1 },
    created_effect = {
      {
        type = "cluster",
        cluster_count = 3,
        distance = 2 * radius,
        distance_deviation = 1,
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
                radius = 2 * radius,
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
                radius = 2 * radius,
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

  data:extend({ attack_smoke })

  return attack_action
end

bobmods.enemies.new_spitter({
  name = "bob-small-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-a",
  tier = 1,
  healing_per_tick = 0.04,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.small_tint,
  localised_description = { "entity-description.bob-poison-enemy-small" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-small"),

  attack_action = poison_attack_action(1, "enemy-poison-attack-smoke-small", 6, -2),
  attack_range = 13,
  attack_damage_modifier = 0.6,
  attack_stream_name = "poison-stream-spitter-small",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-poison-spitter", 3.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-medium-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-b",
  tier = 2,
  healing_per_tick = 0.04,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.medium_tint,
  localised_description = { "entity-description.bob-poison-enemy-medium" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-medium"),

  attack_action = poison_attack_action(1.1, "enemy-poison-attack-smoke-medium", 12, -4),
  attack_range = 14,
  attack_damage_modifier = 1.2,
  attack_stream_name = "poison-stream-spitter-medium",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-poison-spitter", 2.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-big-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-c",
  tier = 3,
  healing_per_tick = 0.08,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.big_tint,
  localised_description = { "entity-description.bob-poison-enemy-big" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-big"),

  attack_action = poison_attack_action(1.15, "enemy-poison-attack-smoke-big", 18, -6),
  attack_range = 15,
  attack_damage_modifier = 2.4,
  attack_stream_name = "poison-stream-spitter-big",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-poison-spitter", 1.8),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-huge-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-d",
  tier = 4,
  healing_per_tick = 0.16,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.huge_tint,
  localised_description = { "entity-description.bob-poison-enemy-huge" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-huge"),

  attack_action = poison_attack_action(1.2, "enemy-poison-attack-smoke-huge", 24, -8),
  attack_range = 16,
  attack_damage_modifier = 4,
  attack_stream_name = "poison-stream-spitter-huge",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-poison-spitter", 1.5),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-giant-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-e",
  tier = 5,
  healing_per_tick = 0.4,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.giant_tint,
  localised_description = { "entity-description.bob-poison-enemy-giant" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-giant"),

  attack_action = poison_attack_action(1.35, "enemy-poison-attack-smoke-giant", 30, -20),
  attack_range = 17,
  attack_damage_modifier = 6,
  attack_stream_name = "poison-stream-spitter-giant",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-poison-spitter", 1.3),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-titan-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-f",
  tier = 6,
  healing_per_tick = 0.8,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.titan_tint,
  localised_description = { "entity-description.bob-poison-enemy-titan" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-titan"),

  attack_action = poison_attack_action(1.5, "enemy-poison-attack-smoke-titan", 36, -24),
  attack_range = 18,
  attack_damage_modifier = 8,
  attack_stream_name = "poison-stream-spitter-titan",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-poison-spitter", 1.15),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-behemoth-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-g",
  tier = 7,
  healing_per_tick = 1.2,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  localised_description = { "entity-description.bob-poison-enemy-behemoth" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-behemoth"),

  attack_action = poison_attack_action(1.65, "enemy-poison-attack-smoke-behemoth", 42, -42),
  attack_range = 19,
  attack_damage_modifier = 11,
  attack_stream_name = "poison-stream-spitter-behemoth",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-poison-spitter", 1),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-leviathan-poison-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-spitter.png" },
  },
  order = "f-d-h",
  tier = 8,
  healing_per_tick = 2,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  localised_description = { "entity-description.bob-poison-enemy-leviathan" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-leviathan"),

  attack_action = poison_attack_action(1.75, "enemy-poison-attack-smoke-leviathan", 60, -60),
  attack_range = 20,
  attack_damage_modifier = 16,
  attack_stream_name = "poison-stream-spitter-leviathan",
  attack_tint = { r = 0.3, g = 1, b = 0.3, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-poison-spitter", 0.9),
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
    show_in_tooltip = true,
  })

  if inputs.cluster_count then
    table.insert(attack_action, {
      type = "cluster",
      cluster_count = inputs.cluster_count,
      distance = 0.75 * inputs.attack_spit_radius,
      distance_deviation = 0.25 * inputs.attack_spit_radius,
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-fire",
          entity_name = "bob-enemy-fire",
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

bobmods.enemies.new_spitter({
  name = "bob-small-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-a",
  tier = 1,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.small_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1,
    attack_damage = 8,
  }),
  attack_range = 13,
  attack_damage_modifier = 0.5,
  attack_stream_name = "fire-stream-spitter-small",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-fire-spitter", 3.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-medium-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-b",
  tier = 2,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.medium_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.1,
    attack_damage = 8,
  }),
  attack_range = 14,
  attack_damage_modifier = 1,
  attack_stream_name = "fire-stream-spitter-medium",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-fire-spitter", 2.6),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-big-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-c",
  tier = 3,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.big_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.2,
    attack_damage = 8,
    cluster_count = 2,
  }),
  attack_range = 15,
  attack_damage_modifier = 2,
  attack_stream_name = "fire-stream-spitter-big",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-fire-spitter", 1.8),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-huge-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-d",
  tier = 4,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.huge_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.35,
    attack_damage = 8,
    cluster_count = 2,
  }),
  attack_range = 16,
  attack_damage_modifier = 3,
  attack_stream_name = "fire-stream-spitter-huge",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-fire-spitter", 1.5),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-giant-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-e",
  tier = 5,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.giant_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  attack_action = fire_attack_action({
    attack_spit_radius = 1.5,
    attack_damage = 8,
    cluster_count = 3,
  }),
  attack_range = 17,
  attack_damage_modifier = 4,
  attack_stream_name = "fire-stream-spitter-giant",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-fire-spitter", 1.3),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-titan-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-f",
  tier = 6,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.titan_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  sticker_name = "bob-enemy-fire-sticker",
  attack_action = fire_attack_action({
    attack_spit_radius = 1.75,
    attack_damage = 8,
    cluster_count = 3,
  }),
  attack_range = 18,
  attack_damage_modifier = 5,
  attack_stream_name = "fire-stream-spitter-titan",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-fire-spitter", 1.15),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-behemoth-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-g",
  tier = 7,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  attack_action = fire_attack_action({
    attack_spit_radius = 2,
    attack_damage = 8,
    cluster_count = 4,
  }),
  attack_range = 19,
  attack_damage_modifier = 6,
  attack_stream_name = "fire-stream-spitter-behemoth",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-fire-spitter", 1),
  },
})

bobmods.enemies.new_spitter({
  name = "bob-leviathan-fire-spitter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-spitter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-spitter.png" },
  },
  order = "g-d-h",
  tier = 8,
  physical_resist = "low",
  pierce_resist = "low",
  explosion_resist = "high",
  laser_resist = "high",
  fire_resist = "very-high",
  impact_resist = "low",
  tint = bobmods.enemies.fire_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  flags = {
    "placeable-player",
    "placeable-enemy",
    "placeable-off-grid",
    "breaths-air",
    "not-repairable",
    "not-flammable",
  },
  trigger_target_mask = { "common", "ground-unit", "not-electric-unit" },

  sticker_name = "bob-enemy-fire-sticker",
  attack_action = fire_attack_action({
    attack_spit_radius = 2.5,
    attack_damage = 8,
    cluster_count = 5,
  }),
  attack_range = 20,
  attack_damage_modifier = 8,
  attack_stream_name = "fire-stream-spitter-leviathan",
  attack_tint = { r = 1, g = 0.1, b = 0.1, a = 1 },

  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-fire-spitter", 0.9),
  },
})
