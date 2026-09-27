local leviathanfrequency = settings.startup["bobmods-enemies-leviathanfrequency"].value

local biter_spawn
local spitter_spawn
local super_spawn
if settings.startup["bobmods-enemies-biggersooner"].value == true then
  biter_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.6, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.7, 0.0 } } },
    { "big-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.79, 0.0 } } },
    { "bob-huge-biter", { { 0.6, 0.0 }, { 0.7, 0.4 }, { 0.88, 0.0 } } },
    { "bob-giant-biter", { { 0.7, 0.0 }, { 0.75, 0.4 }, { 0.98, 0.0 } } },
    { "bob-titan-biter", { { 0.79, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.55 } } },
    { "behemoth-biter", { { 0.88, 0.0 }, { 0.95, 0.4 } } },
    { "bob-leviathan-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  spitter_spawn = {
    { "small-spitter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.6, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.7, 0.0 } } },
    { "big-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.79, 0.0 } } },
    { "bob-huge-spitter", { { 0.6, 0.0 }, { 0.7, 0.4 }, { 0.88, 0.0 } } },
    { "bob-giant-spitter", { { 0.7, 0.0 }, { 0.75, 0.4 }, { 0.98, 0.0 } } },
    { "bob-titan-spitter", { { 0.79, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.55 } } },
    { "behemoth-spitter", { { 0.88, 0.0 }, { 0.95, 0.4 } } },
    { "bob-leviathan-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  super_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.6, 0.0 } } },
    { "small-spitter", { { 0.0, 0.3 }, { 0.3, 0.3 }, { 0.6, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.7, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.4, 0.3 }, { 0.7, 0.0 } } },
    { "big-biter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.79, 0.0 } } },
    { "big-spitter", { { 0.5, 0.0 }, { 0.6, 0.4 }, { 0.79, 0.0 } } },
    { "bob-huge-biter", { { 0.6, 0.0 }, { 0.7, 0.4 }, { 0.88, 0.0 } } },
    { "bob-huge-spitter", { { 0.6, 0.0 }, { 0.7, 0.4 }, { 0.88, 0.0 } } },
    { "bob-giant-biter", { { 0.7, 0.0 }, { 0.75, 0.4 }, { 0.98, 0.0 } } },
    { "bob-giant-spitter", { { 0.7, 0.0 }, { 0.75, 0.4 }, { 0.98, 0.0 } } },
    { "bob-titan-biter", { { 0.79, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.55 } } },
    { "bob-titan-spitter", { { 0.79, 0.0 }, { 0.85, 0.3 }, { 1.0, 0.55 } } },
    { "behemoth-biter", { { 0.88, 0.0 }, { 0.95, 0.4 } } },
    { "behemoth-spitter", { { 0.88, 0.0 }, { 0.95, 0.4 } } },
    { "bob-leviathan-biter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
    { "bob-leviathan-spitter", { { 0.95, 0.0 }, { 1.0, leviathanfrequency } } },
  }
else
  biter_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.65, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.77, 0.0 } } },
    { "big-biter", { { 0.55, 0.0 }, { 0.65, 0.4 }, { 0.86, 0.0 } } },
    { "bob-huge-biter", { { 0.65, 0.0 }, { 0.75, 0.4 }, { 0.92, 0.0 } } },
    { "bob-giant-biter", { { 0.77, 0.0 }, { 0.82, 0.4 }, { 0.98, 0.0 } } },
    { "bob-titan-biter", { { 0.86, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.55 } } },
    { "behemoth-biter", { { 0.92, 0.0 }, { 1.0, 0.4 } } },
    { "bob-leviathan-biter", { { 0.97, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  spitter_spawn = {
    { "small-spitter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.65, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.77, 0.0 } } },
    { "big-spitter", { { 0.55, 0.0 }, { 0.65, 0.4 }, { 0.86, 0.0 } } },
    { "bob-huge-spitter", { { 0.65, 0.0 }, { 0.75, 0.4 }, { 0.92, 0.0 } } },
    { "bob-giant-spitter", { { 0.77, 0.0 }, { 0.82, 0.4 }, { 0.98, 0.0 } } },
    { "bob-titan-spitter", { { 0.86, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.55 } } },
    { "behemoth-spitter", { { 0.92, 0.0 }, { 1.0, 0.4 } } },
    { "bob-leviathan-spitter", { { 0.97, 0.0 }, { 1.0, leviathanfrequency } } },
  }
  super_spawn = {
    { "small-biter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.65, 0.0 } } },
    { "small-spitter", { { 0.0, 0.3 }, { 0.5, 0.3 }, { 0.65, 0.0 } } },
    { "medium-biter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.77, 0.0 } } },
    { "medium-spitter", { { 0.2, 0.0 }, { 0.5, 0.3 }, { 0.77, 0.0 } } },
    { "big-biter", { { 0.55, 0.0 }, { 0.65, 0.4 }, { 0.86, 0.0 } } },
    { "big-spitter", { { 0.55, 0.0 }, { 0.65, 0.4 }, { 0.86, 0.0 } } },
    { "bob-huge-biter", { { 0.65, 0.0 }, { 0.75, 0.4 }, { 0.92, 0.0 } } },
    { "bob-huge-spitter", { { 0.65, 0.0 }, { 0.75, 0.4 }, { 0.92, 0.0 } } },
    { "bob-giant-biter", { { 0.77, 0.0 }, { 0.82, 0.4 }, { 0.98, 0.0 } } },
    { "bob-giant-spitter", { { 0.77, 0.0 }, { 0.82, 0.4 }, { 0.98, 0.0 } } },
    { "bob-titan-biter", { { 0.86, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.55 } } },
    { "bob-titan-spitter", { { 0.86, 0.0 }, { 0.9, 0.3 }, { 1.0, 0.55 } } },
    { "behemoth-biter", { { 0.92, 0.0 }, { 1.0, 0.4 } } },
    { "behemoth-spitter", { { 0.92, 0.0 }, { 1.0, 0.4 } } },
    { "bob-leviathan-biter", { { 0.97, 0.0 }, { 1.0, leviathanfrequency } } },
    { "bob-leviathan-spitter", { { 0.97, 0.0 }, { 1.0, leviathanfrequency } } },
  }
end

data.raw["unit-spawner"]["biter-spawner"].order = "zzz-a-a"
data.raw["unit-spawner"]["spitter-spawner"].order = "zzz-a-b"
if not settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw["unit-spawner"]["biter-spawner"].max_health = 250
  data.raw["unit-spawner"]["spitter-spawner"].max_health = 250
end
data.raw["unit-spawner"]["biter-spawner"].map_generator_bounding_box = { { -5, -4 }, { 5, 4 } }
data.raw["unit-spawner"]["spitter-spawner"].map_generator_bounding_box = { { -5, -4 }, { 5, 4 } }
data.raw["unit-spawner"]["biter-spawner"].result_units = biter_spawn
data.raw["unit-spawner"]["spitter-spawner"].result_units = spitter_spawn
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[1].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[2].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[3].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].graphics_set.animations[4].layers[2].tint = bobmods.enemies.biter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[1].layers[2].tint =
  bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[2].layers[2].tint =
  bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[3].layers[2].tint =
  bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["spitter-spawner"].graphics_set.animations[4].layers[2].tint =
  bobmods.enemies.spitter_spawner_tint
data.raw["unit-spawner"]["biter-spawner"].icon = "__bobenemies__/graphics/icons/biter-spawner.png"
data.raw["unit-spawner"]["spitter-spawner"].icon = "__bobenemies__/graphics/icons/spitter-spawner.png"
data.raw.corpse["biter-spawner-corpse"].animation_render_layer = "corpse"
data.raw.corpse["biter-spawner-corpse"].final_render_layer = "corpse"
data.raw.corpse["spitter-spawner-corpse"].animation_render_layer = "corpse"
data.raw.corpse["spitter-spawner-corpse"].final_render_layer = "corpse"
table.remove(data.raw.corpse["biter-spawner-corpse"].animation[1].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].animation[2].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].animation[3].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].animation[4].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].decay_animation[1].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].decay_animation[2].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].decay_animation[3].layers)
table.remove(data.raw.corpse["biter-spawner-corpse"].decay_animation[4].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].animation[1].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].animation[2].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].animation[3].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].animation[4].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].decay_animation[1].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].decay_animation[2].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].decay_animation[3].layers)
table.remove(data.raw.corpse["spitter-spawner-corpse"].decay_animation[4].layers)

local new_biter_spawner = table.deepcopy(data.raw["unit-spawner"]["biter-spawner"])
new_biter_spawner.name = "bob-0-biter-spawner"
new_biter_spawner.order = "a-a-a"
new_biter_spawner.autoplace = enemy_autoplace.enemy_spawner_autoplace("0")
new_biter_spawner.resistances = {
  { type = "physical", decrease = 2, percent = 15 },
  { type = "explosion", decrease = 7, percent = 20 },
  { type = "fire", decrease = 3, percent = 50 },
  { type = "acid", percent = 20 },
}
local new_spitter_spawner = table.deepcopy(data.raw["unit-spawner"]["spitter-spawner"])
new_spitter_spawner.name = "bob-0-spitter-spawner"
new_spitter_spawner.order = "a-a-b"
new_spitter_spawner.autoplace = enemy_autoplace.enemy_spawner_autoplace("0")
new_spitter_spawner.resistances = {
  { type = "physical", decrease = 2, percent = 10 },
  { type = "explosion", decrease = 10, percent = 30 },
  { type = "fire", decrease = 3, percent = 50 },
  { type = "acid", percent = 20 },
}
if mods["space-age"] then
  new_biter_spawner.captured_spawner_entity = "captive-biter-spawner"
  new_spitter_spawner.captured_spawner_entity = "captive-biter-spawner"
end
data:extend({ new_biter_spawner, new_spitter_spawner })
data.raw["unit-spawner"]["biter-spawner"].hidden = true
data.raw["unit-spawner"]["spitter-spawner"].hidden = true

local piercing_spawner_trapped_reaction = {
  type = "direct",
  action_delivery = {
    type = "instant",
    source_effects = {
      type = "script",
      effect_id = "piercing-spawner-trapped-script",
    },
  }
}

local electric_spawner_trapped_reaction = {
  {
    type = "cluster",
    cluster_count = 13,
    distance = 7,
    action_delivery = {
      type = "instant",
      target_effects = {
        type = "nested-result",
        probability = 0.35,
        action = {
          type = "line",
          range = 7,
          width = 1.5,
          force = "not-same",
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                damage = { amount = 1000, type = "electric" },
              },
            },
          },
          range_effects = {
            {
              type = "create-explosion",
              entity_name = "bob-biter-electric-beam-explosion",
            },
          },
        }
      },
    },
  }
}

local acid_spawner_trapped_reaction = {
  {
    type = "cluster",
    cluster_count = 12,
    distance = 4,
    distance_deviation = 3,
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "create-fire",
          entity_name = "acid-acid-splash-fire-behemoth",
        },
      },
    },
  },
}

local explosive_spawner_trapped_reaction = {
  {
    type = "direct",
    action_delivery = {
      {
        type = "instant",
        source_effects = {
          {
            type = "create-explosion",
            entity_name = "big-artillery-explosion",
          },
        },
      },
    },
  },
  {
    type = "area",
    radius = 4.75,
    force = "not-same",
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = {
            amount = 750,
            type = "explosion"
          },
        },
        {
          type = "create-entity",
          entity_name = "explosion",
        },
      },
    },
  },
}

data:extend({

  {
    type = "smoke-with-trigger",
    name = "poison-spawner-trapped-reaction",
    localised_name = { "entity-name.poison-cloud" },
    flags = { "not-on-map" },
    hidden = true,
    show_when_smoke_off = true,
    animation = {
      filename = "__bobenemies__/graphics/entity/invisible.png",
      width = 1,
      height = 1,
      frame_count = 1,
    },
    affected_by_wind = false,
    cyclic = true,
    duration = 240,
    fade_away_duration = 20,
    spread_duration = 10,
    color = { r = 0.3, g = 1, b = 0.3, a = 1 },
    created_effect = {
      {
        type = "cluster",
        cluster_count = 10,
        distance = 4,
        distance_deviation = 4,
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-smoke",
            show_in_tooltip = false,
            entity_name = "bob-enemy-poison-smoke-visual-dummy",
            initial_height = 0,
          },
        },
      },
    },
    action_cooldown = 30,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              {
                type = "area",
                radius = 8,
                force = "not-friend",
                trigger_target_mask = { "ground-structure", "ground-unit", "flying-robot" },
                ignore_collision_condition = true,
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    type = "damage",
                    damage = { amount = 80, type = "poison" },
                  },
                },
              },
              {
                type = "area",
                radius = 8,
                force = "ally",
                entity_flags = { "breaths-air" },
                action_delivery = {
                  type = "instant",
                  target_effects = {
                    type = "damage",
                    damage = { amount = -240, type = "poison" },
                  },
                },
              },
            },
          },
        },
      },
    },
  },

  {
    type = "delayed-active-trigger",
    name = "fire-spawner-trapped-reaction",
    delay = 1,
    repeat_delay = 15,
    repeat_count = 16,
    cancel_when_source_is_destroyed = true,
    action = {
      {
        type = "area",
        radius = 6,
        trigger_target_mask = { "not-fire-unit" },
        collision_mode = "distance-from-center",
        action_delivery = {
          {
            type = "instant",
            target_effects = {
              {
                type = "create-fire",
                entity_name = "bob-enemy-fire-trapped",
                probability = 0.15,
              },
            }
          },
        },
      },
    },
  },

})

bobmods.enemies.new_spawner({
  name = "bob-biter-spawner",
  icon = "__base__/graphics/icons/biter-spawner.png",
  class = "biter",
  order = "a-a-c",
  tint = biter_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"), --This is needed to make the game properly update the factoriopedia page with the enemy evolution factor, which displays the actual current adjusted health of the spawner, as well as providing a line on the spawn graph to show what the actual current spawns are.
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 10, percent = 35 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "acid", decrease = 10, percent = 50 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  result_units = biter_spawn,
})

bobmods.enemies.new_spawner({
  name = "bob-spitter-spawner",
  icon = "__base__/graphics/icons/spitter-spawner.png",
  class = "spitter",
  order = "a-a-d",
  tint = spitter_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 20, percent = 50 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "acid", decrease = 10, percent = 50 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  result_units = spitter_spawn,
})

bobmods.enemies.new_spawner({
  name = "bob-0-piercing-biter-spawner",
  icon = "__bobenemies__/graphics/icons/0-piercing-biter-spawner.png",
  class = "biter-0",
  element = "piercing",
  order = "b-a-a",
  tint = bobmods.enemies.biter_spawner_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  healing_per_tick = 0.03,
  resistances = {
    { type = "physical", decrease = 3, percent = 25 },
    { type = "bob-pierce", percent = 10 },
    { type = "explosion", decrease = 7, percent = 20 },
    { type = "laser", percent = -20 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "poison", percent = -40 },
    { type = "electric", percent = -40 },
  },
  spawn_blocked_trigger = piercing_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-0-piercing-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/0-piercing-spitter-spawner.png",
  class = "spitter-0",
  element = "piercing",
  order = "b-a-b",
  tint = bobmods.enemies.spitter_spawner_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  healing_per_tick = 0.03,
  resistances = {
    { type = "physical", decrease = 3, percent = 25 },
    { type = "explosion", decrease = 10, percent = 30 },
    { type = "laser", percent = -20 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "poison", percent = -40 },
    { type = "electric", percent = -40 },
  },
  spawn_blocked_trigger = piercing_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-piercing-biter-spawner",
  icon = "__bobenemies__/graphics/icons/piercing-biter-spawner.png",
  class = "biter",
  element = "piercing",
  order = "b-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  healing_per_tick = 0.08,
  resistances = {
    { type = "physical", decrease = 8, percent = 60 },
    { type = "bob-pierce", percent = 40 },
    { type = "explosion", decrease = 10, percent = 35 },
    { type = "laser", percent = 10 },
    { type = "fire", decrease = 6, percent = 75 },
    { type = "poison", percent = -20 },
    { type = "electric", percent = -20 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = piercing_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-piercing-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/piercing-spitter-spawner.png",
  class = "spitter",
  element = "piercing",
  order = "b-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.piercing_worm_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  healing_per_tick = 0.08,
  resistances = {
    { type = "physical", decrease = 8, percent = 60 },
    { type = "explosion", decrease = 20, percent = 50 },
    { type = "laser", percent = 10 },
    { type = "fire", decrease = 6, percent = 75 },
    { type = "poison", percent = -20 },
    { type = "electric", percent = -20 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = piercing_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-0-electric-biter-spawner",
  icon = "__bobenemies__/graphics/icons/0-electric-biter-spawner.png",
  class = "biter-0",
  element = "electric",
  order = "c-a-a",
  tint = bobmods.enemies.biter_spawner_tint,
  tint2 = bobmods.enemies.electric_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 2, percent = 15 },
    { type = "explosion", decrease = 5 },
    { type = "laser", percent = 35 },
    { type = "fire", percent = 20 },
    { type = "poison", percent = -40 },
    { type = "electric", decrease = 5, percent = 25 },
  },
  spawn_blocked_trigger = electric_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-0-electric-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/0-electric-spitter-spawner.png",
  class = "spitter-0",
  element = "electric",
  order = "c-a-b",
  tint = bobmods.enemies.spitter_spawner_tint,
  tint2 = bobmods.enemies.electric_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 2, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "laser", percent = 35 },
    { type = "fire", percent = 20 },
    { type = "poison", percent = -40 },
    { type = "electric", decrease = 5, percent = 25 },
  },
  spawn_blocked_trigger = electric_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-electric-biter-spawner",
  icon = "__bobenemies__/graphics/icons/electric-biter-spawner.png",
  class = "biter",
  element = "electric",
  order = "c-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.electric_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 5, percent = 15 },
    { type = "laser", percent = 75 },
    { type = "fire", percent = 35 },
    { type = "poison", percent = -20 },
    { type = "electric", decrease = 10, percent = 50 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = electric_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-electric-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/electric-spitter-spawner.png",
  class = "spitter",
  element = "electric",
  order = "c-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.electric_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 5, percent = 32 },
    { type = "laser", percent = 75 },
    { type = "fire", percent = 35 },
    { type = "poison", percent = -20 },
    { type = "electric", decrease = 10, percent = 50 },
    { type = "acid", percent = 20 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = electric_spawner_trapped_reaction,
})

data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[1].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[2].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[3].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.animations[4].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[1].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[2].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[3].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.animations[4].layers[2].draw_as_glow = true
data.raw["unit-spawner"]["bob-electric-spitter-spawner"].graphics_set.integration = {
  filename = "__core__/graphics/light-medium.png",
  width = 300,
  height = 300,
  scale = 4,
  priority = "high",
  draw_as_light = true,
  tint = { 0.7, 0.7, 0.85 },
  shift = { 0, 0.5 },
}
data.raw["unit-spawner"]["bob-electric-biter-spawner"].graphics_set.integration = {
  filename = "__core__/graphics/light-medium.png",
  width = 300,
  height = 300,
  scale = 4,
  priority = "high",
  draw_as_light = true,
  tint = { 0.7, 0.7, 0.85 },
  shift = { 0, 0.5 },
}

local acid_reaction = function(inputs)
  return {
    {
      type = "create-entity",
      damage_type_filters = { "fire", "acid", "poison" },
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
          radius = 5,
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

bobmods.enemies.new_spawner({
  name = "bob-0-acid-biter-spawner",
  icon = "__bobenemies__/graphics/icons/0-acid-biter-spawner.png",
  class = "biter-0",
  element = "acid",
  order = "d-a-a",
  tint = bobmods.enemies.biter_spawner_tint,
  tint2 = bobmods.enemies.acid_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  damaged_trigger_effect = acid_reaction({
    damage = 5,
    fire_name = "acid-acid-splash-fire-small",
  }),
  resistances = {
    { type = "physical", decrease = 2, percent = 15 },
    { type = "explosion", decrease = 5 },
    { type = "fire", decrease = 3, percent = 50 },
    { type = "poison", decrease = 5, percent = 25 },
    { type = "electric", percent = -40 },
    { type = "acid", decrease = 10, percent = 50 },
  },
  spawn_blocked_trigger = acid_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-0-acid-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/0-acid-spitter-spawner.png",
  class = "spitter-0",
  element = "acid",
  order = "d-a-b",
  tint = bobmods.enemies.spitter_spawner_tint,
  tint2 = bobmods.enemies.acid_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  damaged_trigger_effect = acid_reaction({
    damage = 5,
    fire_name = "acid-acid-splash-fire-small",
  }),
  resistances = {
    { type = "physical", decrease = 2, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "fire", decrease = 3, percent = 50 },
    { type = "poison", decrease = 5, percent = 25 },
    { type = "electric", percent = -40 },
    { type = "acid", decrease = 10, percent = 50 },
  },
  spawn_blocked_trigger = acid_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-acid-biter-spawner",
  icon = "__bobenemies__/graphics/icons/acid-biter-spawner.png",
  class = "biter",
  element = "acid",
  order = "d-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.acid_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  damaged_trigger_effect = acid_reaction({
    damage = 25,
    fire_name = "acid-acid-splash-fire-huge",
  }),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 5, percent = 15 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = acid_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-acid-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/acid-spitter-spawner.png",
  class = "spitter",
  element = "acid",
  order = "d-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.acid_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  damaged_trigger_effect = acid_reaction({
    damage = 25,
    fire_name = "acid-acid-splash-fire-huge",
  }),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 5, percent = 32 },
    { type = "laser", percent = 50 },
    { type = "fire", decrease = 4, percent = 60 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = acid_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-0-explosive-biter-spawner",
  icon = "__bobenemies__/graphics/icons/0-explosive-biter-spawner.png",
  class = "biter-0",
  element = "explosive",
  order = "e-a-a",
  max_health = 200,
  tint = bobmods.enemies.biter_spawner_tint,
  tint2 = bobmods.enemies.explosive_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 2, percent = 15 },
    { type = "explosion", decrease = 15, percent = 35 },
    { type = "laser", percent = -20 },
    { type = "fire", percent = 20 },
    { type = "electric", percent = -40 },
    { type = "acid", decrease = 10, percent = 50 },
  },
  spawn_blocked_trigger = explosive_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-0-explosive-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/0-explosive-spitter-spawner.png",
  class = "spitter-0",
  element = "explosive",
  order = "e-a-b",
  max_health = 200,
  tint = bobmods.enemies.spitter_spawner_tint,
  tint2 = bobmods.enemies.explosive_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 2, percent = 10 },
    { type = "explosion", decrease = 15, percent = 35 },
    { type = "laser", percent = -20 },
    { type = "fire", percent = 20 },
    { type = "electric", percent = -40 },
    { type = "acid", decrease = 10, percent = 50 },
  },
  spawn_blocked_trigger = explosive_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-explosive-biter-spawner",
  icon = "__bobenemies__/graphics/icons/explosive-biter-spawner.png",
  class = "biter",
  element = "explosive",
  order = "e-a-c",
  max_health = 400,
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.explosive_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 50, percent = 60 },
    { type = "laser", percent = 10 },
    { type = "fire", percent = 35 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = explosive_spawner_trapped_reaction,
})

bobmods.enemies.new_spawner({
  name = "bob-explosive-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/explosive-spitter-spawner.png",
  class = "spitter",
  element = "explosive",
  order = "e-a-d",
  max_health = 400,
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.explosive_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 50, percent = 60 },
    { type = "laser", percent = 10 },
    { type = "fire", percent = 35 },
    { type = "electric", percent = -20 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = explosive_spawner_trapped_reaction,
})

if settings.startup["bobmods-enemies-healthincrease"].value == true then
  data.raw["unit-spawner"]["bob-0-explosive-biter-spawner"].max_health = 300
  data.raw["unit-spawner"]["bob-0-explosive-spitter-spawner"].max_health = 300
  data.raw["unit-spawner"]["bob-explosive-biter-spawner"].max_health = 1200
  data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].max_health = 1200
end

bobmods.enemies.new_spawner({
  name = "bob-0-poison-biter-spawner",
  icon = "__bobenemies__/graphics/icons/0-poison-biter-spawner.png",
  class = "biter-0",
  element = "poison",
  order = "f-a-a",
  tint = bobmods.enemies.biter_spawner_tint,
  tint2 = bobmods.enemies.poison_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 2, percent = 15 },
    { type = "explosion", decrease = 5 },
    { type = "fire", decrease = 20 },
    { type = "poison", decrease = 5, decrease = 25 },
    { type = "acid", decrease = 10, decrease = 50 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-smoke",
          entity_name = "poison-spawner-trapped-reaction",
          initial_height = 0,
          show_in_tooltip = true,
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-0-poison-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/0-poison-spitter-spawner.png",
  class = "spitter-0",
  element = "poison",
  order = "f-a-b",
  tint = bobmods.enemies.spitter_spawner_tint,
  tint2 = bobmods.enemies.poison_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  resistances = {
    { type = "physical", decrease = 2, percent = 10 },
    { type = "explosion", decrease = 5, percent = 10 },
    { type = "fire", decrease = 20 },
    { type = "poison", decrease = 5, decrease = 25 },
    { type = "acid", decrease = 10, decrease = 50 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-smoke",
          entity_name = "poison-spawner-trapped-reaction",
          initial_height = 0,
          show_in_tooltip = true,
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-poison-biter-spawner",
  icon = "__bobenemies__/graphics/icons/poison-biter-spawner.png",
  class = "biter",
  element = "poison",
  order = "f-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.poison_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  healing_per_tick = 0.08,
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "bob-pierce", percent = 20 },
    { type = "explosion", decrease = 5, percent = 15 },
    { type = "laser", percent = 50 },
    { type = "fire", percent = 35 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-smoke",
          entity_name = "poison-spawner-trapped-reaction",
          initial_height = 0,
          show_in_tooltip = true,
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-poison-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/poison-spitter-spawner.png",
  class = "spitter",
  element = "poison",
  order = "f-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.poison_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  healing_per_tick = 0.08,
  resistances = {
    { type = "physical", decrease = 5, percent = 40 },
    { type = "explosion", decrease = 5, percent = 32 },
    { type = "laser", percent = 50 },
    { type = "fire", percent = 35 },
    { type = "poison", decrease = 10, percent = 50 },
    { type = "acid", decrease = 15, percent = 65 },
    { type = "impact", decrease = 10, percent = 20 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          type = "create-smoke",
          entity_name = "poison-spawner-trapped-reaction",
          initial_height = 0,
          show_in_tooltip = true,
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-0-fire-biter-spawner",
  icon = "__bobenemies__/graphics/icons/0-fire-biter-spawner.png",
  class = "biter-0",
  element = "fire",
  order = "g-a-a",
  tint = bobmods.enemies.biter_spawner_tint,
  tint2 = bobmods.enemies.fire_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  trigger_target_mask = { "common", "ground-structure" },
  resistances = {
    { type = "explosion", decrease = 7, percent = 20 },
    { type = "laser", percent = 35 },
    { type = "fire", decrease = 6, percent = 70 },
    { type = "acid", percent = 20 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        {
          type = "delayed",
          delayed_trigger = "fire-spawner-trapped-reaction",
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-0-fire-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/0-fire-spitter-spawner.png",
  class = "spitter-0",
  element = "fire",
  order = "g-a-b",
  tint = bobmods.enemies.spitter_spawner_tint,
  tint2 = bobmods.enemies.fire_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  trigger_target_mask = { "common", "ground-structure" },
  resistances = {
    { type = "explosion", decrease = 10, percent = 30 },
    { type = "laser", percent = 35 },
    { type = "fire", decrease = 6, percent = 70 },
    { type = "acid", percent = 20 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        {
          type = "delayed",
          delayed_trigger = "fire-spawner-trapped-reaction",
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-fire-biter-spawner",
  icon = "__bobenemies__/graphics/icons/fire-biter-spawner.png",
  class = "biter",
  element = "fire",
  order = "g-a-c",
  tint = biter_spawner_tint,
  tint2 = bobmods.enemies.fire_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  trigger_target_mask = { "common", "ground-structure" },
  resistances = {
    { type = "physical", decrease = 2, percent = 30 },
    { type = "bob-pierce", percent = 10 },
    { type = "explosion", decrease = 10, percent = 35 },
    { type = "laser", percent = 75 },
    { type = "fire", decrease = 10, percent = 80 },
    { type = "acid", decrease = 10, percent = 50 },
    { type = "impact", percent = 10 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        {
          type = "delayed",
          delayed_trigger = "fire-spawner-trapped-reaction",
        },
      },
    },
  },
})

bobmods.enemies.new_spawner({
  name = "bob-fire-spitter-spawner",
  icon = "__bobenemies__/graphics/icons/fire-spitter-spawner.png",
  class = "spitter",
  element = "fire",
  order = "g-a-d",
  tint = spitter_spawner_tint,
  tint2 = bobmods.enemies.fire_spawner_tint,
  autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
  trigger_target_mask = { "common", "ground-structure" },
  resistances = {
    { type = "physical", decrease = 2, percent = 30 },
    { type = "explosion", decrease = 20, percent = 50 },
    { type = "laser", percent = 75 },
    { type = "fire", decrease = 10, percent = 80 },
    { type = "acid", decrease = 10, percent = 50 },
    { type = "impact", percent = 10 },
    { type = "bob-plasma", percent = 50 },
  },
  spawn_blocked_trigger = {
    {
      type = "direct",
      action_delivery = {
        {
          type = "delayed",
          delayed_trigger = "fire-spawner-trapped-reaction",
        },
      },
    },
  },
})

if settings.startup["bobmods-enemies-originalcolors"].value == false then
  data.raw["unit-spawner"]["biter-spawner"].map_color = bobmods.enemies.basic_faction
  data.raw["unit-spawner"]["spitter-spawner"].map_color = bobmods.enemies.basic_faction
  data.raw["unit-spawner"]["bob-0-biter-spawner"].map_color = bobmods.enemies.basic_faction
  data.raw["unit-spawner"]["bob-0-spitter-spawner"].map_color = bobmods.enemies.basic_faction
  data.raw["unit-spawner"]["bob-biter-spawner"].map_color = bobmods.enemies.basic_faction
  data.raw["unit-spawner"]["bob-spitter-spawner"].map_color = bobmods.enemies.basic_faction
  data.raw["unit-spawner"]["bob-0-piercing-biter-spawner"].map_color = bobmods.enemies.piercing_faction
  data.raw["unit-spawner"]["bob-0-piercing-spitter-spawner"].map_color = bobmods.enemies.piercing_faction
  data.raw["unit-spawner"]["bob-piercing-biter-spawner"].map_color = bobmods.enemies.piercing_faction
  data.raw["unit-spawner"]["bob-piercing-spitter-spawner"].map_color = bobmods.enemies.piercing_faction
  data.raw["unit-spawner"]["bob-0-electric-biter-spawner"].map_color = bobmods.enemies.electric_faction
  data.raw["unit-spawner"]["bob-0-electric-spitter-spawner"].map_color = bobmods.enemies.electric_faction
  data.raw["unit-spawner"]["bob-electric-biter-spawner"].map_color = bobmods.enemies.electric_faction
  data.raw["unit-spawner"]["bob-electric-spitter-spawner"].map_color = bobmods.enemies.electric_faction
  data.raw["unit-spawner"]["bob-0-acid-biter-spawner"].map_color = bobmods.enemies.acid_faction
  data.raw["unit-spawner"]["bob-0-acid-spitter-spawner"].map_color = bobmods.enemies.acid_faction
  data.raw["unit-spawner"]["bob-acid-biter-spawner"].map_color = bobmods.enemies.acid_faction
  data.raw["unit-spawner"]["bob-acid-spitter-spawner"].map_color = bobmods.enemies.acid_faction
  data.raw["unit-spawner"]["bob-0-explosive-biter-spawner"].map_color = bobmods.enemies.explosive_faction
  data.raw["unit-spawner"]["bob-0-explosive-spitter-spawner"].map_color = bobmods.enemies.explosive_faction
  data.raw["unit-spawner"]["bob-explosive-biter-spawner"].map_color = bobmods.enemies.explosive_faction
  data.raw["unit-spawner"]["bob-explosive-spitter-spawner"].map_color = bobmods.enemies.explosive_faction
  data.raw["unit-spawner"]["bob-0-poison-biter-spawner"].map_color = bobmods.enemies.poison_faction
  data.raw["unit-spawner"]["bob-0-poison-spitter-spawner"].map_color = bobmods.enemies.poison_faction
  data.raw["unit-spawner"]["bob-poison-biter-spawner"].map_color = bobmods.enemies.poison_faction
  data.raw["unit-spawner"]["bob-poison-spitter-spawner"].map_color = bobmods.enemies.poison_faction
  data.raw["unit-spawner"]["bob-0-fire-biter-spawner"].map_color = bobmods.enemies.fire_faction
  data.raw["unit-spawner"]["bob-0-fire-spitter-spawner"].map_color = bobmods.enemies.fire_faction
  data.raw["unit-spawner"]["bob-fire-biter-spawner"].map_color = bobmods.enemies.fire_faction
  data.raw["unit-spawner"]["bob-fire-spitter-spawner"].map_color = bobmods.enemies.fire_faction
end

if settings.startup["bobmods-enemies-superspawner"].value == true then
  bobmods.enemies.new_spawner({
    name = "bob-super-spawner",
    icon = "__bobenemies__/graphics/icons/super-spawner.png",
    class = "super",
    order = "a-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "laser", percent = 50 },
      { type = "fire", decrease = 5, percent = 70 },
      { type = "poison", percent = 20 },
      { type = "electric", percent = 20 },
      { type = "acid", decrease = 20, percent = 75 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "bob-plasma", percent = 50 },
    },
    result_units = super_spawn,
  })

  bobmods.enemies.new_spawner({
    name = "bob-piercing-super-spawner",
    icon = "__bobenemies__/graphics/icons/piercing-super-spawner.png",
    class = "super",
    element = "piercing",
    order = "b-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.piercing_worm_tint,
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    healing_per_tick = 2,
    resistances = {
      { type = "physical", decrease = 20, percent = 75 },
      { type = "bob-pierce", percent = 40 },
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "laser", percent = 25 },
      { type = "fire", decrease = 10, percent = 90 },
      { type = "acid", percent = 40 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "bob-plasma", percent = 50 },
    },
    spawn_blocked_trigger = piercing_spawner_trapped_reaction,
  })

  bobmods.enemies.new_spawner({
    name = "bob-electric-super-spawner",
    icon = "__bobenemies__/graphics/icons/electric-super-spawner.png",
    class = "super",
    element = "electric",
    order = "c-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.electric_spawner_tint,
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 5, percent = 32 },
      { type = "laser", percent = 75 },
      { type = "fire", decrease = 4, percent = 50 },
      { type = "electric", decrease = 20, percent = 75 },
      { type = "acid", percent = 40 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "bob-plasma", percent = 50 },
    },
    spawn_blocked_trigger = electric_spawner_trapped_reaction,
  })

  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[1].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[2].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[3].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.animations[4].layers[2].draw_as_glow = true
  data.raw["unit-spawner"]["bob-electric-super-spawner"].graphics_set.integration = {
    filename = "__core__/graphics/light-medium.png",
    width = 300,
    height = 300,
    scale = 4,
    priority = "high",
    draw_as_light = true,
    tint = { 0.7, 0.7, 0.85 },
    shift = { 0, 0.5 },
  }

  bobmods.enemies.new_spawner({
    name = "bob-acid-super-spawner",
    icon = "__bobenemies__/graphics/icons/acid-super-spawner.png",
    class = "super",
    element = "acid",
    order = "d-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.acid_spawner_tint,
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    damaged_trigger_effect = acid_reaction({
      damage = 50,
      fire_name = "acid-acid-splash-fire-leviathan",
    }),
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 5, percent = 32 },
      { type = "laser", percent = 50 },
      { type = "fire", decrease = 5, percent = 70 },
      { type = "poison", decrease = 20, percent = 75 },
      { type = "acid", decrease = 25, percent = 90 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "bob-plasma", percent = 50 },
    },
    spawn_blocked_trigger = acid_spawner_trapped_reaction,
  })

  bobmods.enemies.new_spawner({
    name = "bob-explosive-super-spawner",
    icon = "__bobenemies__/graphics/icons/explosive-super-spawner.png",
    class = "super",
    element = "explosive",
    order = "e-a-e",
    max_health = 4000,
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.explosive_spawner_tint,
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 100, percent = 75 },
      { type = "laser", percent = 25 },
      { type = "fire", decrease = 4, percent = 50 },
      { type = "poison", percent = 20 },
      { type = "acid", decrease = 25, percent = 90 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "bob-plasma", percent = 50 },
    },
    spawn_blocked_trigger = explosive_spawner_trapped_reaction,
  })

  if settings.startup["bobmods-enemies-healthincrease"].value == true then
    data.raw["unit-spawner"]["bob-explosive-super-spawner"].max_health = 6000
  end

  bobmods.enemies.new_spawner({
    name = "bob-poison-super-spawner",
    icon = "__bobenemies__/graphics/icons/poison-super-spawner.png",
    class = "super",
    element = "poison",
    order = "f-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.poison_spawner_tint,
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    healing_per_tick = 2,
    resistances = {
      { type = "physical", decrease = 10, percent = 50 },
      { type = "bob-pierce", percent = 20 },
      { type = "explosion", decrease = 5, percent = 32 },
      { type = "laser", percent = 50 },
      { type = "fire", decrease = 4, percent = 50 },
      { type = "poison", decrease = 20, percent = 75 },
      { type = "electric", percent = 20 },
      { type = "acid", decrease = 25, percent = 90 },
      { type = "impact", decrease = 100, percent = 35 },
      { type = "bob-plasma", percent = 50 },
    },
    spawn_blocked_trigger = {
      {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            type = "create-smoke",
            entity_name = "poison-spawner-trapped-reaction",
            initial_height = 0,
            show_in_tooltip = true,
          },
        },
      },
    },
  })

  bobmods.enemies.new_spawner({
    name = "bob-fire-super-spawner",
    icon = "__bobenemies__/graphics/icons/fire-super-spawner.png",
    class = "super",
    element = "fire",
    order = "g-a-e",
    tint = bobmods.enemies.super_spawner_tint,
    tint2 = bobmods.enemies.fire_spawner_tint,
    trigger_target_mask = { "common", "ground-structure" },
    autoplace = enemy_autoplace.enemy_spawner_autoplace("0"),
    resistances = {
      { type = "physical", decrease = 5, percent = 40 },
      { type = "bob-pierce", percent = 10 },
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "laser", percent = 75 },
      { type = "fire", decrease = 20, percent = 95 },
      { type = "poison", percent = 20 },
      { type = "electric", percent = 20 },
      { type = "acid", decrease = 20, percent = 75 },
      { type = "impact", decrease = 50, percent = 20 },
      { type = "bob-plasma", percent = 50 },
    },
    spawn_blocked_trigger = {
      {
        type = "direct",
        action_delivery = {
          {
            type = "delayed",
            delayed_trigger = "fire-spawner-trapped-reaction",
          },
        },
      },
    },
  })

  if settings.startup["bobmods-enemies-originalcolors"].value == false then
    data.raw["unit-spawner"]["bob-super-spawner"].map_color = bobmods.enemies.basic_faction
    data.raw["unit-spawner"]["bob-piercing-super-spawner"].map_color = bobmods.enemies.piercing_faction
    data.raw["unit-spawner"]["bob-electric-super-spawner"].map_color = bobmods.enemies.electric_faction
    data.raw["unit-spawner"]["bob-acid-super-spawner"].map_color = bobmods.enemies.acid_faction
    data.raw["unit-spawner"]["bob-explosive-super-spawner"].map_color = bobmods.enemies.explosive_faction
    data.raw["unit-spawner"]["bob-poison-super-spawner"].map_color = bobmods.enemies.poison_faction
    data.raw["unit-spawner"]["bob-fire-super-spawner"].map_color = bobmods.enemies.fire_faction
  end
end
