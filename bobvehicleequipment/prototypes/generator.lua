data:extend({
  {
    type = "item",
    name = "bob-vehicle-fission-reactor-equipment-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-1.png",
    place_as_equipment_result = "bob-vehicle-fission-reactor-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-1",
    stack_size = 50,
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
    name = "bob-vehicle-fission-reactor-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 60 },
      { type = "item", name = "steel-plate", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 12 },
    },
    results = { { type = "item", name = "bob-vehicle-fission-reactor-equipment-1", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "bob-vehicle-fission-reactor-equipment-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-1.png",
      width = 128,
      height = 256,
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
    power = "225kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-fission-reactor-equipment-1",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment-1.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-solar-panel-equipment-1",
      "nuclear-power",
      "military-3",
    },
    unit = {
      count = 150,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-fission-reactor-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-fission-reactor-equipment-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-2.png",
    place_as_equipment_result = "bob-vehicle-fission-reactor-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-2",
    stack_size = 50,
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
    name = "bob-vehicle-fission-reactor-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-1", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 60 },
      { type = "item", name = "steel-plate", amount = 150 },
      { type = "item", name = "uranium-fuel-cell", amount = 12 },
    },
    results = { { type = "item", name = "bob-vehicle-fission-reactor-equipment-2", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "bob-vehicle-fission-reactor-equipment-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-2.png",
      width = 128,
      height = 256,
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
    power = "450kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-fission-reactor-equipment-2",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment-2.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-fission-reactor-equipment-1",
      "production-science-pack",
    },
    unit = {
      count = 200,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-fission-reactor-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-fission-reactor-equipment-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-3.png",
    place_as_equipment_result = "bob-vehicle-fission-reactor-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-3",
    stack_size = 50,
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
    name = "bob-vehicle-fission-reactor-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 36 },
      { type = "item", name = "low-density-structure", amount = 50 },
    },
    results = { { type = "item", name = "bob-vehicle-fission-reactor-equipment-3", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "bob-vehicle-fission-reactor-equipment-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-3.png",
      width = 128,
      height = 256,
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
    power = "1000kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-fission-reactor-equipment-3",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment-3.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-fission-reactor-equipment-2",
      "low-density-structure",
      "processing-unit",
    },
    unit = {
      count = 250,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-fission-reactor-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-fission-reactor-equipment-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-4.png",
    place_as_equipment_result = "bob-vehicle-fission-reactor-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-4",
    stack_size = 50,
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
    name = "bob-vehicle-fission-reactor-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 48 },
    },
    results = { { type = "item", name = "bob-vehicle-fission-reactor-equipment-4", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "bob-vehicle-fission-reactor-equipment-4",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-4.png",
      width = 128,
      height = 256,
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
    power = "1600kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-fission-reactor-equipment-4",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment-4.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-fission-reactor-equipment-3",
      "utility-science-pack",
    },
    unit = {
      count = 300,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-fission-reactor-equipment-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-fission-reactor-equipment-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-5.png",
    place_as_equipment_result = "bob-vehicle-fission-reactor-equipment-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-5",
    stack_size = 50,
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
    name = "bob-vehicle-fission-reactor-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-4", amount = 1 },
      { type = "item", name = "processing-unit", amount = 100 },
      { type = "item", name = "uranium-fuel-cell", amount = 60 },
    },
    results = { { type = "item", name = "bob-vehicle-fission-reactor-equipment-5", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "bob-vehicle-fission-reactor-equipment-5",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-5.png",
      width = 128,
      height = 256,
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
    power = "2400kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-fission-reactor-equipment-5",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment-5.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-fission-reactor-equipment-4",
    },
    unit = {
      count = 350,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-fission-reactor-equipment-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-fission-reactor-equipment-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-fission-reactor-equipment-6.png",
    place_as_equipment_result = "bob-vehicle-fission-reactor-equipment-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-b[fission-reactor]-6",
    stack_size = 50,
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
    name = "bob-vehicle-fission-reactor-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-fission-reactor-equipment-5", amount = 1 },
      { type = "item", name = "processing-unit", amount = 150 },
      { type = "item", name = "uranium-fuel-cell", amount = 96 },
    },
    results = { { type = "item", name = "bob-vehicle-fission-reactor-equipment-6", amount = 1 } },
  },

  {
    type = "generator-equipment",
    name = "bob-vehicle-fission-reactor-equipment-6",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-fission-reactor-equipment-6.png",
      width = 128,
      height = 256,
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
    power = "3600kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-fission-reactor-equipment-6",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-fission-reactor-equipment-6.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-fission-reactor-equipment-5",
      "space-science-pack",
    },
    unit = {
      count = 400,
      time = 45,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
        { "space-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-fission-reactor-equipment-6",
      },
    },
  },
})
