--Biters:
-- Needed: name, order, tint, tint2, full attack_parameters except for attack sound and animation
-- Optional: icon, icon_size, flags, max_health, healing_per_tick, factoriopedia_simulation, resistances, impact_category, spawning_time_modifier, distraction_cooldown, min_pursue_time, max_pursue_distance, damaged_trigger_effect, absorptions_to_join_attack, movement_speed, distance_per_frame, range, vision_distance

--Spitters:
-- Needed: name, order, tint, tint2. A sticker_name or fire_sticker_name is required even if sticker already exists, or else the sticker won't be included in the new prototypes (stickers will only be generated once per name, so only the first instance needs parameters). Stickers can also be removed from fires(acid splash) with no_sticker_from_fire.
-- Optional: icon, icon_size, flags, max_health, healing_per_tick, factoriopedia_simulation, resistances, impact_category, damaged_trigger_effect, spawning_time_modifier, distraction_cooldown, min_pursue_time, max_pursue_distance, absorptions_to_join_attack, movement_speed, distance_per_frame, range, vision_distance and most attack_parameters

--Worms:
-- Needed: name, order, tint. A sticker_name or fire_sticker_name is required even if sticker already exists, or else the sticker won't be included in the new prototypes (stickers will only be generated once per name, so only the first instance needs parameters). Stickers can also be removed from fires(acid splash) with no_sticker_from_fire.
-- Optional: tint2(note: use subtle coloring), icon, icon_size, flags, max_health, healing_per_tick, factoriopedia_simulation, resistances, impact_category, damaged_trigger_effect, and most attack_parameters

--Resistances for non-spawners may be specified with (element)_resist, with string values "normal"(default), "high", "very-high", and "low". Spawners require individual resistance tables.
--Worms and Spawners will require autoplace to be specified in order to be automatically generated.
--Stickers of the same name will only be generated once, in the event that multiple entities use the same one.
--"skip_generate_fire = true" may be used if the relevant fire already exists (i.e. if it is reused between multiple entities).

--Spawners:
-- Needed: name, order, tint, class(biter, spitter, or super - higher tier that spawns both), element(except if basic), artifact_color(if colored artifacts are enabled).
-- Optional: tint2(note: use subtle coloring), icon, icon_size, flags, max_health, healing_per_tick, resistances, impact_category, damaged_trigger_effect, absorptions_per_second, max_count_of_owned_units, max_friends_around_to_spawn, spawning_cooldown, build_base_evolution_requirement, call_for_help_radius, time_to_capture, result_units(required if vanilla enemies are mixed in)

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local health_increase = settings.startup["bobmods-enemies-healthincrease"].value
local bigger_spawns = settings.startup["bobmods-enemies-biggersooner"].value
local leviathanfrequency = settings.startup["bobmods-enemies-leviathanfrequency"].value
local default_ai = { destroy_when_commands_fail = true, allow_try_return_to_spawner = true }

local biter_resistances = {
  {
    { type = "physical" },
    { type = "physical", decrease = 4, percent = 10 },
    { type = "physical", decrease = 8, percent = 15 },
    { type = "physical", decrease = 10, percent = 20 },
    { type = "physical", decrease = 12, percent = 30 },
    { type = "physical", decrease = 14, percent = 40 },
    { type = "physical", decrease = 16, percent = 60 },
    { type = "physical", decrease = 20, percent = 80 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 30 },
    { type = "bob-pierce", percent = 40 },
  },
  {
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 30 },
    { type = "explosion", percent = 40 },
    { type = "explosion", percent = 60 },
  },
  {
    { type = "laser" },
    { type = "laser" },
    { type = "laser" },
    { type = "laser", percent = 10 },
    { type = "laser", percent = 20 },
    { type = "laser", decrease = 10, percent = 35 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 20, percent = 75 },
  },
  {
    { type = "fire" },
    { type = "fire" },
    { type = "fire" },
    { type = "fire" },
    { type = "fire", percent = 5 },
    { type = "fire", percent = 10 },
    { type = "fire", decrease = 3, percent = 40 },
    { type = "fire", decrease = 5, percent = 50 },
  },
  {
    { type = "poison" },
    { type = "poison" },
    { type = "poison" },
    { type = "poison" },
    { type = "poison", percent = 5 },
    { type = "poison", percent = 10 },
    { type = "poison", decrease = 3, percent = 30 },
    { type = "poison", decrease = 5, percent = 50 },
  },
  {
    { type = "electric" },
    { type = "electric" },
    { type = "electric" },
    { type = "electric", percent = 5 },
    { type = "electric", decrease = 3, percent = 10 },
    { type = "electric", decrease = 5, percent = 20 },
    { type = "electric", decrease = 10, percent = 35 },
    { type = "electric", decrease = 15, percent = 50 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 2, percent = 25 },
    { type = "acid", decrease = 3, percent = 35 },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "acid", decrease = 6, percent = 60 },
    { type = "acid", decrease = 8, percent = 70 },
    { type = "acid", decrease = 10, percent = 75 },
    { type = "acid", decrease = 12, percent = 85 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 50 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local biter_resistances_up = {
  {
    { type = "physical" },
    { type = "physical", decrease = 5, percent = 30 },
    { type = "physical", decrease = 9, percent = 45 },
    { type = "physical", decrease = 12, percent = 60 },
    { type = "physical", decrease = 14, percent = 75 },
    { type = "physical", decrease = 18, percent = 85 },
    { type = "physical", decrease = 24, percent = 90 },
    { type = "physical", decrease = 36, percent = 95 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 40 },
    { type = "bob-pierce", percent = 60 },
    { type = "bob-pierce", percent = 75 },
  },
  {
    { type = "explosion" },
    { type = "explosion", percent = 30 },
    { type = "explosion", percent = 60 },
    { type = "explosion", decrease = 5, percent = 70 },
    { type = "explosion", decrease = 10, percent = 80 },
    { type = "explosion", decrease = 15, percent = 85 },
    { type = "explosion", decrease = 20, percent = 90 },
    { type = "explosion", decrease = 25, percent = 95 },
  },
  {
    { type = "laser" },
    { type = "laser", decrease = 4, percent = 30 },
    { type = "laser", decrease = 8, percent = 40 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 22, percent = 60 },
    { type = "laser", decrease = 30, percent = 70 },
    { type = "laser", decrease = 40, percent = 80 },
    { type = "laser", decrease = 50, percent = 90 },
  },
  {
    { type = "fire" },
    { type = "fire", percent = 20 },
    { type = "fire", percent = 30 },
    { type = "fire", decrease = 2, percent = 40 },
    { type = "fire", decrease = 4, percent = 50 },
    { type = "fire", decrease = 6, percent = 60 },
    { type = "fire", decrease = 8, percent = 70 },
    { type = "fire", decrease = 10, percent = 80 },
  },
  {
    { type = "poison" },
    { type = "poison", percent = 40 },
    { type = "poison", percent = 50 },
    { type = "poison", decrease = 5, percent = 60 },
    { type = "poison", decrease = 10, percent = 70 },
    { type = "poison", decrease = 15, percent = 80 },
    { type = "poison", decrease = 20, percent = 85 },
    { type = "poison", decrease = 25, percent = 90 },
  },
  {
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", decrease = 5, percent = 30 },
    { type = "electric", decrease = 10, percent = 40 },
    { type = "electric", decrease = 15, percent = 50 },
    { type = "electric", decrease = 20, percent = 60 },
    { type = "electric", decrease = 25, percent = 75 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 2, percent = 50 },
    { type = "acid", decrease = 4, percent = 60 },
    { type = "acid", decrease = 6, percent = 70 },
    { type = "acid", decrease = 10, percent = 80 },
    { type = "acid", decrease = 14, percent = 85 },
    { type = "acid", decrease = 18, percent = 90 },
    { type = "acid", decrease = 25, percent = 95 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 50 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local biter_resistances_upup = {
  {
    { type = "physical" },
    { type = "physical", decrease = 5, percent = 30 },
    { type = "physical", decrease = 9, percent = 45 },
    { type = "physical", decrease = 12, percent = 60 },
    { type = "physical", decrease = 14, percent = 75 },
    { type = "physical", decrease = 18, percent = 85 },
    { type = "physical", decrease = 24, percent = 90 },
    { type = "physical", decrease = 36, percent = 95 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 40 },
    { type = "bob-pierce", percent = 60 },
    { type = "bob-pierce", percent = 75 },
  },
  {
    { type = "explosion", decrease = 5, percent = 60 },
    { type = "explosion", decrease = 10, percent = 65 },
    { type = "explosion", decrease = 20, percent = 70 },
    { type = "explosion", decrease = 30, percent = 75 },
    { type = "explosion", decrease = 40, percent = 80 },
    { type = "explosion", decrease = 60, percent = 85 },
    { type = "explosion", decrease = 80, percent = 90 },
    { type = "explosion", decrease = 100, percent = 95 },
  },
  {
    { type = "laser" },
    { type = "laser", decrease = 4, percent = 30 },
    { type = "laser", decrease = 8, percent = 40 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 22, percent = 60 },
    { type = "laser", decrease = 30, percent = 70 },
    { type = "laser", decrease = 40, percent = 80 },
    { type = "laser", decrease = 50, percent = 90 },
  },
  {
    { type = "fire", decrease = 2, percent = 50 },
    { type = "fire", decrease = 4, percent = 55 },
    { type = "fire", decrease = 6, percent = 60 },
    { type = "fire", decrease = 8, percent = 65 },
    { type = "fire", decrease = 10, percent = 70 },
    { type = "fire", decrease = 12, percent = 75 },
    { type = "fire", decrease = 16, percent = 80 },
    { type = "fire", decrease = 20, percent = 90 },
  },
  {
    { type = "poison" },
    { type = "poison", percent = 40 },
    { type = "poison", percent = 50 },
    { type = "poison", decrease = 5, percent = 60 },
    { type = "poison", decrease = 10, percent = 70 },
    { type = "poison", decrease = 15, percent = 80 },
    { type = "poison", decrease = 20, percent = 85 },
    { type = "poison", decrease = 25, percent = 90 },
  },
  {
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", decrease = 5, percent = 30 },
    { type = "electric", decrease = 10, percent = 40 },
    { type = "electric", decrease = 15, percent = 50 },
    { type = "electric", decrease = 20, percent = 60 },
    { type = "electric", decrease = 25, percent = 75 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 2, percent = 50 },
    { type = "acid", decrease = 4, percent = 60 },
    { type = "acid", decrease = 6, percent = 70 },
    { type = "acid", decrease = 10, percent = 80 },
    { type = "acid", decrease = 14, percent = 85 },
    { type = "acid", decrease = 18, percent = 90 },
    { type = "acid", decrease = 25, percent = 95 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 50 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local biter_resistances_down = {
  {
    { type = "physical" },
    { type = "physical", decrease = 2, percent = 5 },
    { type = "physical", decrease = 4, percent = 10 },
    { type = "physical", decrease = 7, percent = 15 },
    { type = "physical", decrease = 9, percent = 25 },
    { type = "physical", decrease = 11, percent = 35 },
    { type = "physical", decrease = 13, percent = 50 },
    { type = "physical", decrease = 15, percent = 60 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 5 },
    { type = "bob-pierce", percent = 15 },
    { type = "bob-pierce", percent = 25 },
  },
  {
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 30 },
  },
  {
    { type = "laser", percent = -40 },
    { type = "laser", percent = -30 },
    { type = "laser", percent = -20 },
    { type = "laser", percent = -10 },
    { type = "laser" },
    { type = "laser", percent = 10 },
    { type = "laser", percent = 20 },
    { type = "laser", percent = 30 },
  },
  {
    { type = "fire", percent = -50 },
    { type = "fire", percent = -40 },
    { type = "fire", percent = -30 },
    { type = "fire", percent = -20 },
    { type = "fire", percent = -10 },
    { type = "fire" },
    { type = "fire", percent = 10 },
    { type = "fire", percent = 20 },
  },
  {
    { type = "poison", percent = -50 },
    { type = "poison", percent = -40 },
    { type = "poison", percent = -30 },
    { type = "poison", percent = -20 },
    { type = "poison", percent = -10 },
    { type = "poison" },
    { type = "poison", percent = 10 },
    { type = "poison", percent = 20 },
  },
  {
    { type = "electric", percent = -30 },
    { type = "electric", percent = -20 },
    { type = "electric", percent = -10 },
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", percent = 30 },
    { type = "electric", percent = 40 },
  },
  {
    { type = "acid", percent = -50 },
    { type = "acid", percent = -40 },
    { type = "acid", percent = -30 },
    { type = "acid", percent = -20 },
    { type = "acid", percent = -10 },
    { type = "acid" },
    { type = "acid", percent = 10 },
    { type = "acid", percent = 20 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local biter_stats = {
  {
    max_health = 15,
    healing_per_tick = 0.01,
    movement_speed = 0.2,
    scale = 0.5,
    distance_per_frame = 0.125,
    absorptions_to_join_attack = { pollution = 4 },
    dying_sound = sounds.biter_dying(0.5),
    dying_explosion = "small-biter-die",
    working_sound = sounds.biter_calls(0.35, 0.7),
    walking_sound = sounds.biter_walk(0, 0.3),
    attacking_sound = sounds.biter_roars(0.35),
  },

  {
    max_health = 75,
    healing_per_tick = 0.01,
    movement_speed = 0.24,
    scale = 0.7,
    distance_per_frame = 0.188,
    absorptions_to_join_attack = { pollution = 20 },
    dying_sound = sounds.biter_dying(0.6),
    dying_explosion = "medium-biter-die",
    working_sound = sounds.biter_calls(0.4, 0.8),
    walking_sound = sounds.biter_walk(0.05, 0.35),
    attacking_sound = sounds.biter_roars(0.4),
  },

  {
    max_health = 250,
    healing_per_tick = 0.02,
    movement_speed = 0.26,
    scale = 1,
    distance_per_frame = 0.3,
    absorptions_to_join_attack = { pollution = 40 },
    spawning_time_modifier = 3,
    dying_sound = sounds.biter_dying(0.7),
    dying_explosion = "medium-biter-die",
    working_sound = sounds.biter_calls(0.45, 0.95),
    walking_sound = sounds.biter_walk_big(0.37, 0.67),
    attacking_sound = sounds.biter_roars_mid(0.75),
  },

  {
    max_health = 750,
    healing_per_tick = 0.04,
    movement_speed = 0.27,
    scale = 1.25,
    distance_per_frame = 0.375,
    absorptions_to_join_attack = { pollution = 45 },
    spawning_time_modifier = 4,
    dying_sound = sounds.biter_dying(0.75),
    dying_explosion = "big-biter-die",
    working_sound = sounds.biter_calls_big(0.4, 0.7),
    walking_sound = sounds.biter_walk_big(0.5, 0.6),
    attacking_sound = sounds.biter_roars_mid(0.8),
  },

  {
    max_health = 2400,
    healing_per_tick = 0.1,
    movement_speed = 0.28,
    scale = 1.5,
    distance_per_frame = 0.45,
    absorptions_to_join_attack = { pollution = 50 },
    spawning_time_modifier = 5,
    dying_sound = sounds.biter_dying_big(0.5),
    dying_explosion = "big-biter-die",
    working_sound = sounds.biter_calls_big(0.45, 0.75),
    walking_sound = sounds.biter_walk_big(0.6, 0.7),
    attacking_sound = sounds.biter_roars_big(0.4),
  },

  {
    max_health = 8000,
    healing_per_tick = 0.2,
    movement_speed = 0.29,
    scale = 1.75,
    distance_per_frame = 0.525,
    absorptions_to_join_attack = { pollution = 55 },
    spawning_time_modifier = 6,
    dying_sound = sounds.biter_dying_big(0.55),
    dying_explosion = "big-biter-die",
    working_sound = sounds.biter_calls_big(0.5, 0.8),
    walking_sound = sounds.biter_walk_big(0.7, 0.8),
    attacking_sound = sounds.biter_roars_big(0.45),
  },

  {
    max_health = 25000,
    healing_per_tick = 0.3,
    movement_speed = 0.3,
    scale = 2,
    distance_per_frame = 0.6,
    absorptions_to_join_attack = { pollution = 60 },
    spawning_time_modifier = 8,
    dying_sound = sounds.biter_dying_big(0.6),
    dying_explosion = "behemoth-biter-die",
    working_sound = sounds.biter_calls_behemoth(0.5, 0.9),
    walking_sound = sounds.biter_walk_big(0.75, 0.9),
    attacking_sound = sounds.biter_roars_behemoth(0.7),
  },

  {
    max_health = 80000,
    healing_per_tick = 0.5,
    movement_speed = 0.32,
    scale = 2.5,
    distance_per_frame = 0.75,
    absorptions_to_join_attack = { pollution = 80 },
    spawning_time_modifier = 12,
    dying_sound = sounds.biter_dying_big(0.75),
    dying_explosion = "behemoth-biter-die",
    working_sound = sounds.biter_calls_behemoth(0.6, 1),
    walking_sound = sounds.biter_walk_big(0.85, 1),
    attacking_sound = sounds.biter_roars_behemoth(0.8),
  },
}

if health_increase == true then
  biter_stats[4].max_health = 2400
  biter_stats[5].max_health = 8000
  biter_stats[6].max_health = 22000
  biter_stats[7].max_health = 72000
  biter_stats[8].max_health = 300000
end

function bobmods.enemies.new_biter(inputs)
  local tier = inputs.tier or 3
  local final_scale = inputs.scale or biter_stats[tier].scale
  local set_resistances = {
    inputs.physical_resist or "normal",
    inputs.pierce_resist or "normal",
    inputs.explosion_resist or "normal",
    inputs.laser_resist or "normal",
    inputs.fire_resist or "normal",
    inputs.poison_resist or "normal",
    inputs.electric_resist or "normal",
    inputs.acid_resist or "normal",
    inputs.impact_resist or "normal",
    inputs.plasma_resist or "normal",
  }
  local new_resistances = {}
  local x = 0
  for i = 1, 10 do
    if set_resistances[i] == "high" then
      if biter_resistances_up[i][tier].decrease or biter_resistances_up[i][tier].percent then
        x = x + 1
        new_resistances[x] = biter_resistances_up[i][tier]
      end
    elseif set_resistances[i] == "very-high" then
      if biter_resistances_upup[i][tier].decrease or biter_resistances_upup[i][tier].percent then
        x = x + 1
        new_resistances[x] = biter_resistances_upup[i][tier]
      end
    elseif set_resistances[i] == "low" then
      if biter_resistances_down[i][tier].decrease or biter_resistances_down[i][tier].percent then
        x = x + 1
        new_resistances[x] = biter_resistances_down[i][tier]
      end
    else
      if biter_resistances[i][tier].decrease or biter_resistances[i][tier].percent then
        x = x + 1
        new_resistances[x] = biter_resistances[i][tier]
      end
    end
  end
  local biter_prototype = {
    type = "unit",
    name = inputs.name,
    order = inputs.order,
    localised_description = inputs.localised_description,
    factoriopedia_description = inputs.factoriopedia_description,
    flags = inputs.flags
      or { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
    max_health = inputs.health or biter_stats[tier].max_health,
    subgroup = "enemies",
    factoriopedia_simulation = inputs.factoriopedia_simulation,
    resistances = inputs.resistances or new_resistances,
    impact_category = inputs.impact_category or "organic",
    trigger_target_mask = inputs.trigger_target_mask,
    spawning_time_modifier = inputs.spawning_time_modifier or biter_stats[tier].spawning_time_modifier,
    healing_per_tick = inputs.healing_per_tick or biter_stats[tier].healing_per_tick,
    collision_box = { { -0.4 * final_scale, -0.4 * final_scale }, { 0.4 * final_scale, 0.4 * final_scale } },
    selection_box = { { -0.7 * final_scale, -1.5 * final_scale }, { 0.7 * final_scale, 0.3 * final_scale } },
    sticker_box = { { -0.6 * final_scale, -0.8 * final_scale }, { 0.6 * final_scale, 0 } },
    damaged_trigger_effect = inputs.damaged_trigger_effect or hit_effects.biter(),
    distraction_cooldown = inputs.distraction_cooldown or 300,
    min_pursue_time = inputs.min_pursue_time or 600,
    max_pursue_distance = inputs.max_pursue_distance or 65,
    attack_parameters = inputs.attack_parameters,
    vision_distance = inputs.vision_distance or 30,
    movement_speed = inputs.movement_speed or biter_stats[tier].movement_speed,
    distance_per_frame = inputs.distance_per_frame or biter_stats[tier].distance_per_frame,
    absorptions_to_join_attack = inputs.absorptions_to_join_attack or biter_stats[tier].absorptions_to_join_attack,
    corpse = inputs.name .. "-corpse",
    dying_explosion = inputs.dying_explosion or biter_stats[tier].dying_explosion,
    dying_trigger_effect = inputs.dying_trigger_effect,
    loot = {},
    working_sound = biter_stats[tier].working_sound,
    dying_sound = biter_stats[tier].dying_sound,
    walking_sound = biter_stats[tier].walking_sound,
    run_animation = biterrunanimation(final_scale, inputs.tint, inputs.tint2),
    running_sound_animation_positions = { 2 },
    ai_settings = inputs.ai_settings or default_ai,
    water_reflection = biter_water_reflection(final_scale),
  }
  if inputs.icons then
    biter_prototype.icons = inputs.icons
  elseif inputs.icon then
    biter_prototype.icon = inputs.icon
    biter_prototype.icon_size = inputs.icon_size or 64
  else
    biter_prototype.icon = "__base__/graphics/icons/big-biter.png"
  end
  if not biter_prototype.attack_parameters.sound then
    biter_prototype.attack_parameters.sound = biter_stats[tier].attacking_sound
  end
  if not biter_prototype.attack_parameters.animation then
    biter_prototype.attack_parameters.animation = biterattackanimation(final_scale, inputs.tint, inputs.tint2)
  end

  local corpse_prototype = add_biter_die_animation(final_scale, inputs.tint, inputs.tint2, {
    type = "corpse",
    name = inputs.name .. "-corpse",
    localised_name = { "entity-name.bob-enemies-corpse" },
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    hidden_in_factoriopedia = true,
    selection_box = { { -1, -1 }, { 1, 1 } },
    subgroup = "corpses",
    order = "c[corpse]-" .. inputs.order,
    flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map" },
  })

  data:extend({ biter_prototype, corpse_prototype })
end

local spitter_resistances = {
  {
    { type = "physical" },
    { type = "physical" },
    { type = "physical", percent = 10 },
    { type = "physical", decrease = 4, percent = 20 },
    { type = "physical", decrease = 8, percent = 30 },
    { type = "physical", decrease = 12, percent = 40 },
    { type = "physical", decrease = 16, percent = 50 },
    { type = "physical", decrease = 20, percent = 60 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 5 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 30 },
  },
  {
    { type = "explosion" },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 30 },
    { type = "explosion", percent = 40 },
    { type = "explosion", percent = 50 },
    { type = "explosion", percent = 75 },
  },
  {
    { type = "laser" },
    { type = "laser" },
    { type = "laser" },
    { type = "laser" },
    { type = "laser", percent = 5 },
    { type = "laser", percent = 15 },
    { type = "laser", percent = 30 },
    { type = "laser", percent = 50 },
  },
  {
    { type = "fire" },
    { type = "fire" },
    { type = "fire", percent = 10 },
    { type = "fire", percent = 20 },
    { type = "fire", percent = 30 },
    { type = "fire", decrease = 2, percent = 40 },
    { type = "fire", decrease = 4, percent = 50 },
    { type = "fire", decrease = 6, percent = 75 },
  },
  {
    { type = "poison" },
    { type = "poison" },
    { type = "poison" },
    { type = "poison" },
    { type = "poison", percent = 5 },
    { type = "poison", percent = 10 },
    { type = "poison", decrease = 3, percent = 30 },
    { type = "poison", decrease = 5, percent = 50 },
  },
  {
    { type = "electric" },
    { type = "electric" },
    { type = "electric" },
    { type = "electric", percent = 5 },
    { type = "electric", decrease = 3, percent = 10 },
    { type = "electric", decrease = 5, percent = 20 },
    { type = "electric", decrease = 10, percent = 35 },
    { type = "electric", decrease = 15, percent = 50 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 4, percent = 25 },
    { type = "acid", decrease = 6, percent = 35 },
    { type = "acid", decrease = 8, percent = 50 },
    { type = "acid", decrease = 10, percent = 60 },
    { type = "acid", decrease = 14, percent = 70 },
    { type = "acid", decrease = 18, percent = 75 },
    { type = "acid", decrease = 25, percent = 85 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 25 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local spitter_resistances_up = {
  {
    { type = "physical" },
    { type = "physical" },
    { type = "physical", decrease = 4, percent = 15 },
    { type = "physical", decrease = 6, percent = 25 },
    { type = "physical", decrease = 10, percent = 35 },
    { type = "physical", decrease = 16, percent = 45 },
    { type = "physical", decrease = 20, percent = 60 },
    { type = "physical", decrease = 30, percent = 75 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 40 },
    { type = "bob-pierce", percent = 60 },
  },
  {
    { type = "explosion" },
    { type = "explosion", percent = 35 },
    { type = "explosion", percent = 70 },
    { type = "explosion", decrease = 5, percent = 80 },
    { type = "explosion", decrease = 10, percent = 83 },
    { type = "explosion", decrease = 15, percent = 87 },
    { type = "explosion", decrease = 20, percent = 90 },
    { type = "explosion", decrease = 25, percent = 95 },
  },
  {
    { type = "laser" },
    { type = "laser", percent = 10 },
    { type = "laser", percent = 20 },
    { type = "laser", decrease = 5, percent = 30 },
    { type = "laser", decrease = 10, percent = 40 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 20, percent = 60 },
    { type = "laser", decrease = 30, percent = 75 },
  },
  {
    { type = "fire" },
    { type = "fire", percent = 30 },
    { type = "fire", percent = 40 },
    { type = "fire", decrease = 2, percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "fire", decrease = 6, percent = 70 },
    { type = "fire", decrease = 8, percent = 80 },
    { type = "fire", decrease = 10, percent = 90 },
  },
  {
    { type = "poison" },
    { type = "poison", decrease = 5, percent = 40 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "poison", decrease = 15, percent = 60 },
    { type = "poison", decrease = 20, percent = 70 },
    { type = "poison", decrease = 25, percent = 80 },
    { type = "poison", decrease = 30, percent = 85 },
    { type = "poison", decrease = 35, percent = 90 },
  },
  {
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", decrease = 5, percent = 30 },
    { type = "electric", decrease = 10, percent = 40 },
    { type = "electric", decrease = 15, percent = 50 },
    { type = "electric", decrease = 20, percent = 60 },
    { type = "electric", decrease = 25, percent = 75 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "acid", decrease = 10, percent = 60 },
    { type = "acid", decrease = 15, percent = 70 },
    { type = "acid", decrease = 20, percent = 80 },
    { type = "acid", decrease = 25, percent = 85 },
    { type = "acid", decrease = 30, percent = 90 },
    { type = "acid", decrease = 35, percent = 95 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 25 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local spitter_resistances_upup = {
  {
    { type = "physical" },
    { type = "physical" },
    { type = "physical", decrease = 4, percent = 15 },
    { type = "physical", decrease = 6, percent = 25 },
    { type = "physical", decrease = 10, percent = 35 },
    { type = "physical", decrease = 16, percent = 45 },
    { type = "physical", decrease = 20, percent = 60 },
    { type = "physical", decrease = 30, percent = 75 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 40 },
    { type = "bob-pierce", percent = 60 },
  },
  {
    { type = "explosion", decrease = 5, percent = 65 },
    { type = "explosion", decrease = 10, percent = 70 },
    { type = "explosion", decrease = 20, percent = 75 },
    { type = "explosion", decrease = 30, percent = 80 },
    { type = "explosion", decrease = 40, percent = 85 },
    { type = "explosion", decrease = 60, percent = 89 },
    { type = "explosion", decrease = 80, percent = 92 },
    { type = "explosion", decrease = 100, percent = 95 },
  },
  {
    { type = "laser" },
    { type = "laser", percent = 10 },
    { type = "laser", percent = 20 },
    { type = "laser", decrease = 5, percent = 30 },
    { type = "laser", decrease = 10, percent = 40 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 20, percent = 60 },
    { type = "laser", decrease = 30, percent = 75 },
  },
  {
    { type = "fire", decrease = 2, percent = 60 },
    { type = "fire", decrease = 4, percent = 65 },
    { type = "fire", decrease = 6, percent = 70 },
    { type = "fire", decrease = 8, percent = 75 },
    { type = "fire", decrease = 10, percent = 80 },
    { type = "fire", decrease = 12, percent = 85 },
    { type = "fire", decrease = 16, percent = 90 },
    { type = "fire", decrease = 20, percent = 95 },
  },
  {
    { type = "poison" },
    { type = "poison", decrease = 5, percent = 40 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "poison", decrease = 15, percent = 60 },
    { type = "poison", decrease = 20, percent = 70 },
    { type = "poison", decrease = 25, percent = 80 },
    { type = "poison", decrease = 30, percent = 85 },
    { type = "poison", decrease = 35, percent = 90 },
  },
  {
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", decrease = 5, percent = 30 },
    { type = "electric", decrease = 10, percent = 40 },
    { type = "electric", decrease = 15, percent = 50 },
    { type = "electric", decrease = 20, percent = 60 },
    { type = "electric", decrease = 25, percent = 75 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "acid", decrease = 10, percent = 60 },
    { type = "acid", decrease = 15, percent = 70 },
    { type = "acid", decrease = 20, percent = 80 },
    { type = "acid", decrease = 25, percent = 85 },
    { type = "acid", decrease = 30, percent = 90 },
    { type = "acid", decrease = 35, percent = 95 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 25 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local spitter_resistances_down = {
  {
    { type = "physical" },
    { type = "physical" },
    { type = "physical", percent = 5 },
    { type = "physical", decrease = 2, percent = 10 },
    { type = "physical", decrease = 4, percent = 15 },
    { type = "physical", decrease = 6, percent = 20 },
    { type = "physical", decrease = 8, percent = 30 },
    { type = "physical", decrease = 10, percent = 40 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 3 },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
  },
  {
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 30 },
    { type = "explosion", percent = 40 },
  },
  {
    { type = "laser", percent = -50 },
    { type = "laser", percent = -45 },
    { type = "laser", percent = -40 },
    { type = "laser", percent = -30 },
    { type = "laser", percent = -20 },
    { type = "laser", percent = -10 },
    { type = "laser" },
    { type = "laser", percent = 10 },
  },
  {
    { type = "fire", percent = -60 },
    { type = "fire", percent = -55 },
    { type = "fire", percent = -50 },
    { type = "fire", percent = -40 },
    { type = "fire", percent = -30 },
    { type = "fire", percent = -20 },
    { type = "fire", percent = -10 },
    { type = "fire" },
  },
  {
    { type = "poison", percent = -60 },
    { type = "poison", percent = -55 },
    { type = "poison", percent = -50 },
    { type = "poison", percent = -40 },
    { type = "poison", percent = -30 },
    { type = "poison", percent = -20 },
    { type = "poison", percent = -10 },
    { type = "poison" },
  },
  {
    { type = "electric", percent = -50 },
    { type = "electric", percent = -40 },
    { type = "electric", percent = -30 },
    { type = "electric", percent = -20 },
    { type = "electric", percent = -10 },
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
  },
  {
    { type = "acid", percent = -30 },
    { type = "acid", percent = -20 },
    { type = "acid", percent = -10 },
    { type = "acid" },
    { type = "acid", percent = 10 },
    { type = "acid", percent = 20 },
    { type = "acid", percent = 30 },
    { type = "acid", percent = 40 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local spitter_stats = {
  {
    max_health = 10,
    healing_per_tick = 0.01,
    movement_speed = 0.185,
    scale = 0.5,
    distance_per_frame = 0.04,
    absorptions_to_join_attack = { pollution = 4 },
    dying_sound = sounds.spitter_dying(0.45),
    dying_explosion = "small-spitter-die",
    working_sound = sounds.spitter_calls(0.1, 0.44),
    walking_sound = sounds.spitter_walk(0, 0.3),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start", 4, 0.27),
  },

  {
    max_health = 50,
    healing_per_tick = 0.01,
    movement_speed = 0.165,
    scale = 0.7,
    distance_per_frame = 0.055,
    absorptions_to_join_attack = { pollution = 12 },
    dying_sound = sounds.spitter_dying_mid(0.65),
    dying_explosion = "medium-spitter-die",
    working_sound = sounds.spitter_calls_med(0.2, 0.53),
    walking_sound = sounds.spitter_walk(0.1, 0.4),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-mid", 5, 0.33),
  },

  {
    max_health = 150,
    healing_per_tick = 0.02,
    movement_speed = 0.17,
    scale = 1,
    distance_per_frame = 0.07,
    absorptions_to_join_attack = { pollution = 30 },
    spawning_time_modifier = 3,
    dying_sound = sounds.spitter_dying_big(0.67),
    dying_explosion = "medium-spitter-die",
    working_sound = sounds.spitter_calls_med(0.24, 0.57),
    walking_sound = sounds.spitter_walk_big(0.2, 0.5),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-mid", 5, 0.38),
  },

  {
    max_health = 500,
    healing_per_tick = 0.04,
    movement_speed = 0.177,
    scale = 1.25,
    distance_per_frame = 0.088,
    absorptions_to_join_attack = { pollution = 35 },
    spawning_time_modifier = 4,
    dying_sound = sounds.spitter_dying_big(0.71),
    dying_explosion = "big-spitter-die",
    working_sound = sounds.spitter_calls_big(0.36, 0.56),
    walking_sound = sounds.spitter_walk_big(0.23, 0.53),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-big", 10, 0.49),
  },

  {
    max_health = 1600,
    healing_per_tick = 0.1,
    movement_speed = 0.185,
    scale = 1.5,
    distance_per_frame = 0.105,
    absorptions_to_join_attack = { pollution = 40 },
    spawning_time_modifier = 5,
    dying_sound = sounds.spitter_dying_big(0.75),
    dying_explosion = "big-spitter-die",
    working_sound = sounds.spitter_calls_big(0.4, 0.6),
    walking_sound = sounds.spitter_walk_big(0.26, 0.56),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-big", 10, 0.53),
  },

  {
    max_health = 6000,
    healing_per_tick = 0.2,
    movement_speed = 0.19,
    scale = 1.75,
    distance_per_frame = 0.123,
    absorptions_to_join_attack = { pollution = 45 },
    spawning_time_modifier = 6,
    dying_sound = sounds.spitter_dying_behemoth(0.70),
    dying_explosion = "big-spitter-die",
    working_sound = sounds.spitter_calls_big(0.45, 0.65),
    walking_sound = sounds.spitter_walk_big(0.3, 0.6),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-big", 10, 0.57),
  },

  {
    max_health = 16000,
    healing_per_tick = 0.3,
    movement_speed = 0.2,
    scale = 2,
    distance_per_frame = 0.14,
    absorptions_to_join_attack = { pollution = 50 },
    spawning_time_modifier = 8,
    dying_sound = sounds.spitter_dying_behemoth(0.77),
    dying_explosion = "behemoth-spitter-die",
    working_sound = sounds.spitter_calls_big(0.5, 0.7),
    walking_sound = sounds.spitter_walk_big(0.33, 0.63),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-behemoth", 8, 0.47),
    attacking_sound_end = sound_variations("__base__/sound/creatures/spitter-spit-end-big", 5, 0.46),
  },

  {
    max_health = 60000,
    healing_per_tick = 5,
    movement_speed = 0.22,
    scale = 2.5,
    distance_per_frame = 0.175,
    absorptions_to_join_attack = { pollution = 65 },
    spawning_time_modifier = 12,
    dying_sound = sounds.spitter_dying_behemoth(0.85),
    dying_explosion = "behemoth-spitter-die",
    working_sound = sounds.spitter_calls_big(0.55, 0.75),
    walking_sound = sounds.spitter_walk_big(0.38, 0.68),
    attacking_sound = sound_variations("__base__/sound/creatures/spitter-spit-start-behemoth", 8, 0.53),
    attacking_sound_end = sound_variations("__base__/sound/creatures/spitter-spit-end-big", 5, 0.5),
  },
}

if health_increase == true then
  spitter_stats[4].max_health = 1800
  spitter_stats[5].max_health = 6000
  spitter_stats[6].max_health = 18000
  spitter_stats[7].max_health = 60000
  spitter_stats[8].max_health = 240000
end

function bobmods.enemies.new_spitter(inputs)
  local tier = inputs.tier or 3
  local final_scale = inputs.scale or spitter_stats[tier].scale
  local set_resistances = {
    inputs.physical_resist or "normal",
    inputs.pierce_resist or "normal",
    inputs.explosion_resist or "normal",
    inputs.laser_resist or "normal",
    inputs.fire_resist or "normal",
    inputs.poison_resist or "normal",
    inputs.electric_resist or "normal",
    inputs.acid_resist or "normal",
    inputs.impact_resist or "normal",
    inputs.plasma_resist or "normal",
  }
  local new_resistances = {}
  local x = 0
  for i = 1, 10 do
    if set_resistances[i] == "high" then
      if spitter_resistances_up[i][tier].decrease or spitter_resistances_up[i][tier].percent then
        x = x + 1
        new_resistances[x] = spitter_resistances_up[i][tier]
      end
    elseif set_resistances[i] == "very-high" then
      if spitter_resistances_upup[i][tier].decrease or spitter_resistances_upup[i][tier].percent then
        x = x + 1
        new_resistances[x] = spitter_resistances_upup[i][tier]
      end
    elseif set_resistances[i] == "low" then
      if spitter_resistances_down[i][tier].decrease or spitter_resistances_down[i][tier].percent then
        x = x + 1
        new_resistances[x] = spitter_resistances_down[i][tier]
      end
    else
      if spitter_resistances[i][tier].decrease or spitter_resistances[i][tier].percent then
        x = x + 1
        new_resistances[x] = spitter_resistances[i][tier]
      end
    end
  end
  local spitter_prototype = {
    type = "unit",
    name = inputs.name,
    order = inputs.order,
    localised_description = inputs.localised_description,
    factoriopedia_description = inputs.factoriopedia_description,
    flags = inputs.flags
      or { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
    max_health = inputs.health or spitter_stats[tier].max_health,
    healing_per_tick = inputs.healing_per_tick or spitter_stats[tier].healing_per_tick,
    attack_parameters = inputs.attack_parameters
      or bobmods.enemies.spitter_attack_parameters(inputs, tier, final_scale),
    resistances = inputs.resistances or new_resistances,
    impact_category = inputs.impact_category or "organic",
    trigger_target_mask = inputs.trigger_target_mask,
    subgroup = "enemies",
    factoriopedia_simulation = inputs.factoriopedia_simulation,
    spawning_time_modifier = inputs.spawning_time_modifier or spitter_stats[tier].spawning_time_modifier,
    collision_box = { { -0.4 * final_scale, -0.4 * final_scale }, { 0.4 * final_scale, 0.4 * final_scale } },
    selection_box = { { -0.7 * final_scale, -1.5 * final_scale }, { 0.7 * final_scale, 0.3 * final_scale } },
    sticker_box = { { -0.6 * final_scale, -0.8 * final_scale }, { 0.6 * final_scale, 0 } },
    damaged_trigger_effect = inputs.damaged_trigger_effect or hit_effects.biter(),
    distraction_cooldown = inputs.distraction_cooldown or 300,
    min_pursue_time = inputs.min_pursue_time or 600,
    max_pursue_distance = inputs.max_pursue_distance or 65,
    alternative_attacking_frame_sequence = spitter_alternative_attacking_animation_sequence,
    vision_distance = inputs.vision_distance or 30,
    movement_speed = inputs.movement_speed or spitter_stats[tier].movement_speed,
    distance_per_frame = inputs.distance_per_frame or spitter_stats[tier].distance_per_frame,
    absorptions_to_join_attack = inputs.absorptions_to_join_attack or spitter_stats[tier].absorptions_to_join_attack,
    corpse = inputs.name .. "-corpse",
    dying_explosion = inputs.dying_explosion or spitter_stats[tier].dying_explosion,
    dying_trigger_effect = inputs.dying_trigger_effect,
    loot = {},
    working_sound = spitter_stats[tier].working_sound,
    dying_sound = spitter_stats[tier].dying_sound,
    walking_sound = spitter_stats[tier].walking_sound,
    run_animation = spitterrunanimation(final_scale, inputs.tint, inputs.tint2),
    running_sound_animation_positions = { 2 },
    ai_settings = inputs.ai_settings or default_ai,
    water_reflection = spitter_water_reflection(final_scale),
  }
  if inputs.icons then
    spitter_prototype.icons = inputs.icons
  elseif inputs.icon then
    spitter_prototype.icon = inputs.icon
    spitter_prototype.icon_size = inputs.icon_size or 64
  else
    spitter_prototype.icon = "__base__/graphics/icons/big-spitter.png"
  end

  local corpse_prototype = add_spitter_die_animation(final_scale, inputs.tint, inputs.tint2, {
    type = "corpse",
    name = inputs.name .. "-corpse",
    localised_name = { "entity-name.bob-enemies-corpse" },
    icon = "__base__/graphics/icons/big-spitter-corpse.png",
    selectable_in_game = false,
    hidden_in_factoriopedia = true,
    selection_box = { { -1, -1 }, { 1, 1 } },
    subgroup = "corpses",
    order = "c[corpse]-" .. inputs.order,
    flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map" },
  })

  if not inputs.no_acid_stream == true then
    bobmods.enemies.acid_stream(inputs, final_scale)
  end

  data:extend({ spitter_prototype, corpse_prototype })
end

bobmods.enemies.spit_begin_sound_big = {
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-1.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-2.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-3.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-4.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-5.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-6.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-7.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-8.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-9.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-big-10.ogg",
    volume = 0.47,
  },
}

bobmods.enemies.spit_begin_sound_behemoth = {
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-1.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-2.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-3.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-4.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-5.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-6.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-7.ogg",
    volume = 0.47,
  },
  {
    filename = "__base__/sound/creatures/spitter-spit-start-behemoth-8.ogg",
    volume = 0.47,
  },
}

bobmods.enemies.spit_target_sound = {
  type = "play-sound",
  sound = {
    {
      filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
      volume = 0.65,
    },
    {
      filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
      volume = 0.65,
    },
    {
      filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
      volume = 0.6,
    },
    {
      filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
      volume = 0.6,
    },
  },
}

function bobmods.enemies.spitter_attack_parameters(inputs, tier, scale_value)
  local params = {
    type = "stream",
    ammo_category = "biological",
    cooldown = inputs.attack_cooldown or 100,
    cooldown_deviation = inputs.attack_cooldown_deviation or 0.15,
    range = inputs.attack_range or 15,
    range_mode = "bounding-box-to-bounding-box",
    min_attack_distance = inputs.attack_min_attack_distance or 10,
    damage_modifier = inputs.attack_damage_modifier,
    warmup = inputs.attack_warmup or 30,
    projectile_creation_parameters = inputs.attack_projectile_creation_parameters
      or spitter_shoot_shiftings(scale_value, scale_value * scale_spitter_stream),
    use_shooter_direction = true,
    lead_target_for_projectile_speed = inputs.attack_lead_target_for_projectile_speed or 0.2 * 0.75 * 1.5 * 1.5,
    ammo_type = inputs.attack_ammo_type or {
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = inputs.attack_stream_name or inputs.name .. "-acid-stream",
        },
      },
    },
    cyclic_sound = {
      begin_sound = {
        category = "enemy",
        variations = inputs.attack_begin_sound or spitter_stats[tier].attacking_sound,
        aggregation = { max_count = 3, remove = true, count_already_playing = true },
      },
    },
    animation = spitterattackanimation(scale_value, inputs.tint, inputs.tint2),
  }
  if inputs.attack_end_sound or spitter_stats[tier].attacking_sound_end then
    params.cyclic_sound.end_sound = {
      category = "enemy",
      variations = inputs.attack_end_sound or spitter_stats[tier].attacking_sound_end,
      aggregation = { max_count = 3, remove = true, count_already_playing = true },
    }
  end

  return params
end

function basic_stream_attack(inputs, scale_value)
  local splash_fire_show_in_tooltip
  if inputs.splash_fire_do_not_show_in_tooltip == true then
    splash_fire_show_in_tooltip = false
  else
    splash_fire_show_in_tooltip = true
  end
  local params = {
    {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "water-splash",
            tile_collision_mask = { layers = { ground_tile = true } },
          },
        },
      },
    },
    {
      type = "area",
      radius = inputs.attack_spit_radius or 1,
      force = inputs.attack_force_target or "enemy",
      ignore_collision_condition = true,
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = inputs.attack_damage or 1, type = inputs.attack_damage_type or "acid" },
          },
        },
      },
    },
  }

  if not inputs.attack_no_sound == true then
    local attack_final_sound = {
      type = "play-sound",
      sound = inputs.attack_sound or {
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
    }
    table.insert(params[1].action_delivery.target_effects, attack_final_sound)
  end

  if inputs.splash_fire_name then
    table.insert(params[1].action_delivery.target_effects, {
      type = "create-fire",
      entity_name = inputs.splash_fire_name,
      tile_collision_mask = { layers = { water_tile = true } },
      show_in_tooltip = splash_fire_show_in_tooltip,
    })
    if not inputs.skip_generate_fire == true then
      generate_fire_prototype(inputs, scale_value)
    end
  end
  if inputs.sticker_name then
    table.insert(params[2].action_delivery.target_effects, 1, {
      type = "create-sticker",
      sticker = inputs.sticker_name,
      show_in_tooltip = inputs.show_sticker_in_attack or false,
    })
    generate_sticker_prototype(inputs, inputs.sticker_name)
  end

  return params
end

function bobmods.enemies.acid_stream(inputs, scale_value)
  data:extend({
    {
      type = "stream",
      name = inputs.attack_stream_name or inputs.name .. "-acid-stream",
      flags = { "not-on-map" },
      hidden = true,
      particle_buffer_size = 90,
      particle_spawn_interval = inputs.attack_particle_spawn_interval or 1,
      particle_spawn_timeout = inputs.attack_particle_spawn_timeout or 6,
      particle_vertical_acceleration = 0.005 * 0.60 * 1.5,
      particle_horizontal_speed = 0.2 * 0.75 * 1.5 * 1.5,
      particle_horizontal_speed_deviation = 0.005 * 0.70,
      particle_start_alpha = 0.5,
      particle_end_alpha = 1,
      particle_alpha_per_part = 0.8,
      particle_scale_per_part = 0.8,
      particle_loop_frame_count = 15,
      particle_fade_out_duration = 2,
      particle_loop_exit_threshold = 0.25,
      special_neutral_target_damage = {
        amount = inputs.attack_special_neutral_target_damage or 1,
        type = inputs.attack_damage_type or "acid",
      },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/fight/projectile-acid-burn-loop.ogg",
            volume = 0.4,
          },
        },
        max_sounds_per_prototype = 3,
      },
      initial_action = inputs.attack_action or basic_stream_attack(inputs, scale_value),
      particle = {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-head.png",
        draw_as_glow = true,
        line_length = 5,
        width = 42,
        height = 164,
        frame_count = 15,
        shift = util.mul_shift(util.by_pixel(-2, 31), scale_value),
        tint = inputs.attack_tint or stream_tint,
        priority = "high",
        scale = 0.5 * scale_value,
        animation_speed = 1,
      },
      spine_animation = {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-tail.png",
        draw_as_glow = true,
        line_length = 5,
        width = 132,
        height = 20,
        frame_count = 15,
        shift = util.mul_shift(util.by_pixel(0, -1), scale_value),
        tint = inputs.attack_tint or stream_tint,
        priority = "high",
        scale = 0.5 * scale_value,
        animation_speed = 1,
      },
      shadow = {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png",
        line_length = 15,
        width = 42,
        height = 164,
        frame_count = 15,
        shift = util.mul_shift(util.by_pixel(-2, 31), scale_value),
        draw_as_shadow = true,
        priority = "high",
        scale = 0.5 * scale_value,
        animation_speed = 1,
      },
      oriented_particle = true,
      shadow_scale_enabled = true,
    },
  })
end

function generate_fire_prototype(inputs, scale_value)
  local fire_final_scale = inputs.fire_scale or scale_value
  local fire_final_tint = inputs.fire_tint or splash_tint
  local final_fire_structure_damage_per_tick
  if inputs.fire_structure_damage_per_tick then
    final_fire_structure_damage_per_tick = inputs.fire_structure_damage_per_tick
  elseif inputs.fire_damage_per_tick then
    final_fire_structure_damage_per_tick = inputs.fire_damage_per_tick * 0.1
  else
    final_fire_structure_damage_per_tick = 0.01
  end

  local fire_prototype = {
    type = "fire",
    name = inputs.splash_fire_name,
    localised_name = inputs.splash_localised_name or { "entity-name.acid-splash" },
    flags = { "placeable-off-grid", "not-on-map" },
    hidden = true,
    damage_per_tick = { amount = 0, type = "acid" },
    maximum_damage_multiplier = inputs.fire_maximum_damage_multiplier or 3,
    damage_multiplier_increase_per_added_fuel = inputs.fire_damage_multiplier_increase_per_added_fuel or 1,
    damage_multiplier_decrease_per_tick = inputs.fire_damage_multiplier_decrease_per_tick or 0.005,

    uses_alternative_behavior = inputs.fire_uses_alternative_behavior or true,
    limit_overlapping_particles = true,
    initial_render_layer = "object",
    render_layer = "lower-object-above-shadow",
    secondary_render_layer = "higher-object-above",
    secondary_picture_fade_out_start = 30,
    secondary_picture_fade_out_duration = 60,

    spread_delay = 300,
    spread_delay_deviation = 180,
    maximum_spread_count = 100,

    particle_alpha = 0.6,
    particle_alpha_blend_duration = 60 * 5,

    add_fuel_cooldown = inputs.fire_add_fuel_cooldown or 10,
    fade_in_duration = 1,
    fade_out_duration = 30,

    initial_lifetime = inputs.fire_initial_lifetime or 1920,
    lifetime_increase_by = inputs.fire_lifetime_increase_by or 0,
    lifetime_increase_cooldown = inputs.fire_lifetime_increase_cooldown or 4,
    maximum_lifetime = inputs.fire_maximum_lifetime or 1800,
    delay_between_initial_flames = 10,
    initial_flame_count = 1,
    burnt_patch_lifetime = 0,

    light = inputs.fire_light,
    light_size_modifier_maximum = inputs.fire_light_size_modifier_maximum,
    light_size_modifier_per_flame = inputs.fire_light_size_modifier_per_flame,

    on_damage_tick_effect = {
      {
        type = "direct",
        force = inputs.fire_force_target or "enemy",
        ignore_collision_condition = true,
        trigger_target_mask = inputs.fire_trigger_target_mask or { "ground-unit" },
        filter_enabled = inputs.fire_filter_enabled or true,
        action_delivery = inputs.fire_action_delivery
          or {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = inputs.fire_damage_per_tick or 0.1, type = inputs.fire_damage_type or "acid" },
                apply_damage_to_trees = false,
              },
            },
          },
      },
      {
        type = "direct",
        force = inputs.fire_force_target or "enemy",
        ignore_collision_condition = true,
        trigger_target_mask = inputs.fire_trigger_target_mask2 or { "ground-structure" },
        filter_enabled = inputs.fire_filter_enabled or true,
        action_delivery = inputs.fire_action_delivery
          or {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = final_fire_structure_damage_per_tick, type = inputs.fire_damage_type or "acid" },
                show_in_tooltip = false,
              },
            },
          },
      },
    },

    pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), fire_final_scale),
            tint = fire_final_tint,
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), fire_final_scale),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), fire_final_scale),
            tint = fire_final_tint,
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), fire_final_scale),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), fire_final_scale),
            tint = fire_final_tint,
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), fire_final_scale),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), fire_final_scale),
            tint = fire_final_tint,
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), fire_final_scale),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale,
          },
        },
      },
    },

    secondary_pictures = {
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
            line_length = 8,
            width = 210,
            height = 224,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(-12, -8), fire_final_scale * ground_patch_scale_modifier),
            tint = util.multiply_color(fire_final_tint, patch_opacity),
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
            line_length = 8,
            width = 266,
            height = 188,
            frame_count = 26,
            shift = util.mul_shift(util.by_pixel(2, 2), fire_final_scale * ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
            line_length = 8,
            width = 174,
            height = 150,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(-9, -17), fire_final_scale * ground_patch_scale_modifier),
            tint = util.multiply_color(fire_final_tint, patch_opacity),
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
            line_length = 8,
            width = 238,
            height = 266,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(6, 29), fire_final_scale * ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
            line_length = 8,
            width = 236,
            height = 208,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(22, -16), fire_final_scale * ground_patch_scale_modifier),
            tint = util.multiply_color(fire_final_tint, patch_opacity),
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
            line_length = 8,
            width = 214,
            height = 140,
            frame_count = 29,
            shift = util.mul_shift(util.by_pixel(17, 2), fire_final_scale * ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
        },
      },
      {
        layers = {
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
            line_length = 8,
            width = 252,
            height = 154,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(17, -19), fire_final_scale * ground_patch_scale_modifier),
            tint = util.multiply_color(fire_final_tint, patch_opacity),
            draw_as_glow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
          {
            filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
            line_length = 8,
            width = 248,
            height = 160,
            frame_count = 24,
            shift = util.mul_shift(util.by_pixel(18, -16), fire_final_scale * ground_patch_scale_modifier),
            draw_as_shadow = true,
            scale = 0.5 * fire_final_scale * ground_patch_scale_modifier,
          },
        },
      },
    },
  }

  if (inputs.fire_sticker_name or inputs.sticker_name) and (not inputs.no_sticker_from_fire == true) then
    table.insert(fire_prototype.on_damage_tick_effect[1].action_delivery.target_effects, 1, {
      type = "create-sticker",
      sticker = inputs.fire_sticker_name or inputs.sticker_name,
      show_in_tooltip = inputs.show_sticker_in_fire or true,
    })
    generate_sticker_prototype(inputs, inputs.fire_sticker_name or inputs.sticker_name)
  end

  data:extend({ fire_prototype })
end

function generate_sticker_prototype(inputs, final_sticker_name)
  if not data.raw.sticker[final_sticker_name] then
    local sticker_prototype = {
      type = "sticker",
      name = final_sticker_name,
      flags = { "not-on-map" },
      hidden = true,
      animation = inputs.sticker_animation or {
        filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
        draw_as_glow = true,
        line_length = 5,
        width = 30,
        height = 34,
        frame_count = 50,
        animation_speed = 0.5,
        tint = inputs.sticker_tint or { r = 0.714, g = 0.669, b = 0.291, a = 0.745 },
        shift = util.by_pixel(1.5, 0),
        scale = 0.5,
      },
      duration_in_ticks = inputs.sticker_duration_in_ticks or 120,
      target_movement_modifier_from = inputs.sticker_slow_player_movement_from or 1,
      target_movement_modifier_to = inputs.sticker_slow_player_movement_to or 1,
      vehicle_speed_modifier_from = inputs.sticker_slow_vehicle_speed_from or 1,
      vehicle_speed_modifier_to = inputs.sticker_slow_vehicle_speed_to or 1,
      vehicle_friction_modifier_from = inputs.sticker_slow_vehicle_friction_from or 1,
      vehicle_friction_modifier_to = inputs.sticker_slow_vehicle_friction_to or 1,
      damage_interval = inputs.sticker_damage_interval,
      damage_per_tick = inputs.sticker_damage_per_tick,
    }

    data:extend({ sticker_prototype })
  end
end

local worm_resistances = {
  {
    { type = "physical" },
    { type = "physical", decrease = 5 },
    { type = "physical", decrease = 10, percent = 10 },
    { type = "physical", decrease = 15, percent = 20 },
    { type = "physical", decrease = 20, percent = 30 },
    { type = "physical", decrease = 25, percent = 40 },
    { type = "physical", decrease = 30, percent = 50 },
    { type = "physical", decrease = 35, percent = 60 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 5 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 30 },
  },
  {
    { type = "explosion" },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 30 },
    { type = "explosion", percent = 40 },
    { type = "explosion", percent = 50 },
    { type = "explosion", percent = 60 },
    { type = "explosion", percent = 70 },
  },
  {
    { type = "laser" },
    { type = "laser", percent = 20 },
    { type = "laser", percent = 30 },
    { type = "laser", percent = 40 },
    { type = "laser", percent = 50 },
    { type = "laser", percent = 60 },
    { type = "laser", percent = 70 },
    { type = "laser", percent = 80 },
  },
  {
    { type = "fire" },
    { type = "fire", percent = 10 },
    { type = "fire", percent = 20 },
    { type = "fire", percent = 30 },
    { type = "fire", decrease = 2, percent = 40 },
    { type = "fire", decrease = 4, percent = 50 },
    { type = "fire", decrease = 6, percent = 75 },
    { type = "fire", decrease = 8, percent = 85 },
  },
  {
    { type = "poison" },
    { type = "poison" },
    { type = "poison" },
    { type = "poison" },
    { type = "poison", percent = 5 },
    { type = "poison", percent = 10 },
    { type = "poison", decrease = 3, percent = 30 },
    { type = "poison", decrease = 5, percent = 50 },
  },
  {
    { type = "electric" },
    { type = "electric" },
    { type = "electric" },
    { type = "electric", decrease = 5, percent = 15 },
    { type = "electric", decrease = 8, percent = 20 },
    { type = "electric", decrease = 12, percent = 30 },
    { type = "electric", decrease = 17, percent = 45 },
    { type = "electric", decrease = 25, percent = 60 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 4, percent = 25 },
    { type = "acid", decrease = 6, percent = 35 },
    { type = "acid", decrease = 8, percent = 50 },
    { type = "acid", decrease = 10, percent = 60 },
    { type = "acid", decrease = 14, percent = 70 },
    { type = "acid", decrease = 18, percent = 75 },
    { type = "acid", decrease = 25, percent = 85 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", decrease = 20, percent = 10 },
    { type = "impact", decrease = 30, percent = 20 },
    { type = "impact", decrease = 40, percent = 30 },
    { type = "impact", decrease = 50, percent = 40 },
    { type = "impact", decrease = 100, percent = 50 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local worm_resistances_up = {
  {
    { type = "physical" },
    { type = "physical", decrease = 8, percent = 5 },
    { type = "physical", decrease = 12, percent = 15 },
    { type = "physical", decrease = 18, percent = 25 },
    { type = "physical", decrease = 24, percent = 35 },
    { type = "physical", decrease = 32, percent = 45 },
    { type = "physical", decrease = 46, percent = 60 },
    { type = "physical", decrease = 60, percent = 75 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 40 },
    { type = "bob-pierce", percent = 60 },
  },
  {
    { type = "explosion" },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 35 },
    { type = "explosion", decrease = 10, percent = 45 },
    { type = "explosion", decrease = 20, percent = 55 },
    { type = "explosion", decrease = 25, percent = 65 },
    { type = "explosion", decrease = 30, percent = 75 },
    { type = "explosion", decrease = 35, percent = 85 },
  },
  {
    { type = "laser" },
    { type = "laser", decrease = 5, percent = 30 },
    { type = "laser", decrease = 10, percent = 40 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 20, percent = 60 },
    { type = "laser", decrease = 25, percent = 70 },
    { type = "laser", decrease = 30, percent = 80 },
    { type = "laser", decrease = 40, percent = 95 },
  },
  {
    { type = "fire" },
    { type = "fire", decrease = 2, percent = 20 },
    { type = "fire", decrease = 3, percent = 30 },
    { type = "fire", decrease = 4, percent = 40 },
    { type = "fire", decrease = 5, percent = 50 },
    { type = "fire", decrease = 6, percent = 60 },
    { type = "fire", decrease = 8, percent = 80 },
    { type = "fire", decrease = 10, percent = 90 },
  },
  {
    { type = "poison" },
    { type = "poison", decrease = 5, percent = 40 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "poison", decrease = 15, percent = 60 },
    { type = "poison", decrease = 20, percent = 70 },
    { type = "poison", decrease = 25, percent = 80 },
    { type = "poison", decrease = 30, percent = 85 },
    { type = "poison", decrease = 35, percent = 90 },
  },
  {
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", decrease = 5, percent = 30 },
    { type = "electric", decrease = 10, percent = 40 },
    { type = "electric", decrease = 15, percent = 50 },
    { type = "electric", decrease = 20, percent = 60 },
    { type = "electric", decrease = 25, percent = 75 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "acid", decrease = 10, percent = 60 },
    { type = "acid", decrease = 15, percent = 70 },
    { type = "acid", decrease = 20, percent = 80 },
    { type = "acid", decrease = 25, percent = 85 },
    { type = "acid", decrease = 30, percent = 90 },
    { type = "acid", decrease = 35, percent = 95 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 50 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local worm_resistances_upup = {
  {
    { type = "physical" },
    { type = "physical", decrease = 5, percent = 35 },
    { type = "physical", decrease = 9, percent = 45 },
    { type = "physical", decrease = 12, percent = 55 },
    { type = "physical", decrease = 14, percent = 65 },
    { type = "physical", decrease = 18, percent = 75 },
    { type = "physical", decrease = 24, percent = 90 },
    { type = "physical", decrease = 36, percent = 95 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
    { type = "bob-pierce", percent = 40 },
    { type = "bob-pierce", percent = 60 },
    { type = "bob-pierce", percent = 75 },
  },
  {
    { type = "explosion", percent = 60 },
    { type = "explosion", decrease = 20, percent = 65 },
    { type = "explosion", decrease = 30, percent = 70 },
    { type = "explosion", decrease = 40, percent = 75 },
    { type = "explosion", decrease = 50, percent = 80 },
    { type = "explosion", decrease = 60, percent = 85 },
    { type = "explosion", decrease = 80, percent = 90 },
    { type = "explosion", decrease = 100, percent = 95 },
  },
  {
    { type = "laser" },
    { type = "laser", decrease = 4, percent = 30 },
    { type = "laser", decrease = 8, percent = 40 },
    { type = "laser", decrease = 15, percent = 50 },
    { type = "laser", decrease = 22, percent = 60 },
    { type = "laser", decrease = 30, percent = 70 },
    { type = "laser", decrease = 40, percent = 80 },
    { type = "laser", decrease = 50, percent = 90 },
  },
  {
    { type = "fire", decrease = 2, percent = 60 },
    { type = "fire", decrease = 4, percent = 65 },
    { type = "fire", decrease = 6, percent = 70 },
    { type = "fire", decrease = 8, percent = 75 },
    { type = "fire", decrease = 10, percent = 80 },
    { type = "fire", decrease = 12, percent = 85 },
    { type = "fire", decrease = 16, percent = 90 },
    { type = "fire", decrease = 20, percent = 95 },
  },
  {
    { type = "poison" },
    { type = "poison", percent = 40 },
    { type = "poison", percent = 50 },
    { type = "poison", decrease = 5, percent = 60 },
    { type = "poison", decrease = 10, percent = 70 },
    { type = "poison", decrease = 15, percent = 80 },
    { type = "poison", decrease = 20, percent = 85 },
    { type = "poison", decrease = 25, percent = 90 },
  },
  {
    { type = "electric" },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
    { type = "electric", decrease = 5, percent = 30 },
    { type = "electric", decrease = 10, percent = 40 },
    { type = "electric", decrease = 15, percent = 50 },
    { type = "electric", decrease = 20, percent = 60 },
    { type = "electric", decrease = 25, percent = 75 },
  },
  {
    { type = "acid" },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "acid", decrease = 10, percent = 60 },
    { type = "acid", decrease = 15, percent = 70 },
    { type = "acid", decrease = 20, percent = 80 },
    { type = "acid", decrease = 25, percent = 85 },
    { type = "acid", decrease = 30, percent = 90 },
    { type = "acid", decrease = 35, percent = 95 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact", percent = 5 },
    { type = "impact", percent = 10 },
    { type = "impact", percent = 50 },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local worm_resistances_down = {
  {
    { type = "physical" },
    { type = "physical", decrease = 2 },
    { type = "physical", decrease = 5, percent = 5 },
    { type = "physical", decrease = 8, percent = 10 },
    { type = "physical", decrease = 10, percent = 15 },
    { type = "physical", decrease = 13, percent = 20 },
    { type = "physical", decrease = 16, percent = 30 },
    { type = "physical", decrease = 20, percent = 40 },
  },
  {
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce" },
    { type = "bob-pierce", percent = 3 },
    { type = "bob-pierce", percent = 10 },
    { type = "bob-pierce", percent = 20 },
  },
  {
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion" },
    { type = "explosion", percent = 10 },
    { type = "explosion", percent = 20 },
    { type = "explosion", percent = 30 },
  },
  {
    { type = "laser", percent = -50 },
    { type = "laser", percent = -45 },
    { type = "laser", percent = -40 },
    { type = "laser", percent = -30 },
    { type = "laser", percent = -20 },
    { type = "laser", percent = -10 },
    { type = "laser" },
    { type = "laser", percent = 10 },
  },
  {
    { type = "fire", percent = -30 },
    { type = "fire", percent = -20 },
    { type = "fire", percent = -10 },
    { type = "fire" },
    { type = "fire", percent = 10 },
    { type = "fire", decrease = 2, percent = 20 },
    { type = "fire", decrease = 3, percent = 30 },
    { type = "fire", decrease = 4, percent = 40 },
  },
  {
    { type = "poison", percent = -20 },
    { type = "poison", percent = -15 },
    { type = "poison", percent = -10 },
    { type = "poison", percent = -5 },
    { type = "poison" },
    { type = "poison", percent = 5 },
    { type = "poison", percent = 10 },
    { type = "poison", percent = 20 },
  },
  {
    { type = "electric", percent = -20 },
    { type = "electric", percent = -15 },
    { type = "electric", percent = -10 },
    { type = "electric", percent = -5 },
    { type = "electric" },
    { type = "electric", percent = 5 },
    { type = "electric", percent = 10 },
    { type = "electric", percent = 20 },
  },
  {
    { type = "acid", percent = -20 },
    { type = "acid", percent = -15 },
    { type = "acid", percent = -10 },
    { type = "acid", percent = -5 },
    { type = "acid" },
    { type = "acid", percent = 5 },
    { type = "acid", percent = 10 },
    { type = "acid", percent = 20 },
  },
  {
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
    { type = "impact" },
  },
  {
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
    { type = "bob-plasma" },
  },
}

local worm_stats = {
  {
    max_health = 200,
    healing_per_tick = 0.03,
    scale = 0.65,
    dying_explosion = "small-worm-die",
    prepare_range = 8,
    call_for_help_radius = 40,
    prepared_alternative_speed = 0.024,
    prepared_alternative_speed_secondary = 0.018,
    dying_sound = sounds.worm_dying_small(0.57),
    preparing_sound = sounds.worm_standup_small(0.6),
    prepared_sound = sounds.worm_breath(0.4, 0.6),
    prepared_alternative_sound = sounds.worm_roar_alternative(0.4, 0.6),
    starting_attack_sound = sounds.worm_roars(0.4, 0.6),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 0, spawn_max = 1, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 1, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 0, spawn_max_radius = 1 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 2,
        spawn_max = 4,
        spawn_min_radius = 1,
        spawn_max_radius = 2,
      },
    },
  },

  {
    max_health = 500,
    healing_per_tick = 0.03,
    scale = 0.83,
    dying_explosion = "medium-worm-die",
    prepare_range = 12,
    call_for_help_radius = 50,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying(0.65),
    preparing_sound = sounds.worm_standup_small(0.63),
    prepared_sound = sounds.worm_breath(0.6, 0.8),
    prepared_alternative_sound = sounds.worm_roar_alternative(0.4, 0.7),
    starting_attack_sound = sounds.worm_roars(0.4, 0.7),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 0, spawn_max = 1, spawn_min_radius = 1, spawn_max_radius = 3 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 3, spawn_min_radius = 0, spawn_max_radius = 3 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 2,
        spawn_max = 4,
        spawn_min_radius = 1,
        spawn_max_radius = 3,
      },
    },
  },

  {
    max_health = 1200,
    healing_per_tick = 0.06,
    scale = 1,
    dying_explosion = "medium-worm-die",
    prepare_range = 16,
    call_for_help_radius = 60,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying(0.68),
    preparing_sound = sounds.worm_standup(0.6),
    prepared_sound = sounds.worm_breath_big(0.6, 0.9),
    prepared_alternative_sound = sounds.worm_roar_alternative_big(0.4, 0.7),
    starting_attack_sound = sounds.worm_roars_big(0.4, 0.7),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 1, spawn_max = 1, spawn_min_radius = 1, spawn_max_radius = 3 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 3 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 3,
        spawn_max = 5,
        spawn_min_radius = 1,
        spawn_max_radius = 4,
      },
    },
  },

  {
    max_health = 2100,
    healing_per_tick = 0.12,
    scale = 1.1,
    dying_explosion = "big-worm-die",
    prepare_range = 20,
    call_for_help_radius = 70,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying_big(0.65),
    preparing_sound = sounds.worm_standup(0.63),
    prepared_sound = sounds.worm_breath_big(0.6, 0.9),
    prepared_alternative_sound = sounds.worm_roar_alternative_big(0.45, 0.75),
    starting_attack_sound = sounds.worm_roars_big(0.45, 0.75),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 4 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 3 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 3,
        spawn_max = 5,
        spawn_min_radius = 1,
        spawn_max_radius = 4,
      },
    },
  },

  {
    max_health = 5000,
    healing_per_tick = 0.3,
    scale = 1.2,
    dying_explosion = "big-worm-die",
    prepare_range = 24,
    call_for_help_radius = 75,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying_big(0.7),
    preparing_sound = sounds.worm_standup(0.66),
    prepared_sound = sounds.worm_breath_big(0.6, 0.9),
    prepared_alternative_sound = sounds.worm_roar_alternative_big(0.5, 0.8),
    starting_attack_sound = sounds.worm_roars_big(0.5, 0.8),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 4 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 4 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 3,
        spawn_max = 5,
        spawn_min_radius = 1,
        spawn_max_radius = 4,
      },
    },
  },

  {
    max_health = 10000,
    healing_per_tick = 0.6,
    scale = 1.3,
    dying_explosion = "big-worm-die",
    prepare_range = 28,
    call_for_help_radius = 80,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying_big(0.75),
    preparing_sound = sounds.worm_standup(0.68),
    prepared_sound = sounds.worm_breath_big(0.6, 0.9),
    prepared_alternative_sound = sounds.worm_roar_alternative_big(0.55, 0.85),
    starting_attack_sound = sounds.worm_roars_big(0.55, 0.85),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 5 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 2 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 4 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 3,
        spawn_max = 5,
        spawn_min_radius = 1,
        spawn_max_radius = 4,
      },
    },
  },

  {
    max_health = 35000,
    healing_per_tick = 0.9,
    scale = 1.4,
    dying_explosion = "behemoth-worm-die",
    prepare_range = 32,
    call_for_help_radius = 85,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying_behemoth(0.8),
    preparing_sound = sounds.worm_standup(0.7),
    prepared_sound = sounds.worm_breath_big(0.65, 0.95),
    prepared_alternative_sound = sounds.worm_roar_alternative_big(0.6, 0.9),
    starting_attack_sound = sounds.worm_roars_big(0.6, 0.9),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 5 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 3 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 4 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 3,
        spawn_max = 5,
        spawn_min_radius = 1,
        spawn_max_radius = 4,
      },
    },
  },

  {
    max_health = 100000,
    healing_per_tick = 1.5,
    scale = 1.5,
    dying_explosion = "behemoth-worm-die",
    prepare_range = 36,
    call_for_help_radius = 90,
    prepared_alternative_speed = 0.014,
    prepared_alternative_speed_secondary = 0.010,
    dying_sound = sounds.worm_dying_behemoth(0.85),
    preparing_sound = sounds.worm_standup(0.72),
    prepared_sound = sounds.worm_breath_big(0.7, 1),
    prepared_alternative_sound = sounds.worm_roar_alternative_big(0.7, 1),
    starting_attack_sound = sounds.worm_roars_big(0.7, 0.95),
    spawn_decoration = {
      { decorative = "worms-decal", spawn_min = 1, spawn_max = 2, spawn_min_radius = 1, spawn_max_radius = 6 },
      { decorative = "shroom-decal", spawn_min = 1, spawn_max = 3, spawn_min_radius = 1, spawn_max_radius = 3 },
      { decorative = "enemy-decal", spawn_min = 1, spawn_max = 4, spawn_min_radius = 1, spawn_max_radius = 5 },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 4,
        spawn_max = 5,
        spawn_min_radius = 1,
        spawn_max_radius = 5,
      },
    },
  },
}

if health_increase == true then
  worm_stats[4].max_health = 3500
  worm_stats[5].max_health = 9000
  worm_stats[6].max_health = 27000
  worm_stats[7].max_health = 80000
  worm_stats[8].max_health = 320000
end

local end_attack_speed_multiplier_when_killed = 2
local start_attack_speed_multiplier_when_killed = 2
local prepared_alternative_speed_multiplier_when_killed = 2
local folding_speed_multiplier_when_killed = 2
local preparing_speed_multiplier_when_killed = 2

function bobmods.enemies.new_worm(inputs)
  local tier = inputs.tier or 3
  local final_scale = inputs.scale or worm_stats[tier].scale
  local map_gen_scale = math.max(1, final_scale)
  local final_prepare_range = inputs.prepare_range or worm_stats[tier].prepare_range
  local set_resistances = {
    inputs.physical_resist or "normal",
    inputs.pierce_resist or "normal",
    inputs.explosion_resist or "normal",
    inputs.laser_resist or "normal",
    inputs.fire_resist or "normal",
    inputs.poison_resist or "normal",
    inputs.electric_resist or "normal",
    inputs.acid_resist or "normal",
    inputs.impact_resist or "normal",
    inputs.plasma_resist or "normal",
  }
  local new_resistances = {}
  local x = 0
  for i = 1, 10 do
    if set_resistances[i] == "high" then
      if worm_resistances_up[i][tier].decrease or worm_resistances_up[i][tier].percent then
        x = x + 1
        new_resistances[x] = worm_resistances_up[i][tier]
      end
    elseif set_resistances[i] == "very-high" then
      if worm_resistances_upup[i][tier].decrease or worm_resistances_upup[i][tier].percent then
        x = x + 1
        new_resistances[x] = worm_resistances_upup[i][tier]
      end
    elseif set_resistances[i] == "low" then
      if worm_resistances_down[i][tier].decrease or worm_resistances_down[i][tier].percent then
        x = x + 1
        new_resistances[x] = worm_resistances_down[i][tier]
      end
    else
      if worm_resistances[i][tier].decrease or worm_resistances[i][tier].percent then
        x = x + 1
        new_resistances[x] = worm_resistances[i][tier]
      end
    end
  end
  local worm_prototype = {
    type = "turret",
    name = inputs.name,
    localised_description = inputs.localised_description,
    factoriopedia_description = inputs.factoriopedia_description,
    flags = inputs.flags or { "placeable-enemy", "placeable-off-grid", "not-repairable", "breaths-air" },
    order = inputs.order,
    max_health = inputs.health or worm_stats[tier].max_health,
    healing_per_tick = inputs.healing_per_tick or worm_stats[tier].healing_per_tick,
    subgroup = "enemies",
    impact_category = inputs.impact_category or "organic",
    trigger_target_mask = inputs.trigger_target_mask,
    factoriopedia_simulation = inputs.factoriopedia_simulation,
    resistances = inputs.resistances or new_resistances,
    collision_box = { { -1.4 * final_scale, -1.2 * final_scale }, { 1.4 * final_scale, 1.2 * final_scale } },
    map_generator_bounding_box = {
      { -2.4 * map_gen_scale, -2.2 * map_gen_scale },
      { 2.4 * map_gen_scale, 2.2 * map_gen_scale },
    },
    selection_box = { { -1.4 * final_scale, -1.2 * final_scale }, { 1.4 * final_scale, 1.2 * final_scale } },
    created_effect = inputs.created_effect,
    damaged_trigger_effect = hit_effects.biter(),
    shooting_cursor_size = 4.5 * final_scale,
    corpse = inputs.name .. "-worm-corpse",
    folded_state_corpse = inputs.name .. "-worm-corpse-burrowed",
    dying_explosion = inputs.dying_explosion or worm_stats[tier].dying_explosion,
    dying_sound = worm_stats[tier].dying_sound,
    dying_trigger_effect = inputs.dying_trigger_effect,
    loot = {},
    graphics_set = {},
    folded_speed = 0.01,
    folded_speed_secondary = 0.024,
    folded_animation_is_stateless = true,
    folded_animation = worm_folded_animation(final_scale, inputs.tint),
    preparing_speed = 0.024,
    preparing_speed_when_killed = 0.024 * preparing_speed_multiplier_when_killed,
    preparing_animation = worm_preparing_animation(final_scale, inputs.tint, "forward"),
    preparing_sound = worm_stats[tier].preparing_sound,
    prepared_speed = 0.024,
    prepared_speed_secondary = 0.012,
    prepared_sound = worm_stats[tier].prepared_sound,
    prepared_animation = worm_prepared_animation(final_scale, inputs.tint),
    prepared_alternative_speed = worm_stats[tier].prepared_alternative_speed,
    prepared_alternative_speed_secondary = worm_stats[tier].prepared_alternative_speed_secondary,
    prepared_alternative_speed_when_killed = worm_stats[tier].prepared_alternative_speed
      * prepared_alternative_speed_multiplier_when_killed,
    prepared_alternative_starting_progress_when_killed = prepared_starting_progress_when_killed,
    prepared_alternative_chance = 0.2,
    prepared_alternative_animation = worm_prepared_alternative_animation(final_scale, inputs.tint),
    prepared_alternative_sound = worm_stats[tier].prepared_alternative_sound,
    starting_attack_speed = 0.034,
    starting_attack_speed_when_killed = 0.034 * start_attack_speed_multiplier_when_killed,
    starting_attack_animation = worm_start_attack_animation(final_scale, inputs.tint),
    starting_attack_sound = worm_stats[tier].starting_attack_sound,
    ending_attack_speed = 0.016,
    ending_attack_speed_when_killed = 0.016 * end_attack_speed_multiplier_when_killed,
    ending_attack_starting_progress_when_killed = end_attack_starting_progress_when_killed,
    ending_attack_animation = worm_end_attack_animation(final_scale, inputs.tint),
    folding_speed = 0.015,
    folding_speed_when_killed = 0.015 * folding_speed_multiplier_when_killed,
    folding_animation = worm_preparing_animation(final_scale, inputs.tint, "backward"),
    folding_sound = sounds.worm_fold(1),
    random_animation_offset = true,
    attack_from_start_frame = true,

    integration = worm_integration(final_scale, true),
    prepare_range = inputs.attack_range + final_prepare_range,
    allow_turning_when_starting_attack = true,
    attack_parameters = inputs.attack_parameters or {
      type = "stream",
      cooldown = inputs.attack_cooldown or 4,
      range = inputs.attack_range or 35,
      damage_modifier = inputs.attack_damage_modifier,
      min_range = inputs.attack_min_range,
      projectile_creation_parameters = worm_shoot_shiftings(final_scale, final_scale * scale_worm_stream),
      use_shooter_direction = true,
      lead_target_for_projectile_speed = inputs.attack_lead_target_for_projectile_speed or 0.2 * 0.75 * 1.5 * 1.5,
      ammo_category = "biological",
      ammo_type = inputs.attack_ammo_type or {
        action = {
          type = "direct",
          action_delivery = {
            type = "stream",
            stream = inputs.attack_stream_name or inputs.name .. "-acid-stream",
            source_offset = { 0.15, -0.5 },
          },
        },
      },
    },
    build_base_evolution_requirement = inputs.build_base_evolution_requirement or 1.01,
    autoplace = inputs.autoplace,
    call_for_help_radius = inputs.call_for_help_radius or worm_stats[tier].call_for_help_radius,
    spawn_decorations_on_expansion = true,
    spawn_decoration = worm_stats[tier].spawn_decoration,
  }
  if inputs.icons then
    worm_prototype.icons = inputs.icons
  elseif inputs.icon then
    worm_prototype.icon = inputs.icon
    worm_prototype.icon_size = inputs.icon_size or 64
  else
    worm_prototype.icon = "__base__/graphics/icons/big-worm.png"
  end

  local worm_corpse_1 = worm_corpse(inputs.name, final_scale, inputs.tint, "b")
  local worm_corpse_2 = worm_corpse_burrowed(inputs.name, final_scale, inputs.tint, "b")
  worm_corpse_1.icon = "__base__/graphics/icons/big-worm-corpse.png"
  worm_corpse_2.icon = "__base__/graphics/icons/big-worm-corpse.png"
  worm_corpse_1.localised_name = { "entity-name.bob-enemies-corpse" }
  worm_corpse_2.localised_name = { "entity-name.bob-enemies-corpse" }

  if inputs.tint2 then
    table.insert(
      worm_prototype.ending_attack_animation.layers,
      2,
      util.copy(worm_prototype.ending_attack_animation.layers[1])
    )
    table.insert(worm_prototype.folded_animation.layers, 2, util.copy(worm_prototype.folded_animation.layers[1]))
    table.insert(worm_prototype.folding_animation.layers, 2, util.copy(worm_prototype.folding_animation.layers[1]))
    table.insert(
      worm_prototype.prepared_alternative_animation.layers,
      2,
      util.copy(worm_prototype.prepared_alternative_animation.layers[1])
    )
    table.insert(worm_prototype.prepared_animation.layers, 2, util.copy(worm_prototype.prepared_animation.layers[1]))
    table.insert(worm_prototype.preparing_animation.layers, 2, util.copy(worm_prototype.preparing_animation.layers[1]))
    table.insert(
      worm_prototype.starting_attack_animation.layers,
      2,
      util.copy(worm_prototype.starting_attack_animation.layers[1])
    )

    worm_prototype.ending_attack_animation.layers[2].tint = inputs.tint2
    worm_prototype.folded_animation.layers[2].tint = inputs.tint2
    worm_prototype.folding_animation.layers[2].tint = inputs.tint2
    worm_prototype.prepared_alternative_animation.layers[2].tint = inputs.tint2
    worm_prototype.prepared_animation.layers[2].tint = inputs.tint2
    worm_prototype.preparing_animation.layers[2].tint = inputs.tint2
    worm_prototype.starting_attack_animation.layers[2].tint = inputs.tint2

    worm_prototype.ending_attack_animation.layers[2].blend_mode = "additive"
    worm_prototype.folded_animation.layers[2].blend_mode = "additive"
    worm_prototype.folding_animation.layers[2].blend_mode = "additive"
    worm_prototype.prepared_alternative_animation.layers[2].blend_mode = "additive"
    worm_prototype.prepared_animation.layers[2].blend_mode = "additive"
    worm_prototype.preparing_animation.layers[2].blend_mode = "additive"
    worm_prototype.starting_attack_animation.layers[2].blend_mode = "additive"

    table.insert(worm_corpse_1.animation[1].layers, 2, util.copy(worm_corpse_1.animation[1].layers[1]))
    table.insert(worm_corpse_1.animation[2].layers, 2, util.copy(worm_corpse_1.animation[2].layers[1]))
    table.insert(worm_corpse_1.animation[3].layers, 2, util.copy(worm_corpse_1.animation[3].layers[1]))
    worm_corpse_1.animation[1].layers[2].tint = inputs.tint2
    worm_corpse_1.animation[2].layers[2].tint = inputs.tint2
    worm_corpse_1.animation[3].layers[2].tint = inputs.tint2
    worm_corpse_1.animation[1].layers[2].blend_mode = "additive"
    worm_corpse_1.animation[2].layers[2].blend_mode = "additive"
    worm_corpse_1.animation[3].layers[2].blend_mode = "additive"
    table.insert(worm_corpse_2.animation[1].layers, 2, util.copy(worm_corpse_2.animation[1].layers[1]))
    table.insert(worm_corpse_2.animation[2].layers, 2, util.copy(worm_corpse_2.animation[2].layers[1]))
    table.insert(worm_corpse_2.animation[3].layers, 2, util.copy(worm_corpse_2.animation[3].layers[1]))
    worm_corpse_2.animation[1].layers[2].tint = inputs.tint2
    worm_corpse_2.animation[2].layers[2].tint = inputs.tint2
    worm_corpse_2.animation[3].layers[2].tint = inputs.tint2
    worm_corpse_2.animation[1].layers[2].blend_mode = "additive"
    worm_corpse_2.animation[2].layers[2].blend_mode = "additive"
    worm_corpse_2.animation[3].layers[2].blend_mode = "additive"
  end

  if not inputs.no_acid_stream == true then
    bobmods.enemies.acid_stream(inputs, final_scale)
  end

  data:extend({ worm_prototype, worm_corpse_1, worm_corpse_2 })
end

function bobmods.enemies.new_spawner(inputs)
  local final_max_health
  local final_healing_per_tick
  local final_absorptions_per_second
  local final_max_count_of_owned_units
  local final_max_friends_around_to_spawn
  local final_spawning_cooldown
  local final_result_units
  if inputs.class == "super" then
    if health_increase == true then
      final_max_health = inputs.max_health or 8000
    else
      final_max_health = inputs.max_health or 2500
    end
    final_healing_per_tick = inputs.healing_per_tick or 1
    final_absorptions_per_second = inputs.absorptions_per_second
      or { pollution = { absolute = 160, proportional = 0.06 } }
    final_max_count_of_owned_units = inputs.max_count_of_owned_units or 20
    final_max_friends_around_to_spawn = inputs.max_friends_around_to_spawn or 10
    final_spawning_cooldown = inputs.spawning_cooldown or { 180, 60 }

    if bigger_spawns == true then
      final_result_units = inputs.result_units
        or {
          { "bob-small-" .. inputs.element .. "-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
          { "bob-small-" .. inputs.element .. "-spitter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
          { "bob-medium-" .. inputs.element .. "-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
          { "bob-medium-" .. inputs.element .. "-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
          { "bob-big-" .. inputs.element .. "-biter", { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
          { "bob-big-" .. inputs.element .. "-spitter", { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
          { "bob-huge-" .. inputs.element .. "-biter", { { 0.52, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.0 } } },
          { "bob-huge-" .. inputs.element .. "-spitter", { { 0.52, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.0 } } },
          { "bob-giant-" .. inputs.element .. "-biter", { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.25 } } },
          { "bob-giant-" .. inputs.element .. "-spitter", { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.25 } } },
          { "bob-titan-" .. inputs.element .. "-biter", { { 0.72, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
          { "bob-titan-" .. inputs.element .. "-spitter", { { 0.72, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
          { "bob-behemoth-" .. inputs.element .. "-biter", { { 0.85, 0.0 }, { 0.95, 0.3 } } },
          { "bob-behemoth-" .. inputs.element .. "-spitter", { { 0.85, 0.0 }, { 0.95, 0.3 } } },
          { "bob-leviathan-" .. inputs.element .. "-biter", { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
          { "bob-leviathan-" .. inputs.element .. "-spitter", { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
        }
    else
      final_result_units = inputs.result_units
        or {
          { "bob-small-" .. inputs.element .. "-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
          { "bob-small-" .. inputs.element .. "-spitter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
          { "bob-medium-" .. inputs.element .. "-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
          { "bob-medium-" .. inputs.element .. "-spitter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
          { "bob-big-" .. inputs.element .. "-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
          { "bob-big-" .. inputs.element .. "-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
          { "bob-huge-" .. inputs.element .. "-biter", { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.0 } } },
          { "bob-huge-" .. inputs.element .. "-spitter", { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.0 } } },
          { "bob-giant-" .. inputs.element .. "-biter", { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.25 } } },
          { "bob-giant-" .. inputs.element .. "-spitter", { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.25 } } },
          { "bob-titan-" .. inputs.element .. "-biter", { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
          { "bob-titan-" .. inputs.element .. "-spitter", { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
          { "bob-behemoth-" .. inputs.element .. "-biter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
          { "bob-behemoth-" .. inputs.element .. "-spitter", { { 0.9, 0.0 }, { 1.0, 0.3 } } },
          { "bob-leviathan-" .. inputs.element .. "-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
          { "bob-leviathan-" .. inputs.element .. "-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
        }
    end
  else
    local final_class
    if inputs.class == "biter" or inputs.class == "spitter" then
      final_class = inputs.class
      if health_increase == true then
        final_max_health = inputs.max_health or 2000
      else
        final_max_health = inputs.max_health or 500
      end
      final_healing_per_tick = inputs.healing_per_tick or 0.04
      final_absorptions_per_second = inputs.absorptions_per_second
        or { pollution = { absolute = 80, proportional = 0.03 } }
      final_max_count_of_owned_units = inputs.max_count_of_owned_units or 10
      final_max_friends_around_to_spawn = inputs.max_friends_around_to_spawn or 5
      final_spawning_cooldown = inputs.spawning_cooldown or { 300, 120 }
    else
      if string.find(inputs.class, "biter") then
        final_class = "biter"
      elseif string.find(inputs.class, "spitter") then
        final_class = "spitter"
      end
      if health_increase == true then
        final_max_health = inputs.max_health or 350
      else
        final_max_health = inputs.max_health or 250
      end
      final_healing_per_tick = inputs.healing_per_tick or 0.02
      final_absorptions_per_second = inputs.absorptions_per_second
        or { pollution = { absolute = 20, proportional = 0.01 } }
      final_max_count_of_owned_units = inputs.max_count_of_owned_units or 7
      final_max_friends_around_to_spawn = inputs.max_friends_around_to_spawn or 5
      final_spawning_cooldown = inputs.spawning_cooldown or { 360, 150 }
    end

    if bigger_spawns == true then
      final_result_units = inputs.result_units
        or {
          { "bob-small-" .. inputs.element .. "-" .. final_class, { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.5, 0.0 } } },
          { "bob-medium-" .. inputs.element .. "-" .. final_class, { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.6, 0.0 } } },
          { "bob-big-" .. inputs.element .. "-" .. final_class, { { 0.45, 0.0 }, { 0.55, 0.4 }, { 0.6, 0.0 } } },
          { "bob-huge-" .. inputs.element .. "-" .. final_class, { { 0.55, 0.0 }, { 0.65, 0.2 }, { 0.9, 0.1 } } },
          { "bob-giant-" .. inputs.element .. "-" .. final_class, { { 0.65, 0.0 }, { 0.75, 0.2 }, { 1.0, 0.15 } } },
          { "bob-titan-" .. inputs.element .. "-" .. final_class, { { 0.75, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.45 } } },
          { "bob-behemoth-" .. inputs.element .. "-" .. final_class, { { 0.85, 0.0 }, { 0.95, 0.3 } } },
          { "bob-leviathan-" .. inputs.element .. "-" .. final_class, { { 0.90, 0.0 }, { 1.0, leviathanfrequency } } },
        }
    else
      final_result_units = inputs.result_units
        or {
          { "bob-small-" .. inputs.element .. "-" .. final_class, { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.6, 0.0 } } },
          { "bob-medium-" .. inputs.element .. "-" .. final_class, { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.7, 0.0 } } },
          { "bob-big-" .. inputs.element .. "-" .. final_class, { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.8, 0.0 } } },
          { "bob-huge-" .. inputs.element .. "-" .. final_class, { { 0.6, 0.0 }, { 0.7, 0.2 }, { 0.9, 0.1 } } },
          { "bob-giant-" .. inputs.element .. "-" .. final_class, { { 0.7, 0.0 }, { 0.8, 0.2 }, { 1.0, 0.15 } } },
          { "bob-titan-" .. inputs.element .. "-" .. final_class, { { 0.8, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.45 } } },
          { "bob-behemoth-" .. inputs.element .. "-" .. final_class, { { 0.9, 0.0 }, { 1.0, 0.3 } } },
          { "bob-leviathan-" .. inputs.element .. "-" .. final_class, { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
        }
    end
  end

  local spawner_prototype = {
    type = "unit-spawner",
    name = inputs.name,
    localised_description = inputs.localised_description,
    factoriopedia_description = inputs.factoriopedia_description,
    flags = inputs.flags or { "placeable-player", "placeable-enemy", "not-repairable" },
    max_health = final_max_health,
    order = inputs.order,
    subgroup = "enemies",
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0,
        },
      },
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
    resistances = inputs.resistances,
    impact_category = inputs.impact_category or "organic",
    trigger_target_mask = inputs.trigger_target_mask,
    healing_per_tick = final_healing_per_tick,
    collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    map_generator_bounding_box = { { -5, -4 }, { 5, 4 } },
    created_effect = inputs.created_effect,
    damaged_trigger_effect = inputs.damaged_trigger_effect or hit_effects.biter(),
    absorptions_per_second = final_absorptions_per_second,
    corpse = inputs.name .. "-corpse",
    dying_explosion = inputs.dying_explosion or "biter-spawner-die",
    dying_trigger_effect = inputs.dying_trigger_effect,
    loot = {},
    max_count_of_owned_units = final_max_count_of_owned_units,
    max_friends_around_to_spawn = final_max_friends_around_to_spawn,
    graphics_set = inputs.graphics_set or {
      animations = {
        spawner_idle_animation(0, inputs.tint),
        spawner_idle_animation(1, inputs.tint),
        spawner_idle_animation(2, inputs.tint),
        spawner_idle_animation(3, inputs.tint),
      },
    },
    result_units = final_result_units,
    spawning_cooldown = final_spawning_cooldown,
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = inputs.autoplace,
    build_base_evolution_requirement = inputs.build_base_evolution_requirement or 1.01,
    call_for_help_radius = inputs.call_for_help_radius or 50,
    time_to_capture = inputs.time_to_capture or 1200,
    map_color = inputs.map_color,
    friendly_map_color = inputs.friendly_map_color,
    enemy_map_color = inputs.enemy_map_color,
    spawn_decorations_on_expansion = true,
    spawn_decoration = {
      {
        decorative = "light-mud-decal",
        spawn_min = 0,
        spawn_max = 2,
        spawn_min_radius = 2,
        spawn_max_radius = 5,
      },
      {
        decorative = "dark-mud-decal",
        spawn_min = 0,
        spawn_max = 3,
        spawn_min_radius = 2,
        spawn_max_radius = 6,
      },
      {
        decorative = "enemy-decal",
        spawn_min = 3,
        spawn_max = 5,
        spawn_min_radius = 2,
        spawn_max_radius = 7,
      },
      {
        decorative = "enemy-decal-transparent",
        spawn_min = 4,
        spawn_max = 20,
        spawn_min_radius = 2,
        spawn_max_radius = 14,
        radius_curve = 0.9,
      },
      {
        decorative = "muddy-stump",
        spawn_min = 2,
        spawn_max = 5,
        spawn_min_radius = 3,
        spawn_max_radius = 6,
      },
      {
        decorative = "red-croton",
        spawn_min = 2,
        spawn_max = 8,
        spawn_min_radius = 3,
        spawn_max_radius = 6,
      },
      {
        decorative = "red-pita",
        spawn_min = 1,
        spawn_max = 5,
        spawn_min_radius = 3,
        spawn_max_radius = 6,
      },
      {
        decorative = "lichen-decal",
        spawn_min = 1,
        spawn_max = 2,
        spawn_min_radius = 2,
        spawn_max_radius = 7,
      },
    },
  }
  if inputs.icons then
    spawner_prototype.icons = inputs.icons
  elseif inputs.icon then
    spawner_prototype.icon = inputs.icon
    spawner_prototype.icon_size = inputs.icon_size or 64
  else
    spawner_prototype.icon = "__base__/graphics/icons/biter-spawner.png"
  end

  local spawner_corpse = {
    type = "corpse",
    name = inputs.name .. "-corpse",
    localised_name = { "entity-name.bob-enemies-corpse" },
    hidden_in_factoriopedia = true,
    flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = { { -2, -2 }, { 2, 2 } },
    selection_box = { { -2, -2 }, { 2, 2 } },
    selectable_in_game = false,
    dying_speed = 0.015,
    time_before_removed = 15 * 60 * 60,
    subgroup = "corpses",
    order = "c[corpse]-c[" .. inputs.name .. "]",
    animation = {
      spawner_die_animation(0, inputs.tint),
      spawner_die_animation(1, inputs.tint),
      spawner_die_animation(2, inputs.tint),
      spawner_die_animation(3, inputs.tint),
    },
    decay_animation = {
      spawner_decay_animation(0, inputs.tint),
      spawner_decay_animation(1, inputs.tint),
      spawner_decay_animation(2, inputs.tint),
      spawner_decay_animation(3, inputs.tint),
    },
    decay_frame_transition_duration = 360,
    final_render_layer = "lower-object-above-shadow",
  }

  if inputs.tint2 then
    table.insert(
      spawner_prototype.graphics_set.animations[1].layers,
      2,
      util.copy(spawner_prototype.graphics_set.animations[1].layers[1])
    )
    table.insert(
      spawner_prototype.graphics_set.animations[2].layers,
      2,
      util.copy(spawner_prototype.graphics_set.animations[2].layers[1])
    )
    table.insert(
      spawner_prototype.graphics_set.animations[3].layers,
      2,
      util.copy(spawner_prototype.graphics_set.animations[3].layers[1])
    )
    table.insert(
      spawner_prototype.graphics_set.animations[4].layers,
      2,
      util.copy(spawner_prototype.graphics_set.animations[4].layers[1])
    )

    spawner_prototype.graphics_set.animations[1].layers[2].tint = inputs.tint2
    spawner_prototype.graphics_set.animations[2].layers[2].tint = inputs.tint2
    spawner_prototype.graphics_set.animations[3].layers[2].tint = inputs.tint2
    spawner_prototype.graphics_set.animations[4].layers[2].tint = inputs.tint2

    spawner_prototype.graphics_set.animations[1].layers[2].blend_mode = "additive-soft"
    spawner_prototype.graphics_set.animations[2].layers[2].blend_mode = "additive-soft"
    spawner_prototype.graphics_set.animations[3].layers[2].blend_mode = "additive-soft"
    spawner_prototype.graphics_set.animations[4].layers[2].blend_mode = "additive-soft"

    table.insert(spawner_corpse.animation[1].layers, 2, util.copy(spawner_corpse.animation[1].layers[1]))
    table.insert(spawner_corpse.animation[2].layers, 2, util.copy(spawner_corpse.animation[2].layers[1]))
    table.insert(spawner_corpse.animation[3].layers, 2, util.copy(spawner_corpse.animation[3].layers[1]))
    table.insert(spawner_corpse.animation[4].layers, 2, util.copy(spawner_corpse.animation[4].layers[1]))

    spawner_corpse.animation[1].layers[2].tint = inputs.tint2
    spawner_corpse.animation[2].layers[2].tint = inputs.tint2
    spawner_corpse.animation[3].layers[2].tint = inputs.tint2
    spawner_corpse.animation[4].layers[2].tint = inputs.tint2

    spawner_corpse.animation[1].layers[2].blend_mode = "additive-soft"
    spawner_corpse.animation[2].layers[2].blend_mode = "additive-soft"
    spawner_corpse.animation[3].layers[2].blend_mode = "additive-soft"
    spawner_corpse.animation[4].layers[2].blend_mode = "additive-soft"

    table.insert(spawner_corpse.decay_animation[1].layers, 2, util.copy(spawner_corpse.decay_animation[1].layers[1]))
    table.insert(spawner_corpse.decay_animation[2].layers, 2, util.copy(spawner_corpse.decay_animation[2].layers[1]))
    table.insert(spawner_corpse.decay_animation[3].layers, 2, util.copy(spawner_corpse.decay_animation[3].layers[1]))
    table.insert(spawner_corpse.decay_animation[4].layers, 2, util.copy(spawner_corpse.decay_animation[4].layers[1]))

    spawner_corpse.decay_animation[1].layers[2].tint = inputs.tint2
    spawner_corpse.decay_animation[2].layers[2].tint = inputs.tint2
    spawner_corpse.decay_animation[3].layers[2].tint = inputs.tint2
    spawner_corpse.decay_animation[4].layers[2].tint = inputs.tint2

    spawner_corpse.decay_animation[1].layers[2].blend_mode = "additive-soft"
    spawner_corpse.decay_animation[2].layers[2].blend_mode = "additive-soft"
    spawner_corpse.decay_animation[3].layers[2].blend_mode = "additive-soft"
    spawner_corpse.decay_animation[4].layers[2].blend_mode = "additive-soft"
  end

  data:extend({ spawner_prototype, spawner_corpse })
end

function enemy_simulation(name, zoom)
  local final_zoom = zoom or 1.8
  return [[
    game.simulation.camera_zoom = ]] .. final_zoom .. [[
    game.simulation.camera_position = {0, 0}
    game.surfaces[1].build_checkerboard{{-40, -40}, {40, 40}}
    enemy = game.surfaces[1].create_entity{name = "]] .. name .. [[", position = {0, 0}}

    step_0 = function()
      game.simulation.camera_position = {enemy.position.x, enemy.position.y - 0.5}
      script.on_nth_tick(1, function()
          step_0()
      end)
    end

    step_0()
  ]]
end
