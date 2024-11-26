data:extend({
  {
    type = "item",
    name = "vehicle-fission-reactor-equipment-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-1.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fission-reactor-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-1",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 250000,
  },

  {
    type = "recipe",
    name = "vehicle-fission-reactor-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 250 },
    },
    results = { { type = "item", name = "vehicle-fission-reactor-equipment-1", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fission-reactor-equipment-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-1.png",
      width = 64,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 4,
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
    name = "vehicle-fission-reactor-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-l-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "processing-unit",
    },
    unit = {
      count = 200,
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
        recipe = "vehicle-fission-reactor-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fission-reactor-equipment-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-2.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fission-reactor-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-2",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 250000,
  },

  {
    type = "recipe",
    name = "vehicle-fission-reactor-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fission-reactor-equipment-1", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-2", amount = 2 },
      { type = "item", name = "speed-module-2", amount = 2 },
      { type = "item", name = "productivity-module-2", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-fission-reactor-equipment-2", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fission-reactor-equipment-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-2.png",
      width = 64,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "750kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fission-reactor-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-l-b",
    prerequisites = {
      "vehicle-fission-reactor-equipment-1",
      "utility-science-pack",
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-fission-reactor-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fission-reactor-equipment-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-3.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fission-reactor-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-3",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 250000,
  },

  {
    type = "recipe",
    name = "vehicle-fission-reactor-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fission-reactor-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-fission-reactor-equipment-3", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fission-reactor-equipment-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-3.png",
      width = 64,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "1250kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fission-reactor-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-l-c",
    prerequisites = {
      "vehicle-fission-reactor-equipment-2",
      "production-science-pack",
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
        recipe = "vehicle-fission-reactor-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fission-reactor-equipment-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-4.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fission-reactor-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-4",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 250000,
  },

  {
    type = "recipe",
    name = "vehicle-fission-reactor-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fission-reactor-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-fission-reactor-equipment-4", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fission-reactor-equipment-4",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-4.png",
      width = 64,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "2000kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fission-reactor-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-l-d",
    prerequisites = {
      "vehicle-fission-reactor-equipment-3",
    },
    unit = {
      count = 350,
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
        recipe = "vehicle-fission-reactor-equipment-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fission-reactor-equipment-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-5.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fission-reactor-equipment-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-5",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 250000,
  },

  {
    type = "recipe",
    name = "vehicle-fission-reactor-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fission-reactor-equipment-4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-fission-reactor-equipment-5", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fission-reactor-equipment-5",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-5.png",
      width = 64,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "3000kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fission-reactor-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-l-e",
    prerequisites = {
      "vehicle-fission-reactor-equipment-4",
    },
    unit = {
      count = 400,
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
        recipe = "vehicle-fission-reactor-equipment-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-fission-reactor-equipment-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-6.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-fission-reactor-equipment-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-6",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/reactor-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/reactor-inventory-pickup.ogg",
      volume = 0.6,
    },
    weight = 250000,
  },

  {
    type = "recipe",
    name = "vehicle-fission-reactor-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-fission-reactor-equipment-5", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "efficiency-module-3", amount = 2 },
      { type = "item", name = "speed-module-3", amount = 2 },
      { type = "item", name = "productivity-module-3", amount = 2 },
    },
    results = { { type = "item", name = "vehicle-fission-reactor-equipment-6", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "vehicle-fission-reactor-equipment-6",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-6.png",
      width = 64,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "4250kW",
    categories = { "vehicle" },
  },

  {
    type = "technology",
    name = "vehicle-fission-reactor-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment.png",
      icon_size = 128,
    }),
    order = "v-g-l-f",
    prerequisites = {
      "vehicle-fission-reactor-equipment-5",
    },
    unit = {
      count = 450,
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
        recipe = "vehicle-fission-reactor-equipment-6",
      },
    },
  },
})
