local leviathanfrequency = settings.startup["bobmods-enemies-leviathanfrequency"].value

data:extend({
  {
    type = "unit-spawner",
    name = "bob-biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "not-repairable" },
    max_health = 1500,
    order = "b-b-i",
    subgroup = "enemies",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0,
        },
      },
      apparent_volume = 2,
    },
    dying_sound = {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0,
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0,
      },
    },
    resistances = {
      {
        type = "physical",
        decrease = 2,
        percent = 20,
      },
      {
        type = "impact",
        percent = 20,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "plasma",
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      },
      {
        type = "bob-pierce",
        percent = 20,
      },
      {
        type = "acid",
        percent = 20,
      },
      {
        type = "poison",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
    selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
    map_generator_bounding_box = { { -4.2, -3.2 }, { 3.2, 3.2 } },
    pollution_absorption_absolute = 80,
    pollution_absorption_proportional = 0.03,
    corpse = "bob-biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot = {},
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 5,
    animations = {
      spawner_idle_animation(0, bobmods.enemies.biter_spawner_tint),
      spawner_idle_animation(1, bobmods.enemies.biter_spawner_tint),
      spawner_idle_animation(2, bobmods.enemies.biter_spawner_tint),
      spawner_idle_animation(3, bobmods.enemies.biter_spawner_tint),
    },
    result_units = {
      { "small-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
      { "medium-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
      -- Big enemies apear at 0.5, slowly become elemental between 0.6 and 0.7, and disapear by 0.8
      { "big-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.7, 0.0 } } },
      { "bob-big-piercing-biter", { { 0.6, 0.0 }, { 0.7, 0.4 }, { 0.8, 0.0 } } },
      { "bob-huge-acid-biter", { { 0.6, 0.0 }, { 0.7, 0.2 } } },
      { "bob-huge-explosive-biter", { { 0.6, 0.0 }, { 0.7, 0.1 } } },
      { "bob-giant-poison-biter", { { 0.7, 0.0 }, { 0.8, 0.2 } } },
      { "bob-giant-fire-biter", { { 0.7, 0.0 }, { 0.8, 0.1 } } },
      { "bob-titan-biter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
      { "bob-behemoth-biter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
      { "bob-leviathan-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
    },
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = { 300, 120 },
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_autoplace.enemy_spawner_autoplace(5),
    build_base_evolution_requirement = 0.5,
    call_for_help_radius = 50,
  },

  {
    type = "corpse",
    name = "bob-biter-spawner-corpse",
    flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    icon_size = 64,
    collision_box = { { -2, -2 }, { 2, 2 } },
    selection_box = { { -2, -2 }, { 2, 2 } },
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup = "corpses",
    order = "c[corpse]-d[big-biter-spawner]",
    final_render_layer = "corpse",
    animation = {
      spawner_die_animation(0, bobmods.enemies.biter_spawner_tint),
      spawner_die_animation(1, bobmods.enemies.biter_spawner_tint),
      spawner_die_animation(2, bobmods.enemies.biter_spawner_tint),
      spawner_die_animation(3, bobmods.enemies.biter_spawner_tint),
    },
  },

  {
    type = "unit-spawner",
    name = "bob-spitter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    icon_size = 64,
    flags = { "placeable-player", "placeable-enemy", "not-repairable" },
    max_health = 1500,
    order = "b-b-j",
    subgroup = "enemies",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0,
        },
      },
      apparent_volume = 2,
    },
    dying_sound = {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0,
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0,
      },
    },
    resistances = {
      {
        type = "physical",
        decrease = 2,
        percent = 20,
      },
      {
        type = "impact",
        percent = 20,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "plasma",
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 32,
      },
      {
        type = "fire",
        percent = 20,
      },
      {
        type = "electric",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
    selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
    map_generator_bounding_box = { { -4.2, -3.2 }, { 3.2, 3.2 } },
    pollution_absorption_absolute = 80,
    pollution_absorption_proportional = 0.03,
    corpse = "bob-spitter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot = {},
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 5,
    animations = {
      spawner_idle_animation(0, bobmods.enemies.spitter_spawner_tint),
      spawner_idle_animation(1, bobmods.enemies.spitter_spawner_tint),
      spawner_idle_animation(2, bobmods.enemies.spitter_spawner_tint),
      spawner_idle_animation(3, bobmods.enemies.spitter_spawner_tint),
    },
    result_units = {
      { "small-biter", { { 0.0, 0.3 }, { 0.2, 0.3 }, { 0.4, 0.0 } } },
      { "small-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
      { "medium-spitter", { { 0.4, 0.0 }, { 0.6, 0.3 }, { 0.7, 0.0 } } },
      -- Big enemies apear at 0.5, slowly become elemental between 0.6 and 0.7, and disapear by 0.8
      { "big-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.7, 0.0 } } },
      { "bob-big-electric-spitter", { { 0.6, 0.0 }, { 0.7, 0.4 }, { 0.8, 0.0 } } },
      { "bob-huge-explosive-spitter", { { 0.6, 0.0 }, { 0.7, 0.2 } } },
      { "bob-huge-acid-spitter", { { 0.6, 0.0 }, { 0.7, 0.1 } } },
      { "bob-giant-fire-spitter", { { 0.7, 0.0 }, { 0.8, 0.2 } } },
      { "bob-giant-poison-spitter", { { 0.7, 0.0 }, { 0.8, 0.1 } } },
      { "bob-titan-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
      { "bob-behemoth-spitter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
      { "bob-leviathan-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
    },
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = { 300, 120 },
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_autoplace.enemy_spawner_autoplace(5),
    build_base_evolution_requirement = 0.5,
    call_for_help_radius = 50,
  },

  {
    type = "corpse",
    name = "bob-spitter-spawner-corpse",
    flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    icon_size = 64,
    collision_box = { { -2, -2 }, { 2, 2 } },
    selection_box = { { -2, -2 }, { 2, 2 } },
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup = "corpses",
    order = "c[corpse]-c[big-spitter-spawner]",
    final_render_layer = "corpse",
    animation = {
      spawner_die_animation(0, bobmods.enemies.spitter_spawner_tint),
      spawner_die_animation(1, bobmods.enemies.spitter_spawner_tint),
      spawner_die_animation(2, bobmods.enemies.spitter_spawner_tint),
      spawner_die_animation(3, bobmods.enemies.spitter_spawner_tint),
    },
  },
})

if settings.startup["bobmods-enemies-superspawner"].value == true then
  data:extend({
    {
      type = "unit-spawner",
      name = "bob-super-spawner",
      icon = "__base__/graphics/icons/biter-spawner.png",
      icon_size = 64,
      flags = { "placeable-player", "placeable-enemy", "not-repairable" },
      max_health = 10000,
      order = "b-b-k",
      subgroup = "enemies",
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/creatures/spawner.ogg",
            volume = 1.0,
          },
        },
        apparent_volume = 2,
      },
      dying_sound = {
        {
          filename = "__base__/sound/creatures/spawner-death-1.ogg",
          volume = 1.0,
        },
        {
          filename = "__base__/sound/creatures/spawner-death-2.ogg",
          volume = 1.0,
        },
      },
      resistances = {
        {
          type = "physical",
          decrease = 10,
          percent = 20,
        },
        {
          type = "impact",
          percent = 20,
        },
        {
          type = "laser",
          percent = 50,
        },
        {
          type = "plasma",
          percent = 50,
        },
        {
          type = "explosion",
          decrease = 5,
          percent = 32,
        },
        {
          type = "bob-pierce",
          percent = 20,
        },
        {
          type = "acid",
          percent = 20,
        },
        {
          type = "poison",
          percent = 20,
        },
        {
          type = "fire",
          percent = 20,
        },
        {
          type = "electric",
          percent = 20,
        },
      },
      healing_per_tick = 1,
      collision_box = { { -3.2, -2.2 }, { 2.2, 2.2 } },
      selection_box = { { -3.5, -2.5 }, { 2.5, 2.5 } },
      map_generator_bounding_box = { { -4.2, -3.2 }, { 3.2, 3.2 } },
      pollution_absorption_absolute = 200,
      pollution_absorption_proportional = 0.1,
      corpse = "bob-super-spawner-corpse",
      dying_explosion = "blood-explosion-huge",
      loot = {},
      max_count_of_owned_units = 20,
      max_friends_around_to_spawn = 10,
      animations = {
        spawner_idle_animation(0, bobmods.enemies.super_spawner_tint),
        spawner_idle_animation(1, bobmods.enemies.super_spawner_tint),
        spawner_idle_animation(2, bobmods.enemies.super_spawner_tint),
        spawner_idle_animation(3, bobmods.enemies.super_spawner_tint),
      },
      result_units = {
        { "small-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
        { "small-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
        { "medium-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
        { "medium-spitter", { { 0.4, 0.0 }, { 0.6, 0.3 }, { 0.7, 0.0 } } },
        { "bob-big-piercing-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.7, 0.4 }, { 0.8, 0.0 } } },
        { "bob-big-electric-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.7, 0.4 }, { 0.8, 0.0 } } },
        { "bob-huge-acid-biter", { { 0.6, 0.0 }, { 0.7, 0.3 }, { 0.8, 0.3 }, { 0.9, 0.0 } } },
        { "bob-huge-explosive-spitter", { { 0.6, 0.0 }, { 0.7, 0.3 }, { 0.8, 0.3 }, { 0.9, 0.0 } } },
        { "bob-giant-poison-biter", { { 0.7, 0.0 }, { 0.8, 0.3 }, { 0.85, 0.3 }, { 0.95, 0.0 } } },
        { "bob-giant-fire-spitter", { { 0.7, 0.0 }, { 0.8, 0.3 }, { 0.85, 0.3 }, { 0.95, 0.0 } } },
        { "bob-titan-biter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
        { "bob-titan-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
        { "bob-behemoth-biter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
        { "bob-behemoth-spitter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
        { "bob-leviathan-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
        { "bob-leviathan-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
      },
      -- With zero evolution the spawn rate is 3 seconds, with max evolution it is 1 seconds
      spawning_cooldown = { 240, 60 },
      spawning_radius = 20,
      spawning_spacing = 3,
      max_spawn_shift = 0,
      max_richness_for_spawn_shift = 100,
      autoplace = enemy_autoplace.enemy_spawner_autoplace(10),
      build_base_evolution_requirement = 0.8,
      call_for_help_radius = 50,
    },

    {
      type = "corpse",
      name = "bob-super-spawner-corpse",
      flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
      icon = "__base__/graphics/icons/biter-spawner-corpse.png",
      icon_size = 64,
      collision_box = { { -2, -2 }, { 2, 2 } },
      selection_box = { { -2, -2 }, { 2, 2 } },
      selectable_in_game = false,
      dying_speed = 0.04,
      subgroup = "corpses",
      order = "c[corpse]-c[super-spawner]",
      final_render_layer = "corpse",
      animation = {
        spawner_die_animation(0, bobmods.enemies.super_spawner_tint),
        spawner_die_animation(1, bobmods.enemies.super_spawner_tint),
        spawner_die_animation(2, bobmods.enemies.super_spawner_tint),
        spawner_die_animation(3, bobmods.enemies.super_spawner_tint),
      },
    },
  })
end

if settings.startup["bobmods-enemies-biggersooner"].value == true then
  data.raw["unit-spawner"]["bob-biter-spawner"].build_base_evolution_requirement = 0.4
  data.raw["unit-spawner"]["bob-biter-spawner"].result_units = {
    { "small-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
    -- Big enemies apear at 0.4, slowly become elemental between 0.5 and 0.6, and disapear by 0.7
    { "big-biter", { { 0.4, 0.0 }, { 0.5, 0.4 }, { 0.6, 0.0 } } },
    { "bob-big-piercing-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.7, 0.0 } } },
    { "bob-huge-acid-biter", { { 0.5, 0.0 }, { 0.6, 0.2 } } },
    { "bob-huge-explosive-biter", { { 0.5, 0.0 }, { 0.6, 0.1 } } },
    { "bob-giant-poison-biter", { { 0.6, 0.0 }, { 0.7, 0.2 } } },
    { "bob-giant-fire-biter", { { 0.6, 0.0 }, { 0.7, 0.1 } } },
    { "bob-titan-biter", { { 0.7, 0.0 }, { 0.8, 0.3 } } },
    { "bob-behemoth-biter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
    { "bob-leviathan-biter", { { 0.9, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  data.raw["unit-spawner"]["bob-spitter-spawner"].build_base_evolution_requirement = 0.4
  data.raw["unit-spawner"]["bob-spitter-spawner"].result_units = {
    { "small-biter", { { 0.0, 0.3 }, { 0.1, 0.3 }, { 0.3, 0.0 } } },
    { "small-spitter", { { 0.1, 0.0 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
    -- Big enemies apear at 0.4, slowly become elemental between 0.5 and 0.6, and disapear by 0.7
    { "big-spitter", { { 0.4, 0.0 }, { 0.5, 0.4 }, { 0.6, 0.0 } } },
    { "bob-big-electric-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.7, 0.0 } } },
    { "bob-huge-explosive-spitter", { { 0.5, 0.0 }, { 0.6, 0.2 } } },
    { "bob-huge-acid-spitter", { { 0.5, 0.0 }, { 0.6, 0.1 } } },
    { "bob-giant-fire-spitter", { { 0.6, 0.0 }, { 0.7, 0.2 } } },
    { "bob-giant-poison-spitter", { { 0.6, 0.0 }, { 0.7, 0.1 } } },
    { "bob-titan-spitter", { { 0.7, 0.0 }, { 0.8, 0.3 } } },
    { "bob-behemoth-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
    { "bob-leviathan-spitter", { { 0.9, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  if settings.startup["bobmods-enemies-superspawner"].value == true then
    data.raw["unit-spawner"]["bob-super-spawner"].build_base_evolution_requirement = 0.7
    data.raw["unit-spawner"]["bob-super-spawner"].result_units = {
      { "small-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
      { "small-spitter", { { 0.1, 0.0 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
      { "medium-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
      { "medium-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
      { "bob-big-piercing-biter", { { 0.4, 0.0 }, { 0.5, 0.4 }, { 0.6, 0.4 }, { 0.7, 0.0 } } },
      { "bob-big-electric-spitter", { { 0.4, 0.0 }, { 0.5, 0.4 }, { 0.6, 0.4 }, { 0.7, 0.0 } } },
      { "bob-huge-acid-biter", { { 0.5, 0.0 }, { 0.6, 0.3 }, { 0.7, 0.3 }, { 0.8, 0.0 } } },
      { "bob-huge-explosive-spitter", { { 0.5, 0.0 }, { 0.6, 0.3 }, { 0.7, 0.3 }, { 0.8, 0.0 } } },
      { "bob-giant-poison-biter", { { 0.6, 0.0 }, { 0.7, 0.3 }, { 0.8, 0.3 }, { 0.9, 0.0 } } },
      { "bob-giant-fire-spitter", { { 0.6, 0.0 }, { 0.7, 0.3 }, { 0.8, 0.3 }, { 0.9, 0.0 } } },
      { "bob-titan-biter", { { 0.7, 0.0 }, { 0.8, 0.3 } } },
      { "bob-titan-spitter", { { 0.7, 0.0 }, { 0.8, 0.3 } } },
      { "bob-behemoth-biter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
      { "bob-behemoth-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 } } },
      { "bob-leviathan-biter", { { 0.9, 0.0 }, { 1.0, leviathanfrequency } } },
      { "bob-leviathan-spitter", { { 0.9, 0.0 }, { 1.0, leviathanfrequency } } },
    }
  end
end

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw["unit-spawner"]["bob-biter-spawner"].max_health = 5000
  data.raw["unit-spawner"]["bob-spitter-spawner"].max_health = 5000
  if settings.startup["bobmods-enemies-superspawner"].value == true then
    data.raw["unit-spawner"]["bob-super-spawner"].max_health = 50000
  end
end
