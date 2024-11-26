data:extend({
  {
    type = "item",
    name = "vehicle-battery-equipment-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-1.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-battery-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-1",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-battery-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "battery", amount = 5 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "vehicle-battery-equipment-1", amount = 1 } },
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-equipment-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-1.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery-equipment.png",
      icon_size = 128,
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
        recipe = "vehicle-battery-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-equipment-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-2.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-battery-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-2",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-battery-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-battery-equipment-1", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-battery-equipment-2", amount = 1 } },
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-equipment-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-2.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-i-b",
    prerequisites = {
      "vehicle-battery-equipment-1",
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
        recipe = "vehicle-battery-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-equipment-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-3.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-battery-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-3",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-battery-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-battery-equipment-2", amount = 2 },
      { type = "item", name = "battery", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-battery-equipment-3", amount = 1 } },
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-equipment-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-3.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery-equipment.png",
      icon_size = 128,
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
        recipe = "vehicle-battery-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-equipment-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-4.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-battery-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-4",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-battery-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-battery-equipment-3", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-battery-equipment-4", amount = 1 } },
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-equipment-4",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-4.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery-equipment.png",
      icon_size = 128,
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
        recipe = "vehicle-battery-equipment-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-equipment-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-5.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-battery-equipment-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-5",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-battery-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-battery-equipment-4", amount = 2 },
      { type = "item", name = "battery", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-battery-equipment-5", amount = 1 } },
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-equipment-5",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-5.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery-equipment.png",
      icon_size = 128,
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
        recipe = "vehicle-battery-equipment-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-battery-equipment-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-6.png",
    icon_size = 32,
    place_as_equipment_result = "vehicle-battery-equipment-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-c[battery]-6",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },

  {
    type = "recipe",
    name = "vehicle-battery-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-battery-equipment-5", amount = 2 },
      { type = "item", name = "processing-unit", amount = 5 },
    },
    results = { { type = "item", name = "vehicle-battery-equipment-6", amount = 1 } },
  },

  {
    type = "battery-equipment",
    name = "vehicle-battery-equipment-6",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-battery-equipment-6.png",
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
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-battery-equipment.png",
      icon_size = 128,
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
        recipe = "vehicle-battery-equipment-6",
      },
    },
  },
})
