local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

if data.raw.unit["behemoth-spitter"]~=nil then
  data.raw.unit["behemoth-spitter"].attack_parameters = spitter_attack_parameters({acid_stream_name = "acid-stream-spitter-behemoth", range=range_spitter_behemoth, min_attack_distance=10, cooldown=100, damage_modifier=damage_modifier_spitter_behemoth, scale=bobmods.enemies.behemoth_scale, tint1=tint_1_spitter_behemoth, tint2=tint_2_spitter_behemoth, roarvolume=0.8})
  data.raw.unit["behemoth-spitter"].run_animation = spitterrunanimation(bobmods.enemies.behemoth_scale, tint_1_spitter_behemoth, tint_2_spitter_behemoth)
  data.raw.unit["behemoth-spitter"].collision_box = {{-1, -1}, {1, 1}}
  data.raw.unit["behemoth-spitter"].selection_box = {{-1.5, -2}, {1.5, 2}}

  data.raw.corpse["behemoth-spitter-corpse"].animation = spitterdyinganimation(bobmods.enemies.behemoth_scale, tint_1_spitter_behemoth, tint_2_spitter_behemoth)
  data.raw.corpse["behemoth-spitter-corpse"].collision_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw.corpse["behemoth-spitter-corpse"].selection_box = {{-1.5, -2}, {1.5, 2}}
end



data:extend(
{
  {
    type = "unit",
    name = "bob-big-electric-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 200,
    order="b-b-f",
    subgroup="enemies",
    resistances =
    {
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "laser",
        percent = 5,
      },

      {
        type = "fire",
        percent = 5,
      },
      {
        type = "electric",
        decrease = 2,
        percent = 15,
      },
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.01,
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.7, -1.0}, {0.7, 1.0}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-electric-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 3,
      scale = bobmods.enemies.big_scale,
      tint1 = bobmods.enemies.electric_tint,
      tint2 = bobmods.enemies.electric_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_big,
    },
    vision_distance = 30,
    movement_speed = 0.15,
    distance_per_frame = 0.07,
    -- in pu
    pollution_to_join_attack = 100,
    corpse = "bob-big-electric-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = sounds.spitter_calls(0.9),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.6),
    run_animation = spitterrunanimation(bobmods.enemies.big_scale, bobmods.enemies.electric_tint, bobmods.enemies.electric_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.big_scale)
  },

  add_spitter_die_animation(bobmods.enemies.big_scale, bobmods.enemies.electric_tint, bobmods.enemies.electric_tint2,
  {
    type = "corpse",
    name = "bob-big-electric-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-huge-explosive-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 400,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 40,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 10,
      },

      {
        type = "fire",
        percent = 15,
      },
      {
        type = "electric",
        percent = 15,
      },

      {
        type = "bob-pierce",
        percent = 5,
      },
      {
        type = "poison",
        percent = 5,
      },
      {
        type = "acid",
        percent = 5,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.9, -1.1}, {0.7, 1.1}},
    sticker_box = {{-0.4, -0.6}, {0.4, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-explosive-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 4,
      scale = bobmods.enemies.huge_scale,
      tint1 = bobmods.enemies.explosive_tint,
      tint2 = bobmods.enemies.explosive_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_big,
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.05,
    -- in pu
    pollution_to_join_attack = 125,
    corpse = "bob-huge-explosive-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = sounds.spitter_calls(1.0),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.7),
    run_animation = spitterrunanimation(bobmods.enemies.huge_scale, bobmods.enemies.explosive_tint, bobmods.enemies.explosive_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.huge_scale)
  },

  add_spitter_die_animation(bobmods.enemies.huge_scale, bobmods.enemies.explosive_tint, bobmods.enemies.explosive_tint2,
  {
    type = "corpse",
    name = "bob-huge-explosive-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[bigger]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-huge-acid-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 400,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 6,
        percent = 30,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 10,
      },

      {
        type = "fire",
        percent = 15,
      },
      {
        type = "electric",
        percent = 15,
      },

      {
        type = "bob-pierce",
        percent = 5,
      },
      {
        type = "poison",
        percent = 5,
      },
      {
        type = "acid",
        decrease = 6,
        percent = 15,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.9, -1.1}, {0.7, 1.1}},
    sticker_box = {{-0.4, -0.6}, {0.4, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-acid-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 4,
      scale = bobmods.enemies.huge_scale,
      tint1 = bobmods.enemies.acid_tint,
      tint2 = bobmods.enemies.acid_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_big,
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.05,
    -- in pu
    pollution_to_join_attack = 125,
    corpse = "bob-huge-acid-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = sounds.spitter_calls(1.0),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.7),
    run_animation = spitterrunanimation(bobmods.enemies.huge_scale, bobmods.enemies.acid_tint, bobmods.enemies.acid_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.huge_scale)
  },

  add_spitter_die_animation(bobmods.enemies.huge_scale, bobmods.enemies.acid_tint, bobmods.enemies.acid_tint2,
  {
    type = "corpse",
    name = "bob-huge-acid-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[bigger]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-giant-fire-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 800,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 20,
      },
      {
        type = "explosion",
        decrease = 8,
        percent = 35,
      },
	 {
        type = "laser",
        percent = 15,
      },
      {
        type = "impact",
        decrease = 15,
      },

      {
        type = "fire",
        decrease = 8,
        percent = 40,
      },
      {
        type = "electric",
        percent = 20,
      },

      {
        type = "bob-pierce",
        percent = 10,
      },
      {
        type = "poison",
        percent = 10,
      },
      {
        type = "acid",
        percent = 10,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.1, -1.4}, {1.1, 1.4}},
    sticker_box = {{-0.5, -0.7}, {0.5, 0.3}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-fire-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 5,
      scale = bobmods.enemies.giant_scale,
      tint1 = bobmods.enemies.acid_tint,
      tint2 = bobmods.enemies.acid_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_big,
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 200,
    corpse = "bob-giant-fire-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = sounds.spitter_calls(1.2),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.8),
    run_animation = spitterrunanimation(bobmods.enemies.giant_scale, bobmods.enemies.fire_tint, bobmods.enemies.fire_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.giant_scale)
  },

  add_spitter_die_animation(bobmods.enemies.giant_scale, bobmods.enemies.fire_tint, bobmods.enemies.fire_tint2,
  {
    type = "corpse",
    name = "bob-giant-fire-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-giant-poison-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 800,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
        percent = 20,
      },
      {
        type = "explosion",
        decrease = 8,
        percent = 35,
      },
	 {
        type = "laser",
        percent = 15,
      },
      {
        type = "impact",
        decrease = 15,
      },

      {
        type = "fire",
        percent = 20,
      },
      {
        type = "electric",
        percent = 20,
      },

      {
        type = "bob-pierce",
        percent = 10,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 32.5,
      },
      {
        type = "acid",
        percent = 10,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.1, -1.4}, {1.1, 1.4}},
    sticker_box = {{-0.5, -0.7}, {0.5, 0.3}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-poison-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 5,
      scale = bobmods.enemies.giant_scale,
      tint1 = bobmods.enemies.poison_tint,
      tint2 = bobmods.enemies.poison_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_big,
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 200,
    corpse = "bob-giant-poison-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = sounds.spitter_calls(1.2),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.8),
    run_animation = spitterrunanimation(bobmods.enemies.giant_scale, bobmods.enemies.poison_tint, bobmods.enemies.poison_tint2 ),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.giant_scale)
  },

  add_spitter_die_animation(bobmods.enemies.giant_scale, bobmods.enemies.poison_tint, bobmods.enemies.poison_tint2,
  {
    type = "corpse",
    name = "bob-giant-poison-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-titan-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1500,
    order="b-b-i",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 16,
        percent = 70,
      },
	 {
        type = "laser",
        percent = 25,
      },
      {
        type = "impact",
        percent = 25,
      },

      {
        type = "fire",
        decrease = 10,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 50,
      },

      {
        type = "bob-pierce",
        percent = 25,
      },
      {
        type = "poison",
        percent = 25,
      },
      {
        type = "acid",
        percent = 25,
      },
    },
    spawning_time_modifier = 5,
    healing_per_tick = 0.05,
    collision_box = {{-0.85, -0.85}, {0.85, 0.85}},
    selection_box = {{-1.3, -1.7}, {1.3, 1.7}},
    sticker_box = {{-0.7, -1}, {0.7, 0.5}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-titan-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 5,
      scale = bobmods.enemies.titan_scale,
      tint1 = bobmods.enemies.titan_tint,
      tint2 = bobmods.enemies.titan_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_behemoth,
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 300,
    corpse = "bob-titan-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = sounds.spitter_calls(1.2),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.9),
    run_animation = spitterrunanimation(bobmods.enemies.titan_scale, bobmods.enemies.titan_tint, bobmods.enemies.titan_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.titan_scale)
  },

  add_spitter_die_animation(bobmods.enemies.titan_scale, bobmods.enemies.titan_tint, bobmods.enemies.titan_tint2,
  {
    type = "corpse",
    name = "bob-titan-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[titan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-behemoth-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 2000,
    order="b-b-j",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
        percent = 75,
      },
      {
        type = "explosion",
        decrease = 16,
        percent = 85,
      },
      {
        type = "laser",
        percent = 35,
      },
      {
        type = "impact",
        percent = 35,
      },

      {
        type = "fire",
        decrease = 10,
        percent = 75,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 75,
      },

      {
        type = "bob-pierce",
        percent = 35,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 65,
      },
      {
        type = "acid",
        percent = 35,
      },
    },
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1.5, -2}, {1.5, 2}},
    sticker_box = {{-0.6, -1}, {0.6, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-behemoth-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 10,
      scale = bobmods.enemies.behemoth_scale,
      tint1 = bobmods.enemies.behemoth_tint,
      tint2 = bobmods.enemies.behemoth_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_behemoth,
    },
    vision_distance = 30,
    movement_speed = 0.15,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 500,
    corpse = "bob-behemoth-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = sounds.spitter_calls(1.2),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(0.9),
    run_animation = spitterrunanimation(bobmods.enemies.behemoth_scale, bobmods.enemies.behemoth_tint, bobmods.enemies.behemoth_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.behemoth_scale)
  },

  add_spitter_die_animation(bobmods.enemies.behemoth_scale, bobmods.enemies.behemoth_tint, bobmods.enemies.behemoth_tint2,
  {
    type = "corpse",
    name = "bob-behemoth-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),


  {
    type = "unit",
    name = "bob-leviathan-spitter",
    icon = "__base__/graphics/icons/small-spitter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 10000,
    order="b-b-j",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 15,
        percent = 90,
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 90,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "impact",
        percent = 50,
      },

      {
        type = "fire",
        decrease = 15,
        percent = 90,
      },
      {
        type = "electric",
        decrease = 15,
        percent = 90,
      },

      {
        type = "bob-pierce",
        decrease = 10,
        percent = 50,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 50,
      },
      {
        type = "acid",
        decrease = 10,
        percent = 50,
      },
    },
    spawning_time_modifier = 12,
    healing_per_tick = 0.1,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.7, -2.4}, {1.7, 2.4}},
    sticker_box = {{-0.7, -1.2}, {0.7, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    attack_parameters = bobmods.enemies.spitter_attack_parameters
    {
      acid_stream_name = "bob-leviathan-stream",
      range = 15,
      min_attack_distance = 10,
      cooldown = 100,
      cooldown_deviation = 0.15,
      damage_modifier = 10,
      scale = bobmods.enemies.leviathan_scale,
      tint1 = bobmods.enemies.leviathan_tint,
      tint2 = bobmods.enemies.leviathan_tint2,
      begin_sound = bobmods.enemies.spit_begin_sound_behemoth,
    },
    vision_distance = 50,
    movement_speed = 0.15,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 1000,
    corpse = "bob-leviathan-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = sounds.spitter_calls(1.2),
    dying_sound = sounds.spitter_dying(1.0),
    walking_sound = sounds.spitter_walk(1.0),
    run_animation = spitterrunanimation(bobmods.enemies.leviathan_scale, bobmods.enemies.leviathan_tint, bobmods.enemies.leviathan_tint2),
    damaged_trigger_effect = hit_effects.biter(),
    walking_sound = sounds.spitter_walk(0.6),
    ai_settings = biter_ai_settings,
    water_reflection = spitter_water_reflection(bobmods.enemies.leviathan_scale)
  },

  add_spitter_die_animation(bobmods.enemies.leviathan_scale, bobmods.enemies.leviathan_tint, bobmods.enemies.leviathan_tint2,
  {
    type = "corpse",
    name = "bob-leviathan-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    icon_size = 64,
    icon_mipmaps = 4,
    selectable_in_game = false,
    selection_box = {{-1.2, -1.2}, {1.2, 1.2}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-f[leviathan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
  }),
}
)

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw["unit"]["bob-huge-explosive-spitter"].max_health = 800
  data.raw["unit"]["bob-huge-acid-spitter"].max_health = 800
  data.raw["unit"]["bob-giant-fire-spitter"].max_health = 2000
  data.raw["unit"]["bob-giant-poison-spitter"].max_health = 2000
  data.raw["unit"]["bob-titan-spitter"].max_health = 5000
  data.raw["unit"]["bob-behemoth-spitter"].max_health = 12500
  data.raw["unit"]["bob-leviathan-spitter"].max_health = 50000
end
