data:extend({
  {
    type = "item",
    name = "bob-vehicle-motor-equipment",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-motor-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-vehicle-motor-equipment",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-e[vehicle-motor-1]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/vehicle-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/vehicle-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/vehicle-inventory-pickup.ogg",
      volume = 0.6,
    },
  },

  {
    type = "recipe",
    name = "bob-vehicle-motor-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "electric-engine-unit", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-vehicle-motor-equipment", amount = 1 } },
  },

  {
    type = "movement-bonus-equipment",
    name = "bob-vehicle-motor-equipment",
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
      input_flow_limit = "300kW",
    },
    energy_consumption = "200kW",
    movement_bonus = 0.3,
    categories = { "car", "tank", "spidertron", "locomotive" },
  },

  {
    type = "technology",
    name = "bob-vehicle-motor-equipment",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-motor-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-solar-panel-equipment-1",
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
        recipe = "bob-vehicle-motor-equipment",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-engine-equipment",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-engine-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-vehicle-engine-equipment",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-e[vehicle-motor-2]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/vehicle-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/vehicle-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/vehicle-inventory-pickup.ogg",
      volume = 0.6,
    },
  },

  {
    type = "recipe",
    name = "bob-vehicle-engine-equipment",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-motor-equipment", amount = 1 },
      --      { type = "item", name = "electric-engine-unit", amount = 30},
      { type = "item", name = "processing-unit", amount = 10 },
      { type = "item", name = "iron-gear-wheel", amount = 30 },
      { type = "item", name = "steel-plate", amount = 20 },
    },
    results = { { type = "item", name = "bob-vehicle-engine-equipment", amount = 1 } },
  },

  {
    type = "movement-bonus-equipment",
    name = "bob-vehicle-engine-equipment",
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
      input_flow_limit = "600kW",
    },
    energy_consumption = "400kW",
    movement_bonus = 0.6,
    categories = { "car", "tank", "spidertron", "locomotive" },
  },

  {
    type = "technology",
    name = "bob-vehicle-engine-equipment",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-engine-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "production-science-pack",
      "bob-vehicle-motor-equipment",
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
        recipe = "bob-vehicle-engine-equipment",
      },
    },
  },
})
