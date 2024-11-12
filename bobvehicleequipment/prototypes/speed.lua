data:extend({
  {
    type = "item",
    name = "vehicle-motor-equipment",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-motor-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-motor-equipment",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-e[vehicle-motor]",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-motor-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "electric-engine-unit", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "vehicle-motor-equipment", amount = 1 } },
  },

  {
    type = "movement-bonus-equipment",
    name = "vehicle-motor-equipment",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-motor-equipment.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-motor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-h-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "electric-engine",
      "processing-unit",
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
        recipe = "vehicle-motor-equipment",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-engine-equipment",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-engine-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-engine-equipment",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-e[vehicle-engine]",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-engine-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-motor-equipment", amount = 1 },
      --      { type = "item", name = "electric-engine-unit", amount = 30},
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "vehicle-engine-equipment", amount = 1 } },
  },

  {
    type = "movement-bonus-equipment",
    name = "vehicle-engine-equipment",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-engine-equipment.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-engine-equipment.png",
      icon_size = 128,
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
        recipe = "vehicle-engine-equipment",
      },
    },
  },
})
