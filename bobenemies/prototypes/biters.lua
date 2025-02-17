--Basic
bobmods.enemies.new_biter({
  name = "small-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-a",
  tier = 1,
  explosion_resist = "high",
  tint = bobmods.enemies.small_biter_tint1,
  tint2 = bobmods.enemies.small_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 7, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("small-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "medium-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-b",
  tier = 2,
  explosion_resist = "high",
  tint = bobmods.enemies.medium_biter_tint1,
  tint2 = bobmods.enemies.medium_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 15, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("medium-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "big-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-c",
  tier = 3,
  explosion_resist = "high",
  tint = bobmods.enemies.big_biter_tint1,
  tint2 = bobmods.enemies.big_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 30, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("big-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-d",
  tier = 4,
  explosion_resist = "high",
  tint = bobmods.enemies.huge_biter_tint1,
  tint2 = bobmods.enemies.huge_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 50, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-e",
  tier = 5,
  explosion_resist = "high",
  tint = bobmods.enemies.giant_biter_tint1,
  tint2 = bobmods.enemies.giant_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 75, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-f",
  tier = 6,
  explosion_resist = "high",
  tint = bobmods.enemies.titan_biter_tint1,
  tint2 = bobmods.enemies.titan_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 100, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "behemoth-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-g",
  tier = 7,
  explosion_resist = "high",
  tint = bobmods.enemies.behemoth_biter_tint1,
  tint2 = bobmods.enemies.behemoth_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 40,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 150, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("behemoth-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/basic-biter.png" },
  },
  order = "a-c-h",
  tier = 8,
  explosion_resist = "high",
  tint = bobmods.enemies.leviathan_biter_tint1,
  tint2 = bobmods.enemies.leviathan_biter_tint2,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 240, type = "physical" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-biter", 0.9),
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

bobmods.enemies.new_biter({
  name = "bob-small-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-a",
  tier = 1,
  healing_per_tick = 0.04,
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
  tint2 = bobmods.enemies.small_tint,
  damaged_trigger_effect = piercing_reaction,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 5, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 5, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-piercing-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-medium-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-b",
  tier = 2,
  healing_per_tick = 0.04,
  movement_speed = 0.288,
  physical_resist = "high",
  pierce_resist = "high",
  explosion_resist = "high",
  laser_resist = "low",
  fire_resist = "high",
  poison_resist = "low",
  electric_resist = "low",
  tint = bobmods.enemies.piercing_tint,
  tint2 = bobmods.enemies.medium_tint,
  damaged_trigger_effect = piercing_reaction,
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 10, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 10, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-piercing-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-big-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-c",
  tier = 3,
  healing_per_tick = 0.08,
  movement_speed = 0.312,
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 20, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 20, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-piercing-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-d",
  tier = 4,
  healing_per_tick = 0.16,
  movement_speed = 0.324,
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 30, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 30, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-piercing-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-e",
  tier = 5,
  healing_per_tick = 0.4,
  movement_speed = 0.336,
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 45, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 45, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-piercing-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-f",
  tier = 6,
  healing_per_tick = 0.8,
  movement_speed = 0.348,
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 60, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 60, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-piercing-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "bob-behemoth-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-g",
  tier = 7,
  healing_per_tick = 1.2,
  movement_speed = 0.36,
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 40,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 100, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 100, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-piercing-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-piercing-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/piercing-biter.png" },
  },
  order = "b-c-h",
  tier = 8,
  healing_per_tick = 2,
  movement_speed = 0.384,
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 160, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 160, type = "bob-pierce" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-piercing-biter", 0.9),
  },
})

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

bobmods.enemies.new_biter({
  name = "bob-small-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-a",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 4, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 1.5,
          width = 1,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 3, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-electric-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-medium-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-b",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 10, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 3,
          width = 1.5,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 5, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-electric-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-big-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-c",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 20, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 4,
          width = 2,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 10, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-electric-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-d",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 33, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 4.5,
          width = 2.25,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 17, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-electric-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-e",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 50, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 5,
          width = 2.5,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 25, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-electric-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-f",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 66, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 5.25,
          width = 2.75,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 34, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-electric-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "bob-behemoth-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-g",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 40,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 100, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 5.5,
          width = 3,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 50, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-electric-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-electric-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/electric-biter.png" },
  },
  order = "c-c-h",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 160, type = "physical" },
              },
            },
          },
        },
        {
          type = "line",
          range = 6,
          width = 3.5,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 80, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-electric-biter", 0.9),
  },
})

data.raw.unit["bob-small-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 8,
}
data.raw.unit["bob-medium-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 12,
}
data.raw.unit["bob-big-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 16,
}
data.raw.unit["bob-huge-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.5,
  size = 20,
}
data.raw.unit["bob-giant-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.6,
  size = 24,
}
data.raw.unit["bob-titan-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.75,
  size = 28,
}
data.raw.unit["bob-behemoth-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 0.9,
  size = 32,
}
data.raw.unit["bob-leviathan-electric-biter"].light = {
  color = { 0.85, 0.85, 1 },
  intensity = 1,
  size = 40,
}
data.raw.unit["bob-small-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-medium-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-big-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-huge-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-giant-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-titan-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-behemoth-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-leviathan-electric-biter"].run_animation.layers[2].draw_as_glow = true
data.raw.unit["bob-small-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-medium-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-big-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-huge-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-giant-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-titan-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-behemoth-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true
data.raw.unit["bob-leviathan-electric-biter"].attack_parameters.animation.layers[2].draw_as_glow = true

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

bobmods.enemies.new_biter({
  name = "bob-small-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-a",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 4, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-acid-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-medium-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-b",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 10, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 5, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-acid-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-big-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-c",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 20, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 10, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-acid-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-d",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 33, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 17, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-acid-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-e",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 50, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 25, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-acid-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-f",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 35,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 66, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 34, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-acid-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "bob-behemoth-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-g",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 40,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 100, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 50, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-acid-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-acid-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/acid-biter.png" },
  },
  order = "d-c-h",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 160, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 80, type = "acid" },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-acid-biter", 0.9),
  },
})

--Explosive
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
            type = "create-entity",
            entity_name = "big-scorchmark",
            probability = 0.1,
            check_buildability = true,
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

bobmods.enemies.new_biter({
  name = "bob-small-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-a",
  tier = 1,
  max_health = 10,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.small_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 20,
    dying_radius = 3,
    dying_probability = 0.25,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 4, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 1.8,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 3, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-explosive-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-medium-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-b",
  tier = 2,
  max_health = 50,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.medium_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 60,
    dying_radius = 3.25,
    dying_probability = 0.3,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 10, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 1.9,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 5, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-explosive-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-big-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-c",
  tier = 3,
  max_health = 150,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.big_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 90,
    dying_radius = 3.5,
    dying_probability = 0.35,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 20, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 2,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 10, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-explosive-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-d",
  tier = 4,
  max_health = 500,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.huge_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 120,
    dying_radius = 3.75,
    dying_probability = 0.4,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 33, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 2.1,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 17, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-explosive-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-e",
  tier = 5,
  max_health = 2000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.giant_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 180,
    dying_radius = 4,
    dying_probability = 0.45,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 50, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 2.25,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 25, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-explosive-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-f",
  tier = 6,
  max_health = 6000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.titan_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 240,
    dying_radius = 4.25,
    dying_probability = 0.5,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 45,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 66, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 2.5,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 34, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-explosive-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "bob-behemoth-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-g",
  tier = 7,
  max_health = 20000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 300,
    dying_radius = 4.5,
    dying_probability = 0.6,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 50,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 100, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 2.75,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 50, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-explosive-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-explosive-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/explosive-biter.png" },
  },
  order = "e-c-h",
  tier = 8,
  max_health = 60000,
  explosion_resist = "very-high",
  laser_resist = "low",
  fire_resist = "low",
  electric_resist = "low",
  acid_resist = "high",
  tint = bobmods.enemies.explosive_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  dying_trigger_effect = expl_dying_action({
    attack_damage = 800,
    dying_radius = 6,
    dying_probability = 0.8,
  }),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 55,
    cooldown_deviation = 0.15,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 160, type = "physical" },
              },
            },
          },
        },
        {
          type = "area",
          radius = 3,
          force = "not-same",
          trigger_from_target = true,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 80, type = "explosion" },
              },
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-explosive-biter", 0.9),
  },
})

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw.unit["bob-huge-explosive-biter"].max_health = 1800
  data.raw.unit["bob-giant-explosive-biter"].max_health = 6000
  data.raw.unit["bob-titan-explosive-biter"].max_health = 19000
  data.raw.unit["bob-behemoth-explosive-biter"].max_health = 60000
  data.raw.unit["bob-leviathan-explosive-biter"].max_health = 250000
end

--Poison
local poison_reaction = function(sticker_name, smoke_name, damage, healing, scale)
  local sticker = {
    type = "sticker",
    name = sticker_name,
    flags = { "not-on-map" },
    force_visibility = "ally",
    animation = {
      filename = "__bobenemies__/graphics/entity/invisible.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    duration_in_ticks = 1800,
    update_effects = {
      {
        time_cooldown = 300,
        effect = {
          type = "create-smoke",
          entity_name = smoke_name,
          initial_height = 0,
          show_in_tooltip = true,
        },
      },
      {
        time_cooldown = 150,
        effect = {
          type = "create-entity",
          show_in_tooltip = false,
          entity_name = smoke_name .. "-visual-dummy",
        },
      },
    },
  }

  local alienpoisonvisual = util.table.deepcopy(data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"])
  alienpoisonvisual.name = smoke_name .. "-visual-dummy"
  alienpoisonvisual.localised_name = { "entity-name.bob-enemy-poison-smoke" }
  alienpoisonvisual.color = { r = 0.15, g = 1, b = 0.15, a = 0.250 }
  alienpoisonvisual.attach_to_target = true
  alienpoisonvisual.duration = 360
  alienpoisonvisual.fade_away_duration = 60
  alienpoisonvisual.particle_count = scale ^ 2
  alienpoisonvisual.particle_spread = { scale, scale }
  alienpoisonvisual.particle_scale_factor = { 2, 1.4 }

  local smoke = {
    type = "smoke-with-trigger",
    name = smoke_name,
    localised_name = { "entity-name.bob-enemy-poison-smoke" },
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
    attach_to_target = true,
    duration = 300,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.15, g = 1, b = 0.15, a = 0.690 },
    action = {
      {
        type = "area",
        radius = scale,
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
        radius = scale,
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
    action_cooldown = 30,
  }

  data:extend({ sticker, alienpoisonvisual, smoke })

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

bobmods.enemies.new_biter({
  name = "bob-small-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-a",
  tier = 1,
  healing_per_tick = 0.04,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.small_tint,
  localised_description = { "entity-description.bob-poison-enemy-small" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-small", "bob-enemy-poison-smoke-small", 6, -2, 2),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 0.25,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 8, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 4, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-poison-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-medium-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-b",
  tier = 2,
  healing_per_tick = 0.04,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.medium_tint,
  localised_description = { "entity-description.bob-poison-enemy-medium" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-medium", "bob-enemy-poison-smoke-medium", 12, -4, 3),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 0.5,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 12, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 4, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-poison-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-big-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-c",
  tier = 3,
  healing_per_tick = 0.08,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.big_tint,
  localised_description = { "entity-description.bob-poison-enemy-big" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-big", "bob-enemy-poison-smoke-big", 18, -6, 4),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 1,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 9, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-poison-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-d",
  tier = 4,
  healing_per_tick = 0.16,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.huge_tint,
  localised_description = { "entity-description.bob-poison-enemy-huge" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-huge", "bob-enemy-poison-smoke-huge", 24, -8, 4.6),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 2,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 9, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-poison-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-e",
  tier = 5,
  healing_per_tick = 0.4,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.giant_tint,
  localised_description = { "entity-description.bob-poison-enemy-giant" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-giant", "bob-enemy-poison-smoke-giant", 30, -20, 5.2),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 4,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 9, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-poison-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-f",
  tier = 6,
  healing_per_tick = 0.8,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.titan_tint,
  localised_description = { "entity-description.bob-poison-enemy-titan" },
  damaged_trigger_effect = poison_reaction("poison-rage-sticker-titan", "bob-enemy-poison-smoke-titan", 36, -24, 5.8),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 6,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 9, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-poison-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "bob-behemoth-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-g",
  tier = 7,
  healing_per_tick = 1.2,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.behemoth_tint,
  localised_description = { "entity-description.bob-poison-enemy-behemoth" },
  damaged_trigger_effect = poison_reaction(
    "poison-rage-sticker-behemoth",
    "bob-enemy-poison-smoke-behemoth",
    42,
    -42,
    6.4
  ),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 40,
    cooldown_deviation = 0.15,
    damage_modifier = 9,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 9, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-poison-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-poison-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/poison-biter.png" },
  },
  order = "f-c-h",
  tier = 8,
  healing_per_tick = 2,
  fire_resist = "low",
  poison_resist = "high",
  acid_resist = "high",
  tint = bobmods.enemies.poison_tint,
  tint2 = bobmods.enemies.leviathan_tint,
  localised_description = { "entity-description.bob-poison-enemy-leviathan" },
  damaged_trigger_effect = poison_reaction(
    "poison-rage-sticker-leviathan",
    "bob-enemy-poison-smoke-leviathan",
    60,
    -60,
    7
  ),
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 45,
    cooldown_deviation = 0.15,
    damage_modifier = 14,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 9, type = "physical" },
            },
            {
              type = "damage",
              damage = { amount = 3, type = "poison" },
            },
            {
              type = "create-sticker",
              sticker = "enemy-poison-sticker",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-poison-biter", 0.9),
  },
})

--Fire
bobmods.enemies.new_biter({
  name = "bob-small-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/small-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-a",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 0.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 0.5,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 4, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-small-fire-biter", 3.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-medium-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/medium-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-b",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 1,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 5, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-medium-fire-biter", 2.6),
  },
})

bobmods.enemies.new_biter({
  name = "bob-big-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/big-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-c",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.5,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 2,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 4, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-big-fire-biter", 1.8),
  },
})

bobmods.enemies.new_biter({
  name = "bob-huge-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/huge-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-d",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 1.75,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 3,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 5, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-huge-fire-biter", 1.5),
  },
})

bobmods.enemies.new_biter({
  name = "bob-giant-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/giant-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-e",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 4,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 6.25, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-giant-fire-biter", 1.3),
  },
})

bobmods.enemies.new_biter({
  name = "bob-titan-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/titan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-f",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.25,
    cooldown = 35,
    cooldown_deviation = 0.15,
    damage_modifier = 5,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 8, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-titan-fire-biter", 1.15),
  },
})

bobmods.enemies.new_biter({
  name = "bob-behemoth-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/behemoth-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-g",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 2.5,
    cooldown = 40,
    cooldown_deviation = 0.15,
    damage_modifier = 6,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 11, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-behemoth-fire-biter", 1),
  },
})

bobmods.enemies.new_biter({
  name = "bob-leviathan-fire-biter",
  icons = {
    { icon = "__bobenemies__/graphics/icons/leviathan-biter.png" },
    { icon = "__bobenemies__/graphics/icons/fire-biter.png" },
  },
  order = "g-c-h",
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
  attack_parameters = {
    type = "projectile",
    range_mode = "bounding-box-to-bounding-box",
    range = 3,
    cooldown = 45,
    cooldown_deviation = 0.15,
    damage_modifier = 8,
    ammo_category = "melee",
    ammo_type = {
      target_type = "entity",
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "damage",
              damage = { amount = 12.5, type = "physical" },
            },
            {
              type = "create-sticker",
              sticker = "bob-enemy-fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-fire",
              entity_name = "bob-enemy-fire",
              show_in_tooltip = true,
            },
          },
        },
      },
    },
  },
  factoriopedia_simulation = {
    init = enemy_simulation("bob-leviathan-fire-biter", 0.9),
  },
})
