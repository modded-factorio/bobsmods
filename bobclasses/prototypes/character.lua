bobmods.classes.characters = {}

table.insert(data.raw.character.character.flags, "not-in-made-in")
data.raw.character.character.fast_replaceable_group = "character"

data.raw.character.character.icons = {
  {
    icon = "__bobclasses__/icons/character.png",
    icon_size = 128,
  },
}
data.raw.character.character.icon = nil
data.raw.character.character.max_health = 300
data.raw.character.character.healing_per_tick = 0.18
data.raw.character.character.ticks_to_stay_in_combat = 480
data.raw.character.character.loot_pickup_distance = 2.5

bobmods.classes.characters["bob-character-miner"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-miner",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/crafter.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 0 },
      },
    },
    max_health = 200,
    healing_per_tick = 0.1,
    ticks_to_stay_in_combat = 720,
    inventory_size = 100,
    loot_pickup_distance = 2,
    guns_inventory_size = 2,
    running_speed = 0.12,
    mining_speed = 1,
  },
})

bobmods.classes.characters["bob-character-fighter"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-fighter",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 0 },
      },
    },
    flags = {
      "placeable-off-grid",
      "not-repairable",
      "not-on-map",
      "not-flammable",
      "get-by-unit-number",
    },
    max_health = 400,
    healing_per_tick = 0.3,
    ticks_to_stay_in_combat = 150,
    inventory_size = 60,
    build_distance = 8,
    reach_distance = 8,
    drop_item_distance = 8,
    reach_resource_distance = 3.5,
    loot_pickup_distance = 3.5,
    tool_attack_distance = 3.5,
    guns_inventory_size = 5,
    running_speed = 0.2,
  },
})
bobmods.classes.characters["bob-character-fighter"].tool_attack_result = {
  type = "direct",
  action_delivery = {
    type = "instant",
    target_effects = {
      {
        type = "damage",
        damage = {
          type = "physical",
          amount = 40,
        },
      },
      {
        type = "push-back",
        distance = 3,
      },
    },
  },
}
if data.raw["damage-type"]["bob-plasma"] then
  bobmods.classes.characters["bob-character-fighter"].tool_attack_result.action_delivery.target_effects[1].damage.type =
    "bob-plasma"
end

bobmods.classes.characters["bob-character-builder"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-builder",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 0 },
      },
    },
    max_health = 200,
    healing_per_tick = 0.1,
    ticks_to_stay_in_combat = 720,
    inventory_size = 100,
    build_distance = 15,
    reach_distance = 15,
    drop_item_distance = 15,
    reach_resource_distance = 3.5,
    guns_inventory_size = 2,
    mining_speed = 1,
    has_belt_immunity = true,
  },
})

bobmods.classes.characters["bob-character-balanced-2"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-balanced-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    max_health = 450,
    healing_per_tick = 0.3,
    ticks_to_stay_in_combat = 300,
    inventory_size = 100,
    build_distance = 13,
    reach_distance = 13,
    drop_item_distance = 13,
    loot_pickup_distance = 3.5,
    running_speed = 0.2,
    mining_speed = 1,
  },
})

bobmods.classes.characters["bob-character-miner-2"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-miner-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/crafter.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    max_health = 300,
    healing_per_tick = 0.15,
    ticks_to_stay_in_combat = 480,
    inventory_size = 120,
    build_distance = 13,
    reach_distance = 13,
    drop_item_distance = 13,
    loot_pickup_distance = 2.5,
    guns_inventory_size = 2,
    running_speed = 0.15,
    mining_speed = 1.5,
  },
})

bobmods.classes.characters["bob-character-fighter-2"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-fighter-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/fighter.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    flags = {
      "placeable-off-grid",
      "not-repairable",
      "not-on-map",
      "not-flammable",
      "get-by-unit-number",
    },
    max_health = 600,
    healing_per_tick = 0.45,
    ticks_to_stay_in_combat = 120,
    inventory_size = 80,
    build_distance = 10,
    reach_distance = 10,
    drop_item_distance = 10,
    reach_resource_distance = 3.5,
    loot_pickup_distance = 4.5,
    tool_attack_distance = 3.5,
    guns_inventory_size = 5,
    running_speed = 0.25,
    mining_speed = 1,
  },
})
bobmods.classes.characters["bob-character-fighter-2"].tool_attack_result = {
  {
    type = "direct",
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = {
            type = "physical",
            amount = 200,
          },
        },
      },
    },
  },
  {
    type = "area",
    radius = 4,
    force = "enemy",
    action_delivery = {
      {
        type = "beam",
        beam = "electric-beam",
        duration = 15,
        max_length = 16,
        add_to_shooter = false,
        source_offset = { 0, -0.5 },
      },
      {
        type = "instant",
        target_effects = {
          {
            type = "push-back",
            distance = 4,
          },
        },
      },
    },
  },
}
if data.raw["damage-type"]["bob-plasma"] then
  bobmods.classes.characters["bob-character-fighter-2"].tool_attack_result[1].action_delivery.target_effects[1].damage.type =
    "bob-plasma"
end

bobmods.classes.characters["bob-character-builder-2"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-builder-2",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/builder.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, -8 },
      },
      {
        icon = "__bobclasses__/icons/2.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 8 },
      },
    },
    max_health = 300,
    healing_per_tick = 0.15,
    ticks_to_stay_in_combat = 480,
    inventory_size = 120,
    build_distance = 20,
    reach_distance = 20,
    drop_item_distance = 20,
    loot_pickup_distance = 3.5,
    reach_resource_distance = 3.5,
    guns_inventory_size = 2,
    running_speed = 0.2,
    mining_speed = 1.5,
    has_belt_immunity = true,
  },
})

bobmods.classes.characters["bob-character-engineer"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-engineer",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/engineer.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 0 },
      },
    },
    max_health = 300,
    healing_per_tick = 0.15,
    ticks_to_stay_in_combat = 720,
    inventory_size = 120,
    build_distance = 17.5,
    reach_distance = 17.5,
    drop_item_distance = 17.5,
    loot_pickup_distance = 3.5,
    guns_inventory_size = 2,
    running_speed = 0.15,
    mining_speed = 1.5,
    has_belt_immunity = true,
  },
})

bobmods.classes.characters["bob-character-prospector"] = util.merge({
  data.raw.character.character,
  {
    name = "bob-character-prospector",
    icons = {
      {
        icon = "__bobclasses__/icons/character.png",
        icon_size = 128,
        shift = { -5, 0 },
      },
      {
        icon = "__bobclasses__/icons/sapper.png",
        icon_size = 64,
        scale = 0.25,
        shift = { 8, 0 },
      },
    },
    flags = {
      "placeable-off-grid",
      "not-repairable",
      "not-on-map",
      "not-flammable",
      "get-by-unit-number",
    },
    max_health = 450,
    healing_per_tick = 0.3,
    ticks_to_stay_in_combat = 480,
    inventory_size = 100,
    build_distance = 15,
    reach_distance = 15,
    drop_item_distance = 15,
    loot_pickup_distance = 3.5,
    reach_resource_distance = 3.5,
    tool_attack_distance = 3.5,
    running_speed = 0.225,
    mining_speed = 1.5,
  },
})
bobmods.classes.characters["bob-character-prospector"].tool_attack_result = {
  {
    type = "direct",
    action_delivery = {
      type = "instant",
      target_effects = {
        {
          type = "damage",
          damage = {
            type = "physical",
            amount = 200,
          },
        },
      },
    },
  },
  {
    type = "area",
    radius = 4,
    force = "enemy",
    action_delivery = {
      {
        type = "beam",
        beam = "electric-beam",
        duration = 15,
        max_length = 16,
        add_to_shooter = false,
        source_offset = { 0, -0.5 },
      },
      {
        type = "instant",
        target_effects = {
          {
            type = "push-back",
            distance = 4,
          },
        },
      },
    },
  },
}
if data.raw["damage-type"]["bob-plasma"] then
  bobmods.classes.characters["bob-character-prospector"].tool_attack_result[1].action_delivery.target_effects[1].damage.type =
    "bob-plasma"
end

for index, character in pairs(bobmods.classes.characters) do
  data:extend({
    bobmods.classes.characters[index],
  })
end

--[[DEFAULTS
  {
    name = "character",

    max_health = 250,
    healing_per_tick = 0.15,

    crafting_categories = {"crafting"},
    mining_categories = {"basic-solid"},

    inventory_size = 80,

    build_distance = 10,
    reach_distance = 10,
    reach_resource_distance = 2.7,

    drop_item_distance = 10,
    item_pickup_distance = 1,
    loot_pickup_distance = 2,

    running_speed = 0.15,

    mining_speed = 0.5,
  },
]]
--
