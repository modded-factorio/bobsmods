data:extend({
  {
    type = "item",
    name = "vehicle-battery-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-1.png",
    icon_size = 32,
    placed_as_equipment_result = "vehicle-battery-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-1",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-battery-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "battery", 5 },
      { "steel-plate", 10 },
    },
    result = "vehicle-battery-1",
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-1.png",
      width = 32,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "75MJ", --"20MJ",
      input_flow_limit = "750MW",
      output_flow_limit = "750MW",
      usage_priority = "tertiary",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-battery-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-i-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "battery",
    },
    unit = {
      count = 50,
      time = 15,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-battery-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-2.png",
    icon_size = 32,
    placed_as_equipment_result = "vehicle-battery-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-2",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-battery-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-battery-1", 2 },
      { "processing-unit", 5 },
    },
    result = "vehicle-battery-2",
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-2.png",
      width = 32,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "120MJ",
      input_flow_limit = "1200MW",
      output_flow_limit = "1200MW",
      usage_priority = "tertiary",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-battery-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-i-b",
    prerequisites = {
      "vehicle-battery-equipment-1",
      "advanced-electronics-2",
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
        recipe = "vehicle-battery-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-3.png",
    icon_size = 32,
    placed_as_equipment_result = "vehicle-battery-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-3",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-battery-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-battery-2", 2 },
      { "battery", 5 },
    },
    result = "vehicle-battery-3",
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-3.png",
      width = 32,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "210MJ",
      input_flow_limit = "2100MW",
      output_flow_limit = "2100MW",
      usage_priority = "tertiary",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-battery-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-i-c",
    prerequisites = {
      "vehicle-battery-equipment-2",
    },
    unit = {
      count = 150,
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
        recipe = "vehicle-battery-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-4.png",
    icon_size = 32,
    placed_as_equipment_result = "vehicle-battery-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-4",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-battery-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-battery-3", 2 },
      { "processing-unit", 5 },
    },
    result = "vehicle-battery-4",
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-4",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-4.png",
      width = 32,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "360MJ",
      input_flow_limit = "3600MW",
      output_flow_limit = "3600MW",
      usage_priority = "tertiary",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-battery-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-i-d",
    prerequisites = {
      "vehicle-battery-equipment-3",
      "production-science-pack",
    },
    unit = {
      count = 200,
      time = 45,
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
        recipe = "vehicle-battery-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-5.png",
    icon_size = 32,
    placed_as_equipment_result = "vehicle-battery-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-5",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-battery-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-battery-4", 2 },
      { "battery", 5 },
    },
    result = "vehicle-battery-5",
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-5",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-5.png",
      width = 32,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "600MJ",
      input_flow_limit = "6000MW",
      output_flow_limit = "6000MW",
      usage_priority = "tertiary",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-battery-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-i-e",
    prerequisites = {
      "vehicle-battery-equipment-4",
    },
    unit = {
      count = 250,
      time = 45,
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
        recipe = "vehicle-battery-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-6.png",
    icon_size = 32,
    placed_as_equipment_result = "vehicle-battery-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-6",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-battery-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { "vehicle-battery-5", 2 },
      { "processing-unit", 5 },
    },
    result = "vehicle-battery-6",
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-6",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-6.png",
      width = 32,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1000MJ",
      input_flow_limit = "10000MW",
      output_flow_limit = "10000MW",
      usage_priority = "tertiary",
    },
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-battery-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery.png",
      icon_size = 128,
      icon_mipmaps = 3,
    }),
    order = "v-g-i-f",
    prerequisites = {
      "vehicle-battery-equipment-5",
      "utility-science-pack",
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
        recipe = "vehicle-battery-6",
      },
    },
  },
})
