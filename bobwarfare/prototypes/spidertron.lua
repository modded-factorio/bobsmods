if settings.startup["bobmods-warfare-spidertron-overhaul"].value == true then
  data:extend({
    {
      type = "item",
      name = "mech-leg-segment",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-leg-segment.png",
      icon_size = 128,
      subgroup = "mech-parts",
      order = "s[mech]-b[leg-segment]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "mech-foot",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-foot.png",
      icon_size = 64,
      subgroup = "mech-parts",
      order = "s[mech]-b[foot]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "mech-hip",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-hip.png",
      icon_size = 64,
      subgroup = "mech-parts",
      order = "s[mech]-b[hip]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "mech-knee",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-knee.png",
      icon_size = 128,
      subgroup = "mech-parts",
      order = "s[mech]-b[knee]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "mech-leg",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-leg.png",
      icon_size = 256,
      subgroup = "mech-parts",
      order = "s[mech]-a[leg]",
      stack_size = 20,
    },
    {
      type = "item",
      name = "mech-brain",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-brain.png",
      icon_size = 32,
      subgroup = "mech-parts",
      order = "s[mech]-a[brain]",
      stack_size = 100,
    },
    {
      type = "item",
      name = "mech-frame",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-body.png",
      icon_size = 128,
      subgroup = "mech-parts",
      order = "s[mech]-a[frame]",
      stack_size = 5,
    },
    {
      type = "item",
      name = "mech-armor-plate",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-armor-plate.png",
      icon_size = 128,
      subgroup = "mech-parts",
      order = "s[mech]-a[armor-plate]",
      stack_size = 100,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "mech-leg-segment",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "pipe", 3 },
        { "steel-plate", 2 },
      },
      results = { { type = "item", name = "mech-leg-segment", amount = 1 } },
    },
    {
      type = "recipe",
      name = "mech-foot",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "low-density-structure", 1 },
      },
      results = { { type = "item", name = "mech-foot", amount = 1 } },
    },
    {
      type = "recipe",
      name = "mech-hip",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "low-density-structure", 2 },
        { "electric-engine-unit", 5 },
        { "iron-gear-wheel", 4 },
      },
      results = { { type = "item", name = "mech-hip", amount = 1 } },
    },
    {
      type = "recipe",
      name = "mech-knee",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "low-density-structure", 2 },
        { "electric-engine-unit", 10 },
        { "iron-gear-wheel", 8 },
      },
      results = { { type = "item", name = "mech-knee", amount = 1 } },
    },
    {
      type = "recipe",
      name = "mech-leg",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "mech-leg-segment", 2 },
        { "mech-foot", 1 },
        { "mech-hip", 1 },
        { "mech-knee", 1 },
        { "copper-cable", 4 },
      },
      results = { { type = "item", name = "mech-leg", amount = 1 } },
    },

    {
      type = "recipe",
      name = "mech-brain",
      enabled = false,
      energy_required = 2,
      ingredients = {},
      results = { { type = "item", name = "mech-brain", amount = 1 } },
    },
    {
      type = "recipe",
      name = "mech-frame",
      enabled = false,
      energy_required = 5,
      ingredients = {
        { "low-density-structure", 50 },
        { "mech-brain", 1 },
      },
      results = { { type = "item", name = "mech-frame", amount = 1 } },
    },
    {
      type = "recipe",
      name = "mech-armor-plate",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { "low-density-structure", 5 },
        { "steel-plate", 2 },
      },
      results = { { type = "item", name = "mech-armor-plate", amount = 1 } },
    },
  })
end

local spidertron_animations = require("__base__.prototypes.entity.spidertron-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data.raw["spider-vehicle"]["spidertron"].order = "b[personal-transport]-c[spidertron]-c[spidertron]"

function bobmods.warfare.create_spidertron(arguments)
  local scale = arguments.scale
  local leg_scale = scale * arguments.leg_scale
  data:extend({
    {
      type = "item-with-entity-data",
      name = arguments.name,
      icon = "__base__/graphics/icons/spidertron.png",
      icon_tintable = "__base__/graphics/icons/spidertron-tintable.png",
      icon_tintable_mask = "__base__/graphics/icons/spidertron-tintable-mask.png",
      icon_size = 64,
      icon_mipmaps = 4,
      subgroup = "transport",
      order = "b[personal-transport]-c[spidertron]-" .. arguments.order_letter .. "[" .. arguments.name .. "]",
      place_result = arguments.name,
      stack_size = 1,
    },
    {
      type = "spider-vehicle",
      name = arguments.name,
      icon = "__base__/graphics/icons/spidertron.png",
      icon_size = 64,
      icon_mipmaps = 4,
      collision_box = { { -1 * scale, -1 * scale }, { 1 * scale, 1 * scale } },
      selection_box = { { -1 * scale, -1 * scale }, { 1 * scale, 1 * scale } },
      drawing_box = { { -3 * scale, -4 * scale }, { 3 * scale, 2 * scale } },
      collision_mask = {},
      minable = { mining_time = 1, result = arguments.name },

      max_health = arguments.max_health or 3000,
      resistances = arguments.resistances,
      guns = arguments.guns,
      inventory_size = arguments.inventory_size or 80,
      equipment_grid = arguments.name .. "-equipment-grid",
      trash_inventory_size = arguments.trash_inventory_size or 20,
      chunk_exploration_radius = arguments.chunk_exploration_radius or 3,
      energy_source = arguments.energy_source or { type = "void" },
      movement_energy_consumption = arguments.movement_energy_consumption or "250kW",
      chain_shooting_cooldown_modifier = arguments.chain_shooting_cooldown_modifier or 1,
      automatic_weapon_cycling = arguments.automatic_weapon_cycling,
      torso_rotation_speed = arguments.torso_rotation_speed or 0.005,

      flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
      mined_sound = { filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8 },
      open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume = 0.35 },
      close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
      sound_minimum_speed = 0.1,
      sound_scaling_ratio = 0.6,
      working_sound = {
        sound = {
          filename = "__base__/sound/spidertron/spidertron-vox.ogg",
          volume = 0.35,
        },
        activate_sound = {
          filename = "__base__/sound/spidertron/spidertron-activate.ogg",
          volume = 0.5,
        },
        deactivate_sound = {
          filename = "__base__/sound/spidertron/spidertron-deactivate.ogg",
          volume = 0.5,
        },
        match_speed_to_activity = true,
      },
      weight = 1,
      braking_force = 1,
      friction_force = 1,
      minimap_representation = {
        filename = "__base__/graphics/entity/spidertron/spidertron-map.png",
        flags = { "icon" },
        size = { 128, 128 },
        scale = 0.5,
      },
      corpse = "spidertron-remnants",
      dying_explosion = "spidertron-explosion",
      energy_per_hit_point = 1,
      height = 1.5 * scale * leg_scale,
      selection_priority = 51,
      graphics_set = spidertron_torso_graphics_set(scale),
    },
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 1),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 2),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 3),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 4),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 5),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 6),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 7),
    make_spidertron_leg(arguments.name, leg_scale, arguments.leg_thickness, arguments.leg_movement_speed, 8),
    {
      type = "equipment-grid",
      name = arguments.name .. "-equipment-grid",
      width = arguments.equipment_grid.width or 10,
      height = arguments.equipment_grid.height or 6,
      equipment_categories = { "armor" },
    },
  })

  if arguments.legs == 6 then
    data.raw["spider-vehicle"][arguments.name].spider_engine = {
      military_target = "spidertron-military-target",
      legs = {
        { -- 1
          leg = arguments.name .. "-leg-1",
          mount_position = util.by_pixel(15 * scale, -22 * scale),
          ground_position = { 2.25 * leg_scale, -2.5 * leg_scale },
          blocking_legs = { 2 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 2
          leg = arguments.name .. "-leg-2",
          mount_position = util.by_pixel(25 * scale, -6 * scale),
          ground_position = { 3 * leg_scale, 0 },
          blocking_legs = { 1, 3 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 3
          leg = arguments.name .. "-leg-4",
          mount_position = util.by_pixel(15 * scale, 17 * scale),
          ground_position = { 2.25 * leg_scale, 2.5 * leg_scale },
          blocking_legs = { 2 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 4
          leg = arguments.name .. "-leg-5",
          mount_position = util.by_pixel(-15 * scale, -22 * scale),
          ground_position = { -2.25 * leg_scale, -2.5 * leg_scale },
          blocking_legs = { 5 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 5
          leg = arguments.name .. "-leg-6",
          mount_position = util.by_pixel(-25 * scale, -6 * scale),
          ground_position = { -3 * leg_scale, 0 },
          blocking_legs = { 4, 6 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 6
          leg = arguments.name .. "-leg-8",
          mount_position = util.by_pixel(-15 * scale, 17 * scale),
          ground_position = { -2.25 * leg_scale, 2.5 * leg_scale },
          blocking_legs = { 5 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
      },
    }
  else
    data.raw["spider-vehicle"][arguments.name].spider_engine = {
      military_target = "spidertron-military-target",
      legs = {
        { -- 1
          leg = arguments.name .. "-leg-1",
          mount_position = util.by_pixel(15 * scale, -22 * scale),
          ground_position = { 2.25 * leg_scale, -2.5 * leg_scale },
          blocking_legs = { 2 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 2
          leg = arguments.name .. "-leg-2",
          mount_position = util.by_pixel(23 * scale, -10 * scale),
          ground_position = { 3 * leg_scale, -1 * leg_scale },
          blocking_legs = { 1, 3 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 3
          leg = arguments.name .. "-leg-3",
          mount_position = util.by_pixel(25 * scale, 4 * scale),
          ground_position = { 3 * leg_scale, 1 * leg_scale },
          blocking_legs = { 2, 4 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 4
          leg = arguments.name .. "-leg-4",
          mount_position = util.by_pixel(15 * scale, 17 * scale),
          ground_position = { 2.25 * leg_scale, 2.5 * leg_scale },
          blocking_legs = { 3 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 5
          leg = arguments.name .. "-leg-5",
          mount_position = util.by_pixel(-15 * scale, -22 * scale),
          ground_position = { -2.25 * leg_scale, -2.5 * leg_scale },
          blocking_legs = { 6, 1 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 6
          leg = arguments.name .. "-leg-6",
          mount_position = util.by_pixel(-23 * scale, -10 * scale),
          ground_position = { -3 * leg_scale, -1 * leg_scale },
          blocking_legs = { 5, 7 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 7
          leg = arguments.name .. "-leg-7",
          mount_position = util.by_pixel(-25 * scale, 4 * scale),
          ground_position = { -3 * leg_scale, 1 * leg_scale },
          blocking_legs = { 6, 8 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 8
          leg = arguments.name .. "-leg-8",
          mount_position = util.by_pixel(-15 * scale, 17 * scale),
          ground_position = { -2.25 * leg_scale, 2.5 * leg_scale },
          blocking_legs = { 7 },
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
      },
    }
  end
end

data:extend({
  {
    type = "gun",
    name = "spidertron-gatling-gun",
    icon = "__bobwarfare__/graphics/icons/gatling-gun.png",
    icon_size = 32,
    flags = { "hidden" },
    subgroup = "gun",
    order = "a[basic-clips]-e[gatling-gun]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 4,
      movement_slow_down_factor = 0.8,
      projectile_center = { 0, -0.5 },
      projectile_creation_distance = 1,
      range = 20,
      damage_modifier = 3,
      sound = sounds.heavy_gunshot,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = -0.5,
        speed = 0.1,
        speed_deviation = 0.03,
        center = { 0, 0.1 },
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1,
      },
    },
  },
  {
    type = "gun",
    name = "spidertron-cannon-1",
    localised_name = { "item-name.spidertron-cannon" },
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "hidden" },
    subgroup = "gun",
    order = "z[tank]-a[spidertron-cannon-1]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 90,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0.5,
      projectile_center = { -0.25, 0.5 },
      range = 25,
      damage_modifier = 1.5,
      sound = {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7,
        },
      },
    },
  },
  {
    type = "gun",
    name = "spidertron-cannon-2",
    localised_name = { "item-name.spidertron-cannon" },
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = { "hidden" },
    subgroup = "gun",
    order = "z[tank]-a[spidertron-cannon-2]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 90,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0.5,
      projectile_center = { 0.25, 0.5 },
      range = 25,
      damage_modifier = 1.5,
      sound = {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7,
        },
      },
    },
  },
  {
    type = "item",
    name = "spidertron-cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "gun",
    order = "g[spidertron-cannon]",
    stack_size = 10,
  },

  {
    type = "recipe",
    name = "spidertron-cannon",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "steel-plate", 15 },
      { "iron-gear-wheel", 5 },
    },
    results = { { type = "item", name = "spidertron-cannon", amount = 1 } },
  },
  {
    type = "recipe",
    name = "antron",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { "gun-turret", 2 },
    },
    results = { { type = "item", name = "antron", amount = 1 } },
  },
  {
    type = "recipe",
    name = "tankotron",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "spidertron-cannon", 2 },
    },
    results = { { type = "item", name = "tankotron", amount = 1 } },
  },
  {
    type = "recipe",
    name = "logistic-spidertron",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "gun-turret", 2 },
      { "steel-chest", 1 },
    },
    results = { { type = "item", name = "logistic-spidertron", amount = 1 } },
  },
  {
    type = "recipe",
    name = "heavy-spidertron",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { "rocket-launcher", 8 },
    },
    results = { { type = "item", name = "heavy-spidertron", amount = 1 } },
  },
})

bobmods.warfare.create_spidertron({
  name = "antron",
  max_health = 1000,
  scale = 0.75, --1,
  leg_scale = 1, -- relative to scale
  leg_thickness = 1.25, -- relative to leg_scale
  leg_movement_speed = 0.75, --1,
  order_letter = "a",
  guns = {
    "spidertron-gatling-gun",
    "spidertron-gatling-gun",
  },
  legs = 6,
  inventory_size = 80,
  equipment_grid = { width = 10, height = 4 },
  trash_inventory_size = 20,
  chunk_exploration_radius = 1,
  movement_energy_consumption = "150kW",
  chain_shooting_cooldown_modifier = 0.5,
  automatic_weapon_cycling = true,
  torso_rotation_speed = 0.005,
  resistances = {
    { type = "physical", decrease = 10, percent = 50 },
    { type = "impact", decrease = 30, percent = 50 },
    { type = "bob-pierce", decrease = 0, percent = 30 },
    { type = "electric", decrease = 0, percent = 50 },
    { type = "explosion", decrease = 10, percent = 50 },
    { type = "acid", decrease = 0, percent = 50 },
    { type = "fire", decrease = 10, percent = 50 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "laser", decrease = 0, percent = 50 },
    { type = "plasma", decrease = 0, percent = 75 },
  },
})

bobmods.warfare.create_spidertron({
  name = "tankotron",
  max_health = 2000,
  scale = 0.8, --1,
  leg_scale = 1.25, -- relative to scale
  leg_thickness = 1, -- relative to leg_scale
  leg_movement_speed = 1, --1,
  order_letter = "b",
  guns = {
    "spidertron-cannon-1",
    "spidertron-cannon-2",
  },
  legs = 6,
  inventory_size = 80,
  equipment_grid = { width = 8, height = 6 },
  trash_inventory_size = 20,
  chunk_exploration_radius = 2,
  movement_energy_consumption = "250kW",
  chain_shooting_cooldown_modifier = 0.5,
  automatic_weapon_cycling = true,
  torso_rotation_speed = 0.005,
  resistances = {
    { type = "physical", decrease = 10, percent = 60 },
    { type = "impact", decrease = 30, percent = 60 },
    { type = "bob-pierce", decrease = 0, percent = 40 },
    { type = "electric", decrease = 0, percent = 60 },
    { type = "explosion", decrease = 10, percent = 60 },
    { type = "acid", decrease = 0, percent = 60 },
    { type = "fire", decrease = 10, percent = 90 },
    { type = "poison", decrease = 10, percent = 60 },
    { type = "laser", decrease = 0, percent = 60 },
    { type = "plasma", decrease = 0, percent = 90 },
  },
})

bobmods.warfare.create_spidertron({
  name = "logistic-spidertron",
  max_health = 1000,
  scale = 1.25, --1,
  leg_scale = 0.8, -- relative to scale
  leg_thickness = 1, -- relative to leg_scale
  leg_movement_speed = 1, --1,
  order_letter = "d",
  guns = {
    "spidertron-gatling-gun",
    "spidertron-gatling-gun",
  },
  inventory_size = 160,
  equipment_grid = { width = 10, height = 8 },
  trash_inventory_size = 80,
  chunk_exploration_radius = 2,
  movement_energy_consumption = "200kW",
  chain_shooting_cooldown_modifier = 0.5,
  automatic_weapon_cycling = true,
  torso_rotation_speed = 0.005,
  resistances = {
    { type = "physical", decrease = 10, percent = 50 },
    { type = "impact", decrease = 30, percent = 50 },
    { type = "bob-pierce", decrease = 0, percent = 30 },
    { type = "electric", decrease = 0, percent = 50 },
    { type = "explosion", decrease = 10, percent = 50 },
    { type = "acid", decrease = 0, percent = 50 },
    { type = "fire", decrease = 10, percent = 50 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "laser", decrease = 0, percent = 50 },
    { type = "plasma", decrease = 0, percent = 75 },
  },
})

bobmods.warfare.create_spidertron({
  name = "heavy-spidertron",
  max_health = 5000,
  scale = 1.25,
  leg_scale = 1.25, -- relative to scale
  leg_thickness = 1, -- relative to leg_scale
  leg_movement_speed = 1.5,
  order_letter = "e",
  guns = {
    "spidertron-rocket-launcher-1",
    "spidertron-rocket-launcher-2",
    "spidertron-rocket-launcher-3",
    "spidertron-rocket-launcher-4",
    "spidertron-rocket-launcher-1",
    "spidertron-rocket-launcher-2",
    "spidertron-rocket-launcher-3",
    "spidertron-rocket-launcher-4",
  },
  inventory_size = 100,
  equipment_grid = { width = 10, height = 10 },
  trash_inventory_size = 20,
  chunk_exploration_radius = 4,
  movement_energy_consumption = "350kW",
  chain_shooting_cooldown_modifier = 0.125,
  automatic_weapon_cycling = true,
  torso_rotation_speed = 0.01,
  resistances = {
    { type = "physical", decrease = 25, percent = 75 },
    { type = "impact", decrease = 50, percent = 90 },
    { type = "bob-pierce", decrease = 25, percent = 75 },
    { type = "electric", decrease = 25, percent = 75 },
    { type = "explosion", decrease = 25, percent = 75 },
    { type = "acid", decrease = 25, percent = 75 },
    { type = "fire", decrease = 25, percent = 75 },
    { type = "poison", decrease = 25, percent = 80 },
    { type = "laser", decrease = 0, percent = 75 },
    { type = "plasma", decrease = 0, percent = 100 },
  },
})

data.raw.technology.spidertron.order = "d-e-g-c"
data:extend({
  {
    type = "technology",
    name = "walking-vehicle",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "antron",
      },
    },
    prerequisites = {
      "military-3",
      "gun-turret",
      "electric-engine",
      "production-science-pack",
    },
    unit = {
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
      count = 1000,
    },
    order = "d-e-g-a",
  },
  {
    type = "technology",
    name = "tankotron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "tankotron",
      },
      {
        type = "unlock-recipe",
        recipe = "spidertron-cannon",
      },
    },
    prerequisites = {
      "walking-vehicle",
      "tank",
    },
    unit = {
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
      count = 1000,
    },
    order = "d-e-g-b",
  },
  {
    type = "technology",
    name = "logistic-spidertron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "logistic-spidertron",
      },
    },
    prerequisites = {
      "logistics-3",
      "walking-vehicle",
      "utility-science-pack",
    },
    unit = {
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
      count = 2000,
    },
    order = "d-e-g-d",
  },
  {
    type = "technology",
    name = "heavy-spidertron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "heavy-spidertron",
      },
    },
    prerequisites = {
      "spidertron",
    },
    unit = {
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
      count = 2500,
    },
    order = "d-e-g-e",
  },
})

--[[
  {
    type = "technology",
    name = "spidertron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "spidertron"
      },
      {
        type = "unlock-recipe",
        recipe = "spidertron-remote"
      }
    },
    prerequisites =
    {
      "military-4",
      "exoskeleton-equipment",
      "fusion-reactor-equipment",
      "rocketry",
      "rocket-control-unit",
      "effectivity-module-3"
    },
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 30,
      count = 2500
    },
    order = "d-e-g"
  },
]]
