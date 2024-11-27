data:extend({
  {
    type = "item",
    name = "vehicle-shield-equipment-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-1.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-shield-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-1",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-shield-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "vehicle-shield-equipment-1", amount = 1 } },
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-equipment-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-1.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    max_shield_value = 100,
    energy_source = {
      type = "electric",
      buffer_capacity = "1500kJ",
      input_flow_limit = "300kW",
      usage_priority = "primary-input",
    },
    energy_per_shield = "20kJ",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-shield-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-e-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "military-science-pack",
      "advanced-circuit",
    },
    unit = {
      count = 150,
      time = 15,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-shield-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-equipment-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-2.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-shield-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-2",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-shield-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-shield-equipment-1", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-shield-equipment-2", amount = 1 } },
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-equipment-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-2.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    max_shield_value = 160,
    energy_source = {
      type = "electric",
      buffer_capacity = "2250kJ",
      input_flow_limit = "450kW",
      usage_priority = "primary-input",
    },
    energy_per_shield = "20kJ",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-shield-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-e-b",
    prerequisites = {
      "vehicle-shield-equipment-1",
      "processing-unit",
      "military-3",
    },
    unit = {
      count = 200,
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
        recipe = "vehicle-shield-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-equipment-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-3.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-shield-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-3",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-shield-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-shield-equipment-2", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "productivity-module-2", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-shield-equipment-3", amount = 1 } },
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-equipment-3",
    max_shield_value = 240,
    energy_per_shield = "20kJ",
    energy_source = {
      type = "electric",
      buffer_capacity = "3000kJ",
      input_flow_limit = "600kW",
      usage_priority = "primary-input",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-3.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-shield-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-e-c",
    prerequisites = {
      "vehicle-shield-equipment-2",
      "productivity-module-2",
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
        recipe = "vehicle-shield-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-equipment-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-4.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-shield-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-4",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-shield-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-shield-equipment-3", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-shield-equipment-4", amount = 1 } },
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-equipment-4",
    max_shield_value = 400,
    energy_per_shield = "20kJ",
    energy_source = {
      type = "electric",
      buffer_capacity = "3750kJ",
      input_flow_limit = "750kW",
      usage_priority = "primary-input",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-4.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-shield-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-e-d",
    prerequisites = {
      "vehicle-shield-equipment-3",
    },
    unit = {
      count = 300,
      time = 45,
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
        recipe = "vehicle-shield-equipment-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-equipment-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-5.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-shield-equipment-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-5",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-shield-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-shield-equipment-4", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-shield-equipment-5", amount = 1 } },
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-equipment-5",
    max_shield_value = 640,
    energy_per_shield = "20kJ",
    energy_source = {
      type = "electric",
      buffer_capacity = "4500kJ",
      input_flow_limit = "900kW",
      usage_priority = "primary-input",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-5.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-shield-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-e-e",
    prerequisites = {
      "vehicle-shield-equipment-4",
      "utility-science-pack",
    },
    unit = {
      count = 350,
      time = 45,
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
        recipe = "vehicle-shield-equipment-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-equipment-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-6.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-shield-equipment-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-6",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-shield-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-shield-equipment-5", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-shield-equipment-6", amount = 1 } },
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-equipment-6",
    max_shield_value = 1000,
    energy_per_shield = "20kJ",
    energy_source = {
      type = "electric",
      buffer_capacity = "5250kJ",
      input_flow_limit = "1050kW",
      usage_priority = "primary-input",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-equipment-6.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-shield-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield-equipment.png",
      icon_size = 64,
    }),
    order = "v-g-e-f",
    prerequisites = {
      "vehicle-shield-equipment-5",
    },
    unit = {
      count = 400,
      time = 45,
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
        recipe = "vehicle-shield-equipment-6",
      },
    },
  },
})
