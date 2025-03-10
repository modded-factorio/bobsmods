if settings.startup["bobmods-warfare-spidertron-overhaul"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-mech-leg-segment",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-leg-segment.png",
      icon_size = 128,
      subgroup = "bob-mech-parts",
      order = "s[mech]-b[leg-segment]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mech-foot",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-foot.png",
      icon_size = 64,
      subgroup = "bob-mech-parts",
      order = "s[mech]-b[foot]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mech-hip",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-hip.png",
      icon_size = 64,
      subgroup = "bob-mech-parts",
      order = "s[mech]-b[hip]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mech-knee",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-knee.png",
      icon_size = 128,
      subgroup = "bob-mech-parts",
      order = "s[mech]-b[knee]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mech-leg",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-leg.png",
      icon_size = 256,
      subgroup = "bob-mech-parts",
      order = "s[mech]-a[leg]",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mech-brain",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-brain.png",
      icon_size = 32,
      subgroup = "bob-mech-parts",
      order = "s[mech]-a[brain]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/electric-small-inventory-move.ogg",
        volume = 1,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/electric-small-inventory-move.ogg",
        volume = 1,
      },
      pick_sound = {
        filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
        volume = 0.7,
      },
    },
    {
      type = "item",
      name = "bob-mech-frame",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-body.png",
      icon_size = 128,
      subgroup = "bob-mech-parts",
      order = "s[mech]-a[frame]",
      stack_size = 5,
      drop_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-move.ogg",
        volume = 0.6,
      },
      pick_sound = {
        filename = "__base__/sound/item/mechanical-large-inventory-pickup.ogg",
        volume = 0.8,
      },
    },
    {
      type = "item",
      name = "bob-mech-armor-plate",
      icon = "__bobwarfare__/graphics/icons/spidertron/mech-armor-plate.png",
      icon_size = 128,
      subgroup = "bob-mech-parts",
      order = "s[mech]-a[armor-plate]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/metal-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/metal-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/metal-large-inventory-pickup.ogg",
        volume = 0.7,
      },
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-mech-leg-segment",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "pipe", amount = 3 },
        { type = "item", name = "steel-plate", amount = 2 },
      },
      results = { { type = "item", name = "bob-mech-leg-segment", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-mech-foot",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 1 },
      },
      results = { { type = "item", name = "bob-mech-foot", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-mech-hip",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 2 },
        { type = "item", name = "electric-engine-unit", amount = 5 },
        { type = "item", name = "iron-gear-wheel", amount = 4 },
      },
      results = { { type = "item", name = "bob-mech-hip", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-mech-knee",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 2 },
        { type = "item", name = "electric-engine-unit", amount = 10 },
        { type = "item", name = "iron-gear-wheel", amount = 8 },
      },
      results = { { type = "item", name = "bob-mech-knee", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-mech-leg",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "bob-mech-leg-segment", amount = 2 },
        { type = "item", name = "bob-mech-foot", amount = 1 },
        { type = "item", name = "bob-mech-hip", amount = 1 },
        { type = "item", name = "bob-mech-knee", amount = 1 },
        { type = "item", name = "copper-cable", amount = 4 },
      },
      results = { { type = "item", name = "bob-mech-leg", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-mech-brain",
      enabled = false,
      energy_required = 2,
      ingredients = {},
      results = { { type = "item", name = "bob-mech-brain", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-mech-frame",
      enabled = false,
      energy_required = 5,
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 50 },
        { type = "item", name = "bob-mech-brain", amount = 1 },
      },
      results = { { type = "item", name = "bob-mech-frame", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-mech-armor-plate",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "low-density-structure", amount = 5 },
        { type = "item", name = "steel-plate", amount = 2 },
      },
      results = { { type = "item", name = "bob-mech-armor-plate", amount = 1 } },
      allow_productivity = true,
    },
  })
end

local spidertron_animations = require("__base__.prototypes.entity.spidertron-animations")
local sounds = require("__base__.prototypes.entity.sounds")

data.raw["spider-vehicle"]["spidertron"].order = "b[personal-transport]-c[spidertron]-c[spidertron]"

local factoriopedia_antron = {
  init = [[
    game.simulation.camera_zoom = 1.3
    game.simulation.camera_position = { 0, -1 }
    game.surfaces[1].create_entity({ name = "bob-antron", position = { 0, 0 } })
  ]],
}
local factoriopedia_tankotron = {
  init = [[
    game.simulation.camera_zoom = 1.3
    game.simulation.camera_position = { 0, -1 }
    game.surfaces[1].create_entity({ name = "bob-tankotron", position = { 0, 0 } })
  ]],
}
local factoriopedia_logistic_spidertron = {
  init = [[
    game.simulation.camera_zoom = 1.2
    game.simulation.camera_position = { 0, -1 }
    game.surfaces[1].create_entity({ name = "bob-logistic-spidertron", position = { 0, 0 } })
  ]],
}
local factoriopedia_heavy_spidertron = {
  init = [[
    game.simulation.camera_zoom = 0.8
    game.simulation.camera_position = { 0, -2 }
    game.surfaces[1].create_entity({ name = "bob-heavy-spidertron", position = { 0, 0 } })
  ]],
}

function bobmods.warfare.create_spidertron(arguments)
  local scale = arguments.scale
  local leg_scale = scale * arguments.leg_scale
  local spidertron_leg_resistances = util.copy(arguments.resistances) or {}
  if arguments.resistances then
    for i, resistances in pairs(spidertron_leg_resistances) do
      if resistances.type == "explosion" then
        spidertron_leg_resistances[i] = { type = "explosion", percent = 100 }
      end
      if resistances.type == "fire" then
        spidertron_leg_resistances[i] = { type = "fire", percent = 100 }
      end
    end
  else
    spidertron_leg_resistances = { { type = "explosion", percent = 100 }, { type = "fire", percent = 100 } }
  end
  data:extend({
    {
      type = "item-with-entity-data",
      name = arguments.name,
      icon = "__base__/graphics/icons/spidertron.png",
      icon_tintable = "__base__/graphics/icons/spidertron-tintable.png",
      icon_tintable_mask = "__base__/graphics/icons/spidertron-tintable-mask.png",
      icon_size = 64,
      subgroup = "transport",
      order = "b[personal-transport]-c[spidertron]-" .. arguments.order_letter .. "[" .. arguments.name .. "]",
      place_result = arguments.name,
      stack_size = 1,
      drop_sound = {
        filename = "__base__/sound/item/spidertron-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/spidertron-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/spidertron-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
    {
      type = "spider-vehicle",
      name = arguments.name,
      icon = "__base__/graphics/icons/spidertron.png",
      icon_size = 64,
      factoriopedia_simulation = arguments.factoriopedia_simulation,
      collision_box = { { -1 * scale, -1 * scale }, { 1 * scale, 1 * scale } },
      selection_box = { { -1 * scale, -1 * scale }, { 1 * scale, 1 * scale } },
      drawing_box_vertical_extension = 3 * scale,
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
      chain_shooting_cooldown_modifier = arguments.chain_shooting_cooldown_modifier or 0.5,
      automatic_weapon_cycling = arguments.automatic_weapon_cycling,
      torso_rotation_speed = arguments.torso_rotation_speed or 0.005,

      flags = { "placeable-neutral", "player-creation", "placeable-off-grid" },
      is_military_target = true,
      mined_sound = { filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8 },
      open_sound = { filename = "__base__/sound/spidertron/spidertron-door-open.ogg", volume = 0.45 },
      close_sound = { filename = "__base__/sound/spidertron/spidertron-door-close.ogg", volume = 0.4 },
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
        activity_to_speed_modifiers = {
          multiplier = 6.0,
          minimum = 1.0,
          offset = 0.93333333333,
        },
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
      selected_minimap_representation = {
        filename = "__base__/graphics/entity/spidertron/spidertron-map-selected.png",
        flags = { "icon" },
        size = { 128, 128 },
        scale = 0.5,
      },
      corpse = "spidertron-remnants",
      dying_explosion = "spidertron-explosion",
      energy_per_hit_point = 1,
      height = 1.5 * scale * leg_scale,
      selection_priority = 60,
      graphics_set = spidertron_torso_graphics_set(scale),
    },
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      1,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      2,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      3,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      4,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      5,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      6,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      7,
      spidertron_leg_resistances
    ),
    make_spidertron_leg(
      arguments.name,
      leg_scale,
      arguments.leg_thickness,
      arguments.leg_movement_speed,
      8,
      spidertron_leg_resistances
    ),
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
      legs = {
        { -- 1
          leg = arguments.name .. "-leg-1",
          mount_position = util.by_pixel(15 * scale, -22 * scale),
          ground_position = { 2.25 * leg_scale, -2.5 * leg_scale },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 2
          leg = arguments.name .. "-leg-2",
          mount_position = util.by_pixel(25 * scale, -6 * scale),
          ground_position = { 3 * leg_scale, 0 },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 3
          leg = arguments.name .. "-leg-4",
          mount_position = util.by_pixel(15 * scale, 17 * scale),
          ground_position = { 2.25 * leg_scale, 2.5 * leg_scale },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 4
          leg = arguments.name .. "-leg-5",
          mount_position = util.by_pixel(-15 * scale, -22 * scale),
          ground_position = { -2.25 * leg_scale, -2.5 * leg_scale },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 5
          leg = arguments.name .. "-leg-6",
          mount_position = util.by_pixel(-25 * scale, -6 * scale),
          ground_position = { -3 * leg_scale, 0 },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 6
          leg = arguments.name .. "-leg-8",
          mount_position = util.by_pixel(-15 * scale, 17 * scale),
          ground_position = { -2.25 * leg_scale, 2.5 * leg_scale },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
      },
    }
  else
    data.raw["spider-vehicle"][arguments.name].spider_engine = {
      legs = {
        { -- 1
          leg = arguments.name .. "-leg-1",
          mount_position = util.by_pixel(15 * scale, -22 * scale),
          ground_position = { 2.25 * leg_scale, -2.5 * leg_scale },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 2
          leg = arguments.name .. "-leg-2",
          mount_position = util.by_pixel(23 * scale, -10 * scale),
          ground_position = { 3 * leg_scale, -1 * leg_scale },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 3
          leg = arguments.name .. "-leg-3",
          mount_position = util.by_pixel(25 * scale, 4 * scale),
          ground_position = { 3 * leg_scale, 1 * leg_scale },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 4
          leg = arguments.name .. "-leg-4",
          mount_position = util.by_pixel(15 * scale, 17 * scale),
          ground_position = { 2.25 * leg_scale, 2.5 * leg_scale },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 5
          leg = arguments.name .. "-leg-5",
          mount_position = util.by_pixel(-15 * scale, -22 * scale),
          ground_position = { -2.25 * leg_scale, -2.5 * leg_scale },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 6
          leg = arguments.name .. "-leg-6",
          mount_position = util.by_pixel(-23 * scale, -10 * scale),
          ground_position = { -3 * leg_scale, -1 * leg_scale },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 7
          leg = arguments.name .. "-leg-7",
          mount_position = util.by_pixel(-25 * scale, 4 * scale),
          ground_position = { -3 * leg_scale, 1 * leg_scale },
          walking_group = 2,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
        { -- 8
          leg = arguments.name .. "-leg-8",
          mount_position = util.by_pixel(-15 * scale, 17 * scale),
          ground_position = { -2.25 * leg_scale, 2.5 * leg_scale },
          walking_group = 1,
          leg_hit_the_ground_trigger = get_leg_hit_the_ground_trigger(),
        },
      },
    }
  end
end

data:extend({
  {
    type = "gun",
    name = "bob-spidertron-gatling-gun",
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
    name = "bob-spidertron-cannon-1",
    localised_name = { "item-name.bob-spidertron-cannon" },
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-a[spidertron-cannon-1]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 90,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0,
      projectile_center = { 0, 1.5 },
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
    name = "bob-spidertron-cannon-2",
    localised_name = { "item-name.bob-spidertron-cannon" },
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    hidden = true,
    auto_recycle = false,
    subgroup = "gun",
    order = "z[tank]-a[spidertron-cannon-2]",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 90,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 0,
      projectile_center = { 0, 1.5 },
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
    name = "bob-spidertron-cannon",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    subgroup = "gun",
    order = "g[spidertron-cannon]",
    stack_size = 10,
  },

  {
    type = "recipe",
    name = "bob-spidertron-cannon",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 15 },
      { type = "item", name = "iron-gear-wheel", amount = 5 },
    },
    results = { { type = "item", name = "bob-spidertron-cannon", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-antron",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "gun-turret", amount = 2 },
    },
    results = { { type = "item", name = "bob-antron", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-tankotron",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-spidertron-cannon", amount = 2 },
    },
    results = { { type = "item", name = "bob-tankotron", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-logistic-spidertron",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "gun-turret", amount = 2 },
      { type = "item", name = "steel-chest", amount = 1 },
    },
    results = { { type = "item", name = "bob-logistic-spidertron", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-heavy-spidertron",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "item", name = "rocket-launcher", amount = 8 },
    },
    results = { { type = "item", name = "bob-heavy-spidertron", amount = 1 } },
  },
})

bobmods.warfare.create_spidertron({
  name = "bob-antron",
  max_health = 1000,
  scale = 0.75, --1,
  leg_scale = 1, -- relative to scale
  leg_thickness = 1.25, -- relative to leg_scale
  leg_movement_speed = 0.75, --1,
  factoriopedia_simulation = factoriopedia_antron,
  order_letter = "a",
  guns = {
    "bob-spidertron-gatling-gun",
    "bob-spidertron-gatling-gun",
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
    { type = "explosion", decrease = 15, percent = 50 },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "fire", decrease = 15, percent = 60 },
    { type = "poison", decrease = 8, percent = 50 },
    { type = "laser", decrease = 0, percent = 50 },
    { type = "bob-plasma", decrease = 0, percent = 75 },
  },
})

bobmods.warfare.create_spidertron({
  name = "bob-tankotron",
  max_health = 2000,
  scale = 0.8, --1,
  leg_scale = 1.25, -- relative to scale
  leg_thickness = 1, -- relative to leg_scale
  leg_movement_speed = 1, --1,
  factoriopedia_simulation = factoriopedia_tankotron,
  order_letter = "b",
  guns = {
    "bob-spidertron-cannon-1",
    "bob-spidertron-cannon-2",
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
    { type = "explosion", decrease = 20, percent = 60 },
    { type = "acid", decrease = 0, percent = 60 },
    { type = "fire", decrease = 15, percent = 70 },
    { type = "poison", decrease = 8, percent = 60 },
    { type = "laser", decrease = 0, percent = 60 },
    { type = "bob-plasma", decrease = 0, percent = 90 },
  },
})

bobmods.warfare.create_spidertron({
  name = "bob-logistic-spidertron",
  max_health = 1000,
  scale = 1.25, --1,
  leg_scale = 0.8, -- relative to scale
  leg_thickness = 1, -- relative to leg_scale
  leg_movement_speed = 1, --1,
  factoriopedia_simulation = factoriopedia_logistic_spidertron,
  order_letter = "d",
  guns = {
    "bob-spidertron-gatling-gun",
    "bob-spidertron-gatling-gun",
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
    { type = "explosion", decrease = 15, percent = 50 },
    { type = "acid", decrease = 5, percent = 50 },
    { type = "fire", decrease = 15, percent = 60 },
    { type = "poison", decrease = 8, percent = 50 },
    { type = "laser", decrease = 0, percent = 50 },
    { type = "bob-plasma", decrease = 0, percent = 75 },
  },
})

bobmods.warfare.create_spidertron({
  name = "bob-heavy-spidertron",
  max_health = 5000,
  scale = 1.25,
  leg_scale = 1.25, -- relative to scale
  leg_thickness = 1, -- relative to leg_scale
  leg_movement_speed = 1.5,
  factoriopedia_simulation = factoriopedia_heavy_spidertron,
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
    { type = "bob-pierce", decrease = 0, percent = 60 },
    { type = "electric", decrease = 10, percent = 75 },
    { type = "explosion", decrease = 40, percent = 70 },
    { type = "acid", decrease = 25, percent = 75 },
    { type = "fire", decrease = 25, percent = 90 },
    { type = "poison", decrease = 12, percent = 80 },
    { type = "laser", decrease = 0, percent = 75 },
    { type = "bob-plasma", decrease = 0, percent = 95 },
  },
})

data.raw.technology.spidertron.order = "d-e-g-c"
data:extend({
  {
    type = "technology",
    name = "bob-walking-vehicle",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-antron",
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
    name = "bob-tankotron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-tankotron",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-spidertron-cannon",
      },
    },
    prerequisites = {
      "bob-walking-vehicle",
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
    name = "bob-logistic-spidertron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-logistic-spidertron",
      },
    },
    prerequisites = {
      "logistics-3",
      "bob-walking-vehicle",
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
    name = "bob-heavy-spidertron",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-heavy-spidertron",
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
