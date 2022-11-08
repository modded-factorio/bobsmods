data:extend({
  {
    type = "item",
    name = "vehicle-shield-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-1.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-shield-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-1",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-shield-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "advanced-circuit", 5 },
      { "steel-plate", 10 },
    },
    result = "vehicle-shield-1",
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-1.png",
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
    name = "vehicle-energy-shield-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield.png",
      icon_size = 64,
    }),
    order = "v-g-e-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "military-science-pack",
      "advanced-electronics",
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
        recipe = "vehicle-shield-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-2.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-shield-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-2",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-shield-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-shield-1", 2 },
      { "processing-unit", 5 },
    },
    result = "vehicle-shield-2",
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-2.png",
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
    name = "vehicle-energy-shield-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield.png",
      icon_size = 64,
    }),
    order = "v-g-e-b",
    prerequisites = {
      "vehicle-energy-shield-equipment-1",
      "advanced-electronics-2",
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
        recipe = "vehicle-shield-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-3.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-shield-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-3",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-shield-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-shield-2", 2 },
      { "processing-unit", 5 },
      { "productivity-module-2", 1 },
    },
    result = "vehicle-shield-3",
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-3",
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
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-3.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-energy-shield-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield.png",
      icon_size = 64,
    }),
    order = "v-g-e-c",
    prerequisites = {
      "vehicle-energy-shield-equipment-2",
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
        recipe = "vehicle-shield-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-4.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-shield-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-4",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-shield-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-shield-3", 2 },
      { "processing-unit", 5 },
      { "effectivity-module-3", 1 },
      { "productivity-module-3", 1 },
    },
    result = "vehicle-shield-4",
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-4",
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
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-4.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-energy-shield-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield.png",
      icon_size = 64,
    }),
    order = "v-g-e-d",
    prerequisites = {
      "vehicle-energy-shield-equipment-3",
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
        recipe = "vehicle-shield-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-5.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-shield-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-5",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-shield-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-shield-4", 2 },
      { "processing-unit", 5 },
      { "effectivity-module-3", 1 },
      { "productivity-module-3", 1 },
    },
    result = "vehicle-shield-5",
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-5",
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
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-5.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-energy-shield-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield.png",
      icon_size = 64,
    }),
    order = "v-g-e-e",
    prerequisites = {
      "vehicle-energy-shield-equipment-4",
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
        recipe = "vehicle-shield-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-shield-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-6.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-shield-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[shield]-6",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-shield-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-shield-5", 2 },
      { "processing-unit", 5 },
      { "effectivity-module-3", 1 },
      { "productivity-module-3", 1 },
    },
    result = "vehicle-shield-6",
  },

  {
    type = "energy-shield-equipment",
    name = "vehicle-shield-6",
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
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-shield-6.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-energy-shield-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-shield.png",
      icon_size = 64,
    }),
    order = "v-g-e-f",
    prerequisites = {
      "vehicle-energy-shield-equipment-5",
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
        recipe = "vehicle-shield-6",
      },
    },
  },
})
