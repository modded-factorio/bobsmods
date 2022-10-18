data:extend({
  {
    type = "item",
    name = "vehicle-motor",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-motor.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-motor",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-e[vehicle-motor]",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-motor",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "processing-unit", 10 },
      { "electric-engine-unit", 30 },
      { "steel-plate", 20 },
    },
    result = "vehicle-motor",
  },

  {
    type = "movement-bonus-equipment",
    name = "vehicle-motor",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-motor.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "1MJ",
      input_flow_limit = "300KW",
    },
    energy_consumption = "200kW",
    movement_bonus = 0.3,
    categories = { "car", "tank", "spidertron", "locomotive" },
  },

  {
    type = "technology",
    name = "vehicle-motor-equipment",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-motor.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-h-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "electric-engine",
      "advanced-electronics-2",
    },
    unit = {
      count = 50,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-motor",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-engine",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-engine.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-engine",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-e[vehicle-engine]",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-engine",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-motor", 1 },
      --      {"electric-engine-unit", 30},
      { "processing-unit", 10 },
      { "iron-gear-wheel", 30 },
      { "steel-plate", 20 },
    },
    result = "vehicle-engine",
  },

  {
    type = "movement-bonus-equipment",
    name = "vehicle-engine",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-engine.png",
      width = 64,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 2,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "2MJ",
      input_flow_limit = "600KW",
    },
    energy_consumption = "400kW",
    movement_bonus = 0.6,
    categories = { "car", "tank", "spidertron", "locomotive" },
  },

  {
    type = "technology",
    name = "vehicle-engine-equipment",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-engine.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-h-b",
    prerequisites = {
      "vehicle-motor-equipment",
    },
    unit = {
      count = 100,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-engine",
      },
    },
  },
})
