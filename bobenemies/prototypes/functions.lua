-- needed: name, order, health, scale, tint, tint2, ammo_type
-- optional: icon, healing_per_tick, resistances, spawning_time_modifier, distraction_cooldown, pollution_to_join_attack, movement_speed, distance_per_frame, range, vision_distance

function bobmods.enemies.new_biter(input)
  data:extend({
    {
      type = "unit",
      name = input.name,
      order = input.order,
      icon = input.icon or "__base__/graphics/icons/big-biter.png",
      icon_size = input.icon_size or 32,
      flags = { "placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable" },
      max_health = input.health,
      subgroup = "enemies",
      resistances = input.resistances,
      spawning_time_modifier = input.spawning_time_modifier or 2,
      healing_per_tick = input.healing_per_tick or 0.02,
      collision_box = { { -0.4 * input.scale, -0.4 * input.scale }, { 0.4 * input.scale, 0.4 * input.scale } },
      selection_box = { { -0.7 * input.scale, -1.5 * input.scale }, { 0.7 * input.scale, 0.3 * input.scale } },
      sticker_box = { { -0.6 * input.scale, -0.8 * input.scale }, { 0.6 * input.scale, 0 } },
      distraction_cooldown = input.distraction_cooldown or 300,
      min_pursue_time = 10 * 60,
      max_pursue_distance = 50,
      attack_parameters = {
        type = "projectile",
        ammo_category = "melee",
        ammo_type = input.ammo_type,
        range = input.range or 1.5,
        cooldown = 35,
        sound = make_biter_roars(0.6 * input.scale),
        animation = biterattackanimation(input.scale, input.tint, input.tint2),
      },
      vision_distance = input.vision_distance or 30,
      movement_speed = input.movement_speed or 0.17,
      distance_per_frame = input.distance_per_frame or 0.2,
      -- in pu
      pollution_to_join_attack = input.pollution_to_join_attack or 2000,
      corpse = input.name .. "-corpse",
      dying_explosion = "blood-explosion-big",
      working_sound = make_biter_calls(0.9 * input.scale),
      dying_sound = make_biter_dying_sounds(1.0 * input.scale),
      run_animation = biterrunanimation(input.scale, input.tint, input.tint2),
    },

    {
      type = "corpse",
      name = input.name .. "-corpse",
      icon = input.icon or "__base__/graphics/icons/big-biter-corpse.png",
      icon_size = input.icon_size or 32,
      selectable_in_game = false,
      hidden_in_factoriopedia = true,
      selection_box = { { -1 * input.scale, -1 * input.scale }, { 1 * input.scale, 1 * input.scale } },
      subgroup = "corpses",
      order = "c[corpse]-" .. input.order,
      flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map" },
      dying_speed = 0.04,
      time_before_removed = 15 * 60 * 60,
      final_render_layer = "corpse",
      animation = biterdieanimation(input.scale, input.tint, input.tint2),
    },
  })
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

function bobmods.enemies.spitter_attack_parameters(data)
  return {
    type = "stream",
    ammo_category = "biological",
    cooldown = data.cooldown,
    cooldown_deviation = data.cooldown_deviation,
    range = data.range,
    range_mode = "bounding-box-to-bounding-box",
    min_attack_distance = data.min_attack_distance,
    damage_modifier = data.damage_modifier,
    warmup = 30,
    projectile_creation_parameters = spitter_shoot_shiftings(data.scale, data.scale * scale_spitter_stream),
    use_shooter_direction = true,
    lead_target_for_projectile_speed = 0.2 * 0.75 * 1.5 * 1.5, -- this is same as particle horizontal speed of flamethrower fire stream
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "stream",
          stream = data.acid_stream_name,
        },
      },
    },
    cyclic_sound = {
      begin_sound = data.begin_sound,
      middle_sound = {
        {
          filename = "__base__/sound/fight/flamethrower-mid.ogg",
          volume = 0,
        },
      },
      end_sound = {
        {
          filename = "__base__/sound/creatures/spitter-spit-end-big-1.ogg",
          volume = 0.43,
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-end-big-2.ogg",
          volume = 0.43,
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-end-big-3.ogg",
          volume = 0.43,
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-end-big-4.ogg",
          volume = 0.43,
        },
        {
          filename = "__base__/sound/creatures/spitter-spit-end-big-5.ogg",
          volume = 0.43,
        },
      },
    },
    animation = spitterattackanimation(data.scale, data.tint1, data.tint2),
  }
end

function bobmods.enemies.acid_stream(data)
  return {
    type = "stream",
    name = data.name,
    flags = { "not-on-map" },
    particle_buffer_size = 90,
    particle_spawn_interval = data.particle_spawn_interval,
    particle_spawn_timeout = data.particle_spawn_timeout,
    particle_vertical_acceleration = 0.005 * 0.60 * 1.5, --x
    particle_horizontal_speed = 0.2 * 0.75 * 1.5 * 1.5, --x
    particle_horizontal_speed_deviation = 0.005 * 0.70,
    particle_start_alpha = 0.5,
    particle_end_alpha = 1,
    particle_alpha_per_part = 0.8,
    particle_scale_per_part = 0.8,
    particle_loop_frame_count = 15,
    particle_fade_out_duration = 2,
    particle_loop_exit_threshold = 0.25,
    --    special_neutral_target_damage = {amount = 1, type = "acid"},
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/fight/projectile-acid-burn-loop.ogg",
          volume = 0.4,
        },
      },
    },
    initial_action = data.action,
    particle = {
      filename = "__base__/graphics/entity/acid-projectile/acid-projectile-head.png",
      draw_as_glow = true,
      line_length = 5,
      width = 42,
      height = 164,
      frame_count = 15,
      shift = util.mul_shift(util.by_pixel(-2, 31), data.scale),
      tint = data.tint,
      priority = "high",
      scale = 0.5 * data.scale,
      animation_speed = 1,
    },
    spine_animation = {
      filename = "__base__/graphics/entity/acid-projectile/acid-projectile-tail.png",
      draw_as_glow = true,
      line_length = 5,
      width = 132,
      height = 20,
      frame_count = 15,
      shift = util.mul_shift(util.by_pixel(0, -1), data.scale),
      tint = data.tint,
      priority = "high",
      scale = 0.5 * data.scale,
      animation_speed = 1,
    },
    shadow = {
      filename = "__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png",
      line_length = 15,
      width = 42,
      height = 164,
      frame_count = 15,
      shift = util.mul_shift(util.by_pixel(-2, 31), data.scale),
      draw_as_shadow = true,
      priority = "high",
      scale = 0.5 * data.scale,
      animation_speed = 1,
    },
    oriented_particle = true,
    shadow_scale_enabled = true,
  }
end
