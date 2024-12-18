local function boblaserammo(projectile)
  return {
    type = "beam",
    action = {
      type = "direct",
      action_delivery = {
        type = "beam",
        beam = projectile,
        max_length = 25,
        duration = 20,
      },
    },
  }
end

local function bobmissileammo(projectile)
  return {
    action = {
      type = "direct",
      action_delivery = {
        type = "projectile",
        projectile = projectile,
        starting_speed = 0.1,
        source_effects = {
          type = "create-entity",
          entity_name = "explosion-gunshot",
        },
      },
    },
  }
end

local ammodropmove = {
  filename = "__base__/sound/item/ammo-small-inventory-move.ogg",
  volume = 0.8,
}

local ammopickup = {
  filename = "__base__/sound/item/ammo-small-inventory-pickup.ogg",
  volume = 0.7,
}

local largeammodropmove = {
  filename = "__base__/sound/item/ammo-large-inventory-move.ogg",
  volume = 0.6,
}

local largeammopickup = {
  filename = "__base__/sound/item/ammo-large-inventory-pickup.ogg",
  volume = 0.7,
}

data:extend({
  {
    type = "ammo",
    name = "bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-1",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        {
          type = "direct",
          action_delivery = {
            {
              type = "instant",
              source_effects = {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot",
                },
              },
              target_effects = {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot",
                },
                {
                  type = "damage",
                  damage = { amount = 16, type = "physical" },
                },
                {
                  type = "activate-impact",
                  deliver_category = "bullet",
                },
              },
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 20000,
  },

  {
    type = "ammo",
    name = "ap-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/ap-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-2",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 12, type = "bob-pierce" },
            },
            {
              type = "activate-impact",
              deliver_category = "bullet",
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "he-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/he-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-5",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                radius = 3,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    {
                      type = "damage",
                      damage = { amount = 12, type = "explosion" },
                    },
                  },
                },
              },
            },
            {
              type = "activate-impact",
              deliver_category = "bullet",
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "flame-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/flame-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-7",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                radius = 3,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    {
                      type = "damage",
                      damage = { amount = 12, type = "fire" },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "acid-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/acid-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-4",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                radius = 3,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    {
                      type = "damage",
                      damage = { amount = 12, type = "acid" },
                    },
                  },
                },
              },
            },
            {
              type = "activate-impact",
              deliver_category = "bullet",
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "poison-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/poison-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-6",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                radius = 3,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    {
                      type = "damage",
                      damage = { amount = 12, type = "poison" },
                    },
                  },
                },
              },
            },
            {
              type = "activate-impact",
              deliver_category = "bullet",
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "electric-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/electric-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-3",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 12, type = "electric" },
            },
            {
              type = "activate-impact",
              deliver_category = "bullet",
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "better-shotgun-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c1",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 20,
        action_delivery = {
          type = "projectile",
          projectile = "better-shotgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 20000,
  },

  {
    type = "ammo",
    name = "shotgun-ap-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-ap-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c2",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 20,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-ap-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "shotgun-electric-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-electric-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c3",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 20,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-electric-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "shotgun-explosive-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-explosive-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c5",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 10,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-explosive-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "shotgun-flame-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-flame-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c7",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 10,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-flame-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "shotgun-acid-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-acid-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c4",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 10,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-acid-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "shotgun-poison-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-poison-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c6",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 10,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-poison-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "shotgun-uranium-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-uranium-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c8",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 20,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-uranium-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-glass.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-0",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-glass-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-ruby",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-ruby.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-1",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-ruby-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-sapphire",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-sapphire.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-2",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-sapphire-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-emerald",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-emerald.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-3",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-emerald-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-amethyst",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-amethyst.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-4",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-amethyst-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-topaz",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-topaz.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-5",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-topaz-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-diamond",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-diamond.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-6",
    stack_size = 200,
    magazine_size = 50,
    ammo_category = "laser-rifle",
    ammo_type = boblaserammo("bob-laser-beam-diamond-ammo"),
    drop_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/weapon-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 20000,
  },

  {
    type = "ammo",
    name = "bob-rocket",
    icon = "__bobwarfare__/graphics/icons/rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-0",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "bob-piercing-rocket",
    icon = "__bobwarfare__/graphics/icons/piercing-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-piercing-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-1",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "bob-electric-rocket",
    icon = "__bobwarfare__/graphics/icons/electric-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-electric-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-2",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "bob-explosive-rocket",
    icon = "__bobwarfare__/graphics/icons/explosive-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-explosive-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-4",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "bob-flame-rocket",
    icon = "__bobwarfare__/graphics/icons/flame-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-flame-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-6",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "bob-poison-rocket",
    icon = "__bobwarfare__/graphics/icons/poison-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-poison-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-5",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },

  {
    type = "ammo",
    name = "bob-acid-rocket",
    icon = "__bobwarfare__/graphics/icons/acid-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-acid-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-3",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },
})

data:extend({
  {
    type = "ammo",
    name = "scatter-cannon-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/cannon-shell.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/shotgun-shell.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 },
      },
    },
    ammo_category = "cannon-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 20,
        action_delivery = {
          type = "projectile",
          projectile = "cannon-projectile-pellet",
          starting_speed = 1,
          direction_deviation = 0.5,
          range_deviation = 0.3,
          max_range = 20,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-c[scatter]",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 20000,
  },
})

data:extend({
  {
    type = "capsule",
    name = "fire-capsule",
    icon = "__bobwarfare__/graphics/icons/fire-capsule.png",
    icon_size = 32,
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
              projectile = "fire-capsule",
              starting_speed = 0.3,
            },
          },
        },
      },
    },
    subgroup = "capsule",
    order = "b[fire-capsule]",
    stack_size = 100,
    drop_sound = {
      filename = "__base__/sound/item/grenade-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/grenade-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/grenade-inventory-pickup.ogg",
      volume = 0.8,
    },
    weight = 10000,
  },
})

data:extend({
  {
    type = "ammo",
    name = "poison-artillery-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/poison-capsule.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 },
      },
    },
    icon_size = 32,
    ammo_category = "artillery-shell",
    ammo_type = {
      target_type = "position",
      clamp_position = true,
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "poison-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[poison]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "ammo",
    name = "fire-artillery-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
      },
      {
        icon = "__bobwarfare__/graphics/icons/fire-capsule.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -8, -8 },
      },
    },
    icon_size = 32,
    ammo_category = "artillery-shell",
    ammo_type = {
      target_type = "position",
      clamp_position = true,
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "fire-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[fire]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "ammo",
    name = "explosive-artillery-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/icons/grenade.png",
        icon_size = 64,
        scale = 0.25,
        shift = { -8, -8 },
      },
    },
    icon_size = 32,
    ammo_category = "artillery-shell",
    ammo_type = {
      target_type = "position",
      clamp_position = true,
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "explosive-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[explosive]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "ammo",
    name = "distractor-artillery-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
      },
      {
        icon = "__bobwarfare__/graphics/icons/distractor.png",
        icon_size = 32,
        scale = 0.5,
        shift = { -8, -8 },
      },
    },
    icon_size = 32,
    ammo_category = "artillery-shell",
    ammo_type = {
      target_type = "position",
      clamp_position = true,
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "distractor-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[distractor]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-move.ogg",
      volume = 0.5,
    },
    pick_sound = {
      filename = "__base__/sound/item/artillery-large-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "ammo",
    name = "atomic-artillery-shell",
    icons = {
      {
        icon = "__base__/graphics/icons/artillery-shell.png",
        icon_size = 64,
      },
      {
        icon = "__base__/graphics/technology/atomic-bomb.png",
        icon_size = 256,
        scale = 0.0625,
        shift = { -8, -8 },
      },
    },
    icon_size = 32,
    ammo_category = "artillery-shell",
    ammo_type = {
      cooldown_modifier = 3,
      target_type = "position",
      clamp_position = true,
      action = {
        type = "direct",
        action_delivery = {
          type = "artillery",
          projectile = "atomic-artillery-projectile",
          starting_speed = 1,
          direction_deviation = 0,
          range_deviation = 0,
          source_effects = {
            type = "create-explosion",
            entity_name = "artillery-cannon-muzzle-flash",
          },
        },
      },
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[atomic-bomb]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/atomic-bomb-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/atomic-bomb-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/atomic-bomb-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 1500000,
  },
})

data.raw.ammo["artillery-shell"].order = "e[artillery-shell]"

data:extend({
  {
    type = "ammo",
    name = "plasma-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/plasma-bullet-magazine.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[magazine]-8",
    stack_size = 200,
    magazine_size = 25,
    ammo_category = "bullet",
    ammo_type = {
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
          target_effects = {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot",
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                radius = 3,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    {
                      type = "damage",
                      damage = { amount = 15, type = "plasma" },
                    },
                  },
                },
              },
            },
            {
              type = "activate-impact",
              deliver_category = "bullet",
            },
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },
  {
    type = "ammo",
    name = "shotgun-plasma-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-plasma-shell.png",
    icon_size = 32,
    subgroup = "bob-ammo",
    order = "b[shotgun]-c9",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "shotgun-shell",
    ammo_type = {
      target_type = "direction",
      action = {
        type = "direct",
        repeat_count = 10,
        action_delivery = {
          type = "projectile",
          projectile = "shotgun-plasma-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-gunshot",
          },
        },
      },
    },
    drop_sound = ammodropmove,
    inventory_move_sound = ammodropmove,
    pick_sound = ammopickup,
    weight = 40000,
  },
  {
    type = "ammo",
    name = "bob-plasma-rocket",
    icon = "__bobwarfare__/graphics/icons/plasma-rocket.png",
    icon_size = 32,
    ammo_category = "rocket",
    ammo_type = bobmissileammo("bob-plasma-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-7",
    stack_size = 200,
    drop_sound = largeammodropmove,
    inventory_move_sound = largeammodropmove,
    pick_sound = largeammopickup,
    weight = 40000,
  },
})
