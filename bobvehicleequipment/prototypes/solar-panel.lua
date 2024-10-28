data:extend({
  {
    type = "item",
    name = "vehicle-solar-panel-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-1.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-solar-panel-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-1",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "copper-cable", amount = 4 },
    },
    results = { { type = "item", name = "vehicle-solar-panel-1", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-1.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "50kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
      icon_size = 128,
    }),
    order = "v-g-k-a",
    prerequisites = {
      "logistics-2",
      "engine",
      "lamp",
      "electronics",
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
        recipe = "vehicle-solar-panel-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-solar-panel-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-2.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-solar-panel-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-2",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-solar-panel-1", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-solar-panel-2", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-2.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "80kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
      icon_size = 128,
    }),
    order = "v-g-k-b",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "advanced-circuit",
    },
    unit = {
      count = 75,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-solar-panel-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-3.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-solar-panel-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-3",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-solar-panel-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "copper-plate", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-solar-panel-3", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-3.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "120kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
      icon_size = 128,
    }),
    order = "v-g-k-c",
    prerequisites = {
      "vehicle-solar-panel-equipment-2",
      "processing-unit",
    },
    unit = {
      count = 90,
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
        recipe = "vehicle-solar-panel-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-solar-panel-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-4.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-solar-panel-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-4",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-solar-panel-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "copper-cable", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-solar-panel-4", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-4",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-4.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
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
    name = "vehicle-solar-panel-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
      icon_size = 128,
    }),
    order = "v-g-k-d",
    prerequisites = {
      "vehicle-solar-panel-equipment-3",
    },
    unit = {
      count = 100,
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
        recipe = "vehicle-solar-panel-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-solar-panel-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-5.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-solar-panel-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-5",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-solar-panel-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "copper-cable", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-solar-panel-5", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-5",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-5.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "320kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
      icon_size = 128,
    }),
    order = "v-g-k-e",
    prerequisites = {
      "vehicle-solar-panel-equipment-4",
      "utility-science-pack",
    },
    unit = {
      count = 125,
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
        recipe = "vehicle-solar-panel-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-solar-panel-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-6.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-solar-panel-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-6",
    stack_size = 50,
    default_request_amount = 10,
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-solar-panel-5", amount = 1 },
      { type = "item", name = "steel-plate", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "copper-cable", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-solar-panel-6", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-6",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-6.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "500kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
      icon_size = 128,
    }),
    order = "v-g-k-f",
    prerequisites = {
      "vehicle-solar-panel-equipment-5",
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
        recipe = "vehicle-solar-panel-6",
      },
    },
  },
})
