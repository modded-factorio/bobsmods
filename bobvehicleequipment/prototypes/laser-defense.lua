local function bob_active_beam_weapon_equipment(data)
  local equipment = {
    type = "active-defense-equipment",
    name = data.name,
    sprite = {
      filename = data.sprite,
      width = (data.width or 1) * 32,
      height = (data.height or 1) * 32,
      priority = "medium",
    },
    shape = {
      width = data.width or 1,
      height = data.height or 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = data.buffer_capacity,
      input_flow_limit = data.input_flow_limit,
    },
    attack_parameters = {
      type = "beam",
      cooldown = data.cooldown or 20,
      range = data.range or 15,
      damage_modifier = 4 * data.damage_modifier or 15,
      ammo_category = "laser",
      ammo_type = {
        energy_consumption = data.energy_consumption,
        action = {
          type = "direct",
          action_delivery = {
            type = "beam",
            beam = data.beam,
            max_length = data.range or 15,
            duration = data.cooldown or 20,
            source_offset = { 0, -1.31439 },
          },
        },
      },
    },
    automatic = true,
    categories = data.categories,
  }
  return equipment
end

data:extend({
  {
    type = "item",
    name = "vehicle-laser-defense-equipment-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-1.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-laser-defense-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-1",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 200000,
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "vehicle-laser-defense-equipment-1", amount = 1 } },
  },

  bob_active_beam_weapon_equipment({
    name = "vehicle-laser-defense-equipment-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-1.png",
    width = 2,
    height = 2,
    buffer_capacity = "220kJ",
    input_flow_limit = "1000kW",
    energy_consumption = "100kJ",
    beam = "laser-beam",
    damage_modifier = 0.5,
    cooldown = 40,
    range = 15,
    categories = { "vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-m-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "laser-turret",
      "military-3",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-laser-defense-equipment-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-2.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-laser-defense-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-2",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 200000,
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-laser-defense-equipment-1", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "vehicle-laser-defense-equipment-2", amount = 1 } },
  },

  bob_active_beam_weapon_equipment({
    name = "vehicle-laser-defense-equipment-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-2.png",
    width = 2,
    height = 2,
    buffer_capacity = "5200kJ",
    input_flow_limit = "1666kW",
    energy_consumption = "120kJ",
    beam = "bob-laser-beam-sapphire",
    damage_modifier = 0.8,
    cooldown = 36,
    range = 16,
    categories = { "vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-m-b",
    prerequisites = {
      "vehicle-laser-defense-equipment-1",
      "advanced-circuit",
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-laser-defense-equipment-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-3.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-laser-defense-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-3",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 200000,
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-laser-defense-equipment-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "vehicle-laser-defense-equipment-3", amount = 1 } },
  },

  bob_active_beam_weapon_equipment({
    name = "vehicle-laser-defense-equipment-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-3.png",
    width = 2,
    height = 2,
    buffer_capacity = "920kJ",
    input_flow_limit = "2500kW",
    energy_consumption = "140kJ",
    beam = "bob-laser-beam-emerald",
    damage_modifier = 1.1,
    cooldown = 32,
    range = 17,
    categories = { "vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-m-c",
    prerequisites = {
      "vehicle-laser-defense-equipment-2",
      "production-science-pack",
    },
    unit = {
      count = 250,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-laser-defense-equipment-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-4.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-laser-defense-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-4",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 200000,
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-laser-defense-equipment-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "vehicle-laser-defense-equipment-4", amount = 1 } },
  },

  bob_active_beam_weapon_equipment({
    name = "vehicle-laser-defense-equipment-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-4.png",
    width = 2,
    height = 2,
    buffer_capacity = "1420kJ",
    input_flow_limit = "3500kW",
    energy_consumption = "160kJ",
    beam = "bob-laser-beam-amethyst",
    damage_modifier = 1.4,
    cooldown = 28,
    range = 18,
    categories = { "vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-m-d",
    prerequisites = {
      "vehicle-laser-defense-equipment-3",
      "processing-unit",
    },
    unit = {
      count = 300,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-equipment-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-laser-defense-equipment-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-5.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-laser-defense-equipment-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-5",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 200000,
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-laser-defense-equipment-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "vehicle-laser-defense-equipment-5", amount = 1 } },
  },

  bob_active_beam_weapon_equipment({
    name = "vehicle-laser-defense-equipment-5",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-5.png",
    width = 2,
    height = 2,
    buffer_capacity = "2020kJ",
    input_flow_limit = "4666kW",
    energy_consumption = "180kJ",
    beam = "bob-laser-beam-topaz",
    damage_modifier = 1.7,
    cooldown = 24,
    range = 19,
    categories = { "vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-m-e",
    prerequisites = {
      "vehicle-laser-defense-equipment-4",
      "military-4",
    },
    unit = {
      count = 300,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-equipment-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-laser-defense-equipment-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-6.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-laser-defense-equipment-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-6",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 200000,
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-laser-defense-equipment-5", amount = 1 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "battery", amount = 3 },
    },
    results = { { type = "item", name = "vehicle-laser-defense-equipment-6", amount = 1 } },
  },

  bob_active_beam_weapon_equipment({
    name = "vehicle-laser-defense-equipment-6",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-equipment-6.png",
    width = 2,
    height = 2,
    buffer_capacity = "2720kJ",
    input_flow_limit = "6000kW",
    energy_consumption = "200kJ",
    beam = "bob-laser-beam-diamond",
    damage_modifier = 2,
    cooldown = 20,
    range = 20,
    categories = { "vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-m-f",
    prerequisites = {
      "vehicle-laser-defense-equipment-5",
    },
    unit = {
      count = 350,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-equipment-6",
      },
    },
  },
})
