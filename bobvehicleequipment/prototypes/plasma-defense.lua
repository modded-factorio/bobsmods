data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-1.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-big-turret-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-1",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-1",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 20},
      {"electronic-circuit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-1"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-1.png",
    width = 4,
    height = 4,
    buffer_capacity = "2200kJ",
    input_flow_limit = "1000kW",
    energy_consumption = "2000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 1,
    lead_target_for_projectile_speed = 1,
    cooldown = 200,
    range = 54,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
      icon_size = 256
    },
    order = "v-g-m-a",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-1",
      "laser-turret",
      "chemical-science-pack",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-1"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-2.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-big-turret-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-2",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-2",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-1", 1},
      {"steel-plate", 20},
      {"advanced-circuit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-2"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-2.png",
    width = 4,
    height = 4,
    buffer_capacity = "5200kJ",
    input_flow_limit = "1666kW",
    energy_consumption = "2500kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 1.5,
    lead_target_for_projectile_speed = 1,
    cooldown = 150,
    range = 56,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
      icon_size = 256
    },
    order = "v-g-m-b",
    prerequisites =
    {
      "vehicle-big-turret-equipment-1",
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-2"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-3.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-big-turret-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-3",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-3",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-2", 1},
      {"steel-plate", 20},
      {"advanced-circuit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-3"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-3.png",
    width = 4,
    height = 4,
    buffer_capacity = "9200kJ",
    input_flow_limit = "2500kW",
    energy_consumption = "3000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 2.1,
    lead_target_for_projectile_speed = 1,
    cooldown = 120,
    range = 58,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
      icon_size = 256
    },
    order = "v-g-m-c",
    prerequisites =
    {
      "vehicle-big-turret-equipment-2",
      "utility-science-pack",
    },
    unit =
    {
      count = 250,
      time = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-3"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-4.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-big-turret-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-4",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-4",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-3", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-4"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-4.png",
    width = 4,
    height = 4,
    buffer_capacity = "14200kJ",
    input_flow_limit = "3500kW",
    energy_consumption = "3500kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 2.8,
    lead_target_for_projectile_speed = 1,
    cooldown = 100,
    range = 60,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
      icon_size = 256
    },
    order = "v-g-m-d",
    prerequisites =
    {
      "vehicle-big-turret-equipment-3",
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-4"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-5.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-big-turret-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-5",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-5",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-4", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-5"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-5",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-5.png",
    width = 4,
    height = 4,
    buffer_capacity = "20200kJ",
    input_flow_limit = "4666kW",
    energy_consumption = "4000kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 3.6,
    lead_target_for_projectile_speed = 1,
    cooldown = 85,
    range = 62,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
      icon_size = 256
    },
    order = "v-g-m-e",
    prerequisites =
    {
      "vehicle-big-turret-equipment-4",
    },
    unit =
    {
      count = 350,
      time = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-5"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-6.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-big-turret-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-6",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-6",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-5", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-6"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-6",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-6.png",
    width = 4,
    height = 4,
    buffer_capacity = "27200kJ",
    input_flow_limit = "6000kW",
    energy_consumption = "4500kJ",
    target_type = "position",
    clamp_position = true,
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 4.5,
    lead_target_for_projectile_speed = 1,
    cooldown = 75,
    range = 64,
    min_range = 20,
    direction_deviation = 0,
    range_deviation = 0,
    starting_speed = 1,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
      icon_size = 256
    },
    order = "v-g-m-f",
    prerequisites =
    {
      "vehicle-big-turret-equipment-5",
    },
    unit =
    {
      count = 400,
      time = 30,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"utility-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-6"
      }
    },
  },
}
)





