local sounds = require("__base__.prototypes.entity.sounds")

if settings.startup["bobmods-warfare-robotupdate"].value == true then
  function bobmods.warfare.robot_shadow()
    return {
      filename = "__bobwarfare__/graphics/entities/robots/robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37,
      frame_count = 1,
      direction_count = 1,
    }
  end

  function bobmods.warfare.robot_picture(filename)
    return {
      filename = filename,
      priority = "high",
      width = 32,
      height = 32,
      frame_count = 1,
      direction_count = 1,
    }
  end

  data:extend({
    {
      type = "item",
      name = "bob-defender-robot",
      icon = "__bobwarfare__/graphics/icons/defender.png",
      icon_size = 32,
      subgroup = "bob-combat-robots",
      order = "e-a-a",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
    {
      type = "recipe",
      name = "bob-defender-robot",
      enabled = false,
      energy_required = 3,
      ingredients = {},
      results = { { type = "item", name = "bob-defender-robot", amount = 1 } },
    },

    {
      type = "item",
      name = "bob-distractor-robot",
      icon = "__bobwarfare__/graphics/icons/distractor.png",
      icon_size = 32,
      subgroup = "bob-combat-robots",
      order = "e-a-b",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
    {
      type = "recipe",
      name = "bob-distractor-robot",
      enabled = false,
      energy_required = 3,
      ingredients = {},
      results = { { type = "item", name = "bob-distractor-robot", amount = 1 } },
    },

    {
      type = "item",
      name = "bob-destroyer-robot",
      icon = "__bobwarfare__/graphics/icons/destroyer.png",
      icon_size = 32,
      subgroup = "bob-combat-robots",
      order = "e-a-c",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
        volume = 0.5,
      },
    },
    {
      type = "recipe",
      name = "bob-destroyer-robot",
      enabled = false,
      energy_required = 3,
      ingredients = {},
      results = { { type = "item", name = "bob-destroyer-robot", amount = 1 } },
    },
  })

  data.raw.capsule["defender-capsule"].icon = nil
  data.raw.capsule["defender-capsule"].icons = {
    {
      icon = "__bobwarfare__/graphics/icons/defender-capsule.png",
      icon_size = 32,
    },
    {
      icon = "__base__/graphics/icons/defender.png",
      icon_size = 64,
      scale = 0.75 * 0.5,
    },
  }
  data.raw.capsule["distractor-capsule"].icon = nil
  data.raw.capsule["distractor-capsule"].icons = {
    {
      icon = "__bobwarfare__/graphics/icons/distractor-capsule.png",
      icon_size = 32,
    },
    {
      icon = "__base__/graphics/icons/distractor.png",
      icon_size = 64,
      scale = 0.75 * 0.5,
    },
  }
  data.raw.capsule["destroyer-capsule"].icon = nil
  data.raw.capsule["destroyer-capsule"].icons = {
    {
      icon = "__bobwarfare__/graphics/icons/destroyer-capsule.png",
      icon_size = 32,
    },
    {
      icon = "__base__/graphics/icons/destroyer.png",
      icon_size = 64,
      scale = 0.75 * 0.5,
    },
  }

  data:extend({
    {
      type = "item",
      name = "bob-laser-robot",
      icon = "__bobwarfare__/graphics/icons/laser-robot.png",
      icon_size = 32,
      subgroup = "bob-combat-robots",
      order = "e-a-d",
      stack_size = 50,
      drop_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
        volume = 0.5,
      },
    },

    {
      type = "recipe",
      name = "bob-laser-robot",
      enabled = false,
      energy_required = 3,
      ingredients = {},
      results = { { type = "item", name = "bob-laser-robot", amount = 1 } },
    },

    {
      type = "recipe",
      name = "bob-laser-robot-capsule",
      enabled = false,
      energy_required = 1,
      ingredients = {
        { type = "item", name = "bob-laser-robot", amount = 5 },
      },
      results = { { type = "item", name = "bob-laser-robot-capsule", amount = 1 } },
    },

    {
      type = "capsule",
      name = "bob-laser-robot-capsule",
      icons = {
        {
          icon = "__bobwarfare__/graphics/icons/laser-robot-capsule.png",
          icon_size = 32,
        },
        {
          icon = "__bobwarfare__/graphics/icons/laser-robot.png",
          icon_size = 32,
          scale = 0.75,
        },
      },

      capsule_action = {
        type = "throw",
        attack_parameters = {
          type = "projectile",
          activation_type = "throw",
          ammo_category = "capsule",
          cooldown = 30,
          projectile_creation_distance = 0.6,
          range = 25,
          ammo_type = {
            target_type = "position",
            action = {
              type = "direct",
              action_delivery = {
                type = "projectile",
                projectile = "bob-laser-robot-capsule",
                starting_speed = 0.3,
              },
            },
          },
        },
      },
      subgroup = "capsule",
      order = "g[laser-robot-capsule]",
      stack_size = 100,
      drop_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/robotic-inventory-move.ogg",
        volume = 0.8,
      },
      pick_sound = {
        filename = "__base__/sound/item/robotic-inventory-pickup.ogg",
        volume = 0.5,
      },
    },

    {
      type = "projectile",
      name = "bob-laser-robot-capsule",
      flags = { "not-on-map" },
      acceleration = 0.005,
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "bob-laser-robot-entity",
            offsets = { { -0.7, -0.7 }, { -0.7, 0.7 }, { 0.7, -0.7 }, { 0.7, 0.7 }, { 0, 0 } },
          },
        },
      },
      light = { intensity = 0.5, size = 4 },
      animation = {
        filename = "__bobwarfare__/graphics/entities/robots/laser-robot-capsule.png",
        frame_count = 1,
        width = 32,
        height = 32,
        priority = "high",
      },
      shadow = {
        filename = "__bobwarfare__/graphics/entities/robots/combat-robot-capsule-shadow.png",
        frame_count = 1,
        width = 32,
        height = 32,
        priority = "high",
      },
      smoke = capsule_smoke,
      hidden = true,
    },

    {
      type = "combat-robot",
      name = "bob-laser-robot-entity",
      localised_name = { "item-name.bob-laser-robot" },
      icon = "__bobwarfare__/graphics/icons/laser-robot.png",
      icon_size = 32,
      flags = { "placeable-player", "player-creation", "placeable-off-grid", "not-on-map", "not-repairable" },
      minable = { mining_time = 0.1, result = "bob-laser-robot" },
      subgroup = "capsule",
      order = "e-a-d",
      max_health = 100,
      collision_box = { { 0, 0 }, { 0, 0 } },
      selection_box = { { -0.5, -1.5 }, { 0.5, -0.5 } },
      speed = 0.05,
      follows_player = true,
      friction = 0.01,
      range_from_player = 6.0,
      time_to_live = 60 * 60 * 10, -- 10 mins

      destroy_action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion",
          },
        },
      },

      attack_parameters = {
        type = "beam",
        ammo_category = "laser",
        cooldown = 20,
        range = 15,
        damage_modifier = 2.5,
        sound = make_laser_sounds(),
        ammo_type = {
          action = {
            type = "direct",
            action_delivery = {
              type = "beam",
              beam = "bob-laser-beam-sapphire",
              max_length = 15,
              duration = 20,
              source_offset = { 0.15, -0.5 },
            },
          },
        },
      },

      working_sound = sounds.flying_robot(),
      idle = bobmods.warfare.robot_picture("__bobwarfare__/graphics/entities/robots/laser-robot.png"),
      shadow_idle = bobmods.warfare.robot_shadow(),
      in_motion = bobmods.warfare.robot_picture("__bobwarfare__/graphics/entities/robots/laser-robot.png"),
      shadow_in_motion = bobmods.warfare.robot_shadow(),
    },

    {
      type = "technology",
      name = "bob-laser-robot",
      icon = "__bobwarfare__/graphics/icons/laser-robot.png",
      icon_size = 32,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-laser-robot",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-laser-robot-capsule",
        },
      },
      prerequisites = {
        "destroyer",
        "production-science-pack",
      },
      unit = {
        count = 500,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "military-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-p-b-c",
    },
  })
end
