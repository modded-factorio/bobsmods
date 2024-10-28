data:extend({
  {
    type = "item",
    name = "vehicle-fusion-cell-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-1.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fusion-cell-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fusion-cell]-1",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-fusion-cell-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 125 },
    },
    results = { { type = "item", name = "vehicle-fusion-cell-1", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fusion-cell-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-1.png",
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
      usage_priority = "primary-output",
    },
    power = "200kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fusion-cell-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fusion-cell.png",
      icon_size = 128,
    }),
    order = "v-g-l-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "processing-unit",
    },
    unit = {
      count = 100,
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
        recipe = "vehicle-fusion-cell-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fusion-cell-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-2.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fusion-cell-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fusion-cell]-2",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-fusion-cell-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fusion-cell-1", amount = 1 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "efficiency-module-2", amount = 1 },
      { type = "item", name = "speed-module-2", amount = 1 },
      { type = "item", name = "productivity-module-2", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-fusion-cell-2", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fusion-cell-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-2.png",
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
      usage_priority = "primary-output",
    },
    power = "300kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fusion-cell-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fusion-cell.png",
      icon_size = 128,
    }),
    order = "v-g-l-b",
    prerequisites = {
      "vehicle-fusion-cell-equipment-1",
      "production-science-pack",
    },
    unit = {
      count = 125,
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
        recipe = "vehicle-fusion-cell-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fusion-cell-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-3.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fusion-cell-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fusion-cell]-3",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-fusion-cell-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fusion-cell-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-fusion-cell-3", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fusion-cell-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-3.png",
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
      usage_priority = "primary-output",
    },
    power = "450kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fusion-cell-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fusion-cell.png",
      icon_size = 128,
    }),
    order = "v-g-l-c",
    prerequisites = {
      "vehicle-fusion-cell-equipment-2",
      "utility-science-pack",
    },
    unit = {
      count = 150,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-fusion-cell-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fusion-cell-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-4.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fusion-cell-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fusion-cell]-4",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-fusion-cell-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fusion-cell-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-fusion-cell-4", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fusion-cell-4",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-4.png",
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
      usage_priority = "primary-output",
    },
    power = "650kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fusion-cell-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fusion-cell.png",
      icon_size = 128,
    }),
    order = "v-g-l-d",
    prerequisites = {
      "vehicle-fusion-cell-equipment-3",
    },
    unit = {
      count = 200,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-fusion-cell-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fusion-cell-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-5.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fusion-cell-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fusion-cell]-5",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-fusion-cell-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fusion-cell-4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-fusion-cell-5", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fusion-cell-5",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-5.png",
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
      usage_priority = "primary-output",
    },
    power = "900kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fusion-cell-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fusion-cell.png",
      icon_size = 128,
    }),
    order = "v-g-l-e",
    prerequisites = {
      "vehicle-fusion-cell-equipment-4",
    },
    unit = {
      count = 250,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-fusion-cell-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fusion-cell-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-6.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fusion-cell-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fusion-cell]-6",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-fusion-cell-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fusion-cell-5", amount = 1 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
      { type = "item", name = "speed-module-3", amount = 1 },
      { type = "item", name = "productivity-module-3", amount = 1 },
    },
    results = { { type = "item", name = "vehicle-fusion-cell-6", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fusion-cell-6",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fusion-cell-6.png",
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
      usage_priority = "primary-output",
    },
    power = "1200kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fusion-cell-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fusion-cell.png",
      icon_size = 128,
    }),
    order = "v-g-l-f",
    prerequisites = {
      "vehicle-fusion-cell-equipment-5",
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-fusion-cell-6",
      },
    },
  },
})
