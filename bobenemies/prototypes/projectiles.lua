data:extend{
  bobmods.enemies.acid_stream{
    name = "bob-acid-stream",
    scale = 1,
    tint = bob_acid_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-fire",
            entity_name = "acid-splash-fire-worm-big"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "acid"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                }
              }
            }
          }
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-poison-stream",
    scale = 1,
    tint = bob_poison_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-entity",
            entity_name = "small-poison-cloud"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 8, type = "poison"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-fire-stream",
    scale = 1,
    tint = bob_fire_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-fire",
            entity_name = "fire-flame"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 8, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-explosive-stream",
    scale = 1,
    tint = bob_explosive_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-electric-stream",
    scale = 1,
    tint = bob_electric_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-piercing-stream",
    scale = 1,
    tint = bob_pierce_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "bob-pierce"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-titan-stream",
    scale = 1.25,
    tint = bob_titan_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "create-fire",
            entity_name = "fire-flame"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 3, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                  {
                    type = "create-sticker",
                    sticker = "fire-sticker"
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-behemoth-stream",
    scale = 1.5,
    tint = bob_behemoth_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "create-entity",
            entity_name = "small-poison-cloud"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 3, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "poison"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                  {
                    type = "create-sticker",
                    sticker = "poison-sticker"
                  },
                }
              }
            },
          },
        }
      }
    },
  },

  bobmods.enemies.acid_stream{
    name = "bob-leviathan-stream",
    scale = 2,
    tint = bob_leviathan_tint,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 6,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          bob_spit_target_sound,
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "create-entity",
            entity_name = "small-poison-cloud"
          },
          {
            type = "create-fire",
            entity_name = "fire-flame"
          },
          {
            type = "create-fire",
            entity_name = "acid-splash-fire-worm-behemoth"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 3,
              force = "enemy",
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 3, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "bob-pierce"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "acid"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "poison"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 2, type = "impact"}
                  },
                  {
                    type = "create-sticker",
                    sticker = "fire-sticker"
                  },
                  {
                    type = "create-sticker",
                    sticker = "poison-sticker"
                  },
                }
              }
            }
          }
        }
      }
    },
  },
}
