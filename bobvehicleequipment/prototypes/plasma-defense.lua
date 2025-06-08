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
    name = "bob-vehicle-big-turret-equipment-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-3.png",
    icon_size = 64,
    place_as_equipment_result = "bob-vehicle-big-turret-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-1",
    stack_size = 50,
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
    name = "bob-vehicle-big-turret-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 100 },
      { type = "item", name = "advanced-circuit", amount = 25 },
      { type = "item", name = "battery", amount = 40 },
    },
    results = { { type = "item", name = "bob-vehicle-big-turret-equipment-1", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "bob-vehicle-big-turret-equipment-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-3.png",
    width = 4,
    height = 4,
    buffer_capacity = "24000kJ",
    input_flow_limit = "1500kW",
    energy_consumption = "12000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 0.6,
    lead_target_for_projectile_speed = 1,
    cooldown = 300,
    range = 54,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "bob-vehicle-big-turret-equipment-1",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-solar-panel-equipment-1",
      "laser-turret",
      "military-3",
    },
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "military-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-big-turret-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-big-turret-equipment-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-4.png",
    icon_size = 64,
    place_as_equipment_result = "bob-vehicle-big-turret-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-2",
    stack_size = 50,
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
    name = "bob-vehicle-big-turret-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-big-turret-equipment-1", amount = 1 },
      { type = "item", name = "steel-plate", amount = 200 },
      { type = "item", name = "processing-unit", amount = 25 },
      { type = "item", name = "battery", amount = 60 },
    },
    results = { { type = "item", name = "bob-vehicle-big-turret-equipment-2", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "bob-vehicle-big-turret-equipment-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-4.png",
    width = 4,
    height = 4,
    buffer_capacity = "34000kJ",
    input_flow_limit = "2200kW",
    energy_consumption = "16000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 0.9,
    lead_target_for_projectile_speed = 1,
    cooldown = 270,
    range = 56,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "bob-vehicle-big-turret-equipment-2",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-big-turret-equipment-1",
      "processing-unit",
      "production-science-pack",
    },
    unit = {
      count = 250,
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
        recipe = "bob-vehicle-big-turret-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-big-turret-equipment-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-5.png",
    icon_size = 64,
    place_as_equipment_result = "bob-vehicle-big-turret-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-3",
    stack_size = 50,
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
    name = "bob-vehicle-big-turret-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-big-turret-equipment-2", amount = 1 },
      { type = "item", name = "steel-plate", amount = 300 },
      { type = "item", name = "processing-unit", amount = 40 },
      { type = "item", name = "battery", amount = 80 },
    },
    results = { { type = "item", name = "bob-vehicle-big-turret-equipment-3", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "bob-vehicle-big-turret-equipment-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-5.png",
    width = 4,
    height = 4,
    buffer_capacity = "45000kJ",
    input_flow_limit = "3500kW",
    energy_consumption = "22000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 1.35,
    lead_target_for_projectile_speed = 1,
    cooldown = 240,
    range = 58,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "bob-vehicle-big-turret-equipment-3",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-big-turret-equipment-2",
      "military-4",
    },
    unit = {
      count = 300,
      time = 30,
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
        recipe = "bob-vehicle-big-turret-equipment-3",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-big-turret-equipment-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-equipment-6.png",
    icon_size = 64,
    place_as_equipment_result = "bob-vehicle-big-turret-equipment-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-4",
    stack_size = 50,
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
    name = "bob-vehicle-big-turret-equipment-4",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-big-turret-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 50 },
      { type = "item", name = "low-density-structure", amount = 10 },
      { type = "item", name = "efficiency-module-3", amount = 1 },
    },
    results = { { type = "item", name = "bob-vehicle-big-turret-equipment-4", amount = 1 } },
  },

  bob_active_weapon_equipment({
    name = "bob-vehicle-big-turret-equipment-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-equipment-6.png",
    width = 4,
    height = 4,
    buffer_capacity = "64000kJ",
    input_flow_limit = "5000kW",
    energy_consumption = "28000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = { { filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 } },
    damage_modifier = 1.9,
    lead_target_for_projectile_speed = 1,
    cooldown = 210,
    range = 60,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = { "armoured-vehicle" },
  }),

  {
    type = "technology",
    name = "bob-vehicle-big-turret-equipment-4",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret-equipment.png",
      icon_size = 256,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-big-turret-equipment-3",
      "space-science-pack",
      "efficiency-module-3",
    },
    unit = {
      count = 350,
      time = 30,
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
        recipe = "bob-vehicle-big-turret-equipment-4",
      },
    },
  },
})
