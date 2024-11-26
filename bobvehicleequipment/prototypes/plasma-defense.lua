local function bob_active_weapon_equipment(data)
  --name, sprite, width, height, buffer_capacity, input_flow_limit, target_type, energy_consumption, projectile, sound, damage_modifier, cooldown, range, categories, starting_speed
  local equipment = {
    type = "active-defense-equipment",
    name = data.name,
    sprite = {
      filename = data.sprite,
      width = (data.width or 1) * 32,
      height = (data.height or 1) * 32,
      priority = "medium",
    },
    shape = {
      width = data.width or 1,
      height = data.height or 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = data.buffer_capacity,
      input_flow_limit = data.input_flow_limit,
    },
    attack_parameters = {
      type = "projectile",
      cooldown = data.cooldown or 20,
      damage_modifier = 6 * data.damage_modifier or 1,
      lead_target_for_projectile_speed = data.lead_target_for_projectile_speed,
      projectile_center = { 0, 0 },
      projectile_creation_distance = 0.6,
      range = data.range or 15,
      sound = data.sound,
      ammo_category = "laser",
      ammo_type = {
        type = "projectile",
        target_type = data.target_type,
        energy_consumption = data.energy_consumption,
        action = {
          {
            type = "direct",
            action_delivery = {
              {
                type = "projectile",
                projectile = data.projectile,
                starting_speed = data.starting_speed or 0.28,

                direction_deviation = data.direction_deviation or nil,
                range_deviation = data.range_deviation or nil,

                max_range = (data.range * 2) or 30,
              },
            },
          },
        },
      },
    },
    automatic = true,
    categories = data.categories,
  }
  if data.min_range then
    equipment.attack_parameters.min_range = data.min_range
  end
  if data.clamp_position then
    equipment.attack_parameters.ammo_type.clamp_position = true
  end
  return equipment
end

data:extend({
  {
    type = "item",
    name = "vehicle-big-turret-equipment-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-1.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-big-turret-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-1",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 400000,
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "electronic-circuit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "vehicle-big-turret-equipment-1", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "vehicle-big-turret-equipment-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-1.png",
    width = 4,
    height = 4,
    buffer_capacity = "2200kJ",
    input_flow_limit = "1000kW",
    energy_consumption = "2000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 1,
    lead_target_for_projectile_speed = 1,
    cooldown = 200,
    range = 54,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }),
    order = "v-g-m-a",
    prerequisites = {
      "vehicle-solar-panel-equipment-1",
      "laser-turret",
      "military-3",
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-big-turret-equipment-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-2.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-big-turret-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-2",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 400000,
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-big-turret-equipment-1", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "vehicle-big-turret-equipment-2", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "vehicle-big-turret-equipment-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-2.png",
    width = 4,
    height = 4,
    buffer_capacity = "5200kJ",
    input_flow_limit = "1666kW",
    energy_consumption = "2500kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 1.5,
    lead_target_for_projectile_speed = 1,
    cooldown = 150,
    range = 56,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }),
    order = "v-g-m-b",
    prerequisites = {
      "vehicle-big-turret-equipment-1",
    },
    unit = {
      count = 150,
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
        recipe = "vehicle-big-turret-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-big-turret-equipment-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-3.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-big-turret-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-3",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 400000,
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-big-turret-equipment-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "advanced-circuit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "vehicle-big-turret-equipment-3", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "vehicle-big-turret-equipment-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-3.png",
    width = 4,
    height = 4,
    buffer_capacity = "9200kJ",
    input_flow_limit = "2500kW",
    energy_consumption = "3000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 2.1,
    lead_target_for_projectile_speed = 1,
    cooldown = 120,
    range = 58,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }),
    order = "v-g-m-c",
    prerequisites = {
      "vehicle-big-turret-equipment-2",
      "military-4",
    },
    unit = {
      count = 250,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-big-turret-equipment-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-4.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-big-turret-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-4",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 400000,
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-big-turret-equipment-3", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "vehicle-big-turret-equipment-4", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "vehicle-big-turret-equipment-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-4.png",
    width = 4,
    height = 4,
    buffer_capacity = "14200kJ",
    input_flow_limit = "3500kW",
    energy_consumption = "3500kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 2.8,
    lead_target_for_projectile_speed = 1,
    cooldown = 100,
    range = 60,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }),
    order = "v-g-m-d",
    prerequisites = {
      "vehicle-big-turret-equipment-3",
    },
    unit = {
      count = 300,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-equipment-4",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-big-turret-equipment-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-5.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-big-turret-equipment-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-5",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 400000,
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-equipment-5",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-big-turret-equipment-4", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "vehicle-big-turret-equipment-5", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "vehicle-big-turret-equipment-5",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-5.png",
    width = 4,
    height = 4,
    buffer_capacity = "20200kJ",
    input_flow_limit = "4666kW",
    energy_consumption = "4000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 3.6,
    lead_target_for_projectile_speed = 1,
    cooldown = 85,
    range = 62,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }),
    order = "v-g-m-e",
    prerequisites = {
      "vehicle-big-turret-equipment-4",
    },
    unit = {
      count = 350,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-equipment-5",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "vehicle-big-turret-equipment-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-6.png",
    icon_size = 64,
    place_as_equipment_result = "vehicle-big-turret-equipment-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-6",
    stack_size = 50,
    default_request_amount = 10,
    drop_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/turret-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/turret-inventory-pickup.ogg",
      volume = 0.5,
    },
    weight = 400000,
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-equipment-6",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "vehicle-big-turret-equipment-5", amount = 1 },
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "processing-unit", amount = 20 },
      { type = "item", name = "battery", amount = 12 },
    },
    results = { { type = "item", name = "vehicle-big-turret-equipment-6", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "vehicle-big-turret-equipment-6",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-6.png",
    width = 4,
    height = 4,
    buffer_capacity = "27200kJ",
    input_flow_limit = "6000kW",
    energy_consumption = "4500kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 4.5,
    lead_target_for_projectile_speed = 1,
    cooldown = 75,
    range = 64,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }),
    order = "v-g-m-f",
    prerequisites = {
      "vehicle-big-turret-equipment-5",
    },
    unit = {
      count = 400,
      time = 30,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "military-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-equipment-6",
      },
    },
  },
})
