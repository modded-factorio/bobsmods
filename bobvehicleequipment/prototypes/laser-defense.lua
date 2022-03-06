function bob_active_beam_weapon_equipment(data)
local equipment =
  {
    type = "active-defense-equipment",
    name = data.name,
    sprite = 
    {
      filename = data.sprite,
      width = (data.width or 1) * 32,
      height = (data.height or 1) * 32,
      priority = "medium"
    },
    shape =
    {
      width = data.width or 1,
      height = data.height or 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = data.buffer_capacity,
      input_flow_limit = data.input_flow_limit
    },
    attack_parameters =
    {
      type = "beam",
      cooldown = data.cooldown or 20,
      range = data.range or 15,
      damage_modifier = 15 * data.damage_modifier or 15,
      ammo_type =
      {
        category = "laser",
        energy_consumption = data.energy_consumption,
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = data.beam,
            max_length = data.range or 15,
            duration = data.cooldown or 20,
            source_offset = {0, -1.31439 }
          }
        }
      }
    },
    automatic = true,
    categories = data.categories
  }
return equipment
end

function bob_active_weapon_equipment(data)
--name, sprite, width, height, buffer_capacity, input_flow_limit, target_type, energy_consumption, projectile, sound, damage_modifier, cooldown, range, categories, starting_speed
local equipment =
  {
    type = "active-defense-equipment",
    name = data.name,
    sprite = 
    {
      filename = data.sprite,
      width = (data.width or 1) * 32,
      height = (data.height or 1) * 32,
      priority = "medium"
    },
    shape =
    {
      width = data.width or 1,
      height = data.height or 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = data.buffer_capacity,
      input_flow_limit = data.input_flow_limit
    },
    attack_parameters =
    {
      type = "projectile",
      cooldown = data.cooldown or 20,
      damage_modifier = 10 * data.damage_modifier or 1,
      lead_target_for_projectile_speed = data.lead_target_for_projectile_speed,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = data.range or 15,
      sound = data.sound,
      ammo_type =
      {
        type = "projectile",
        category = "laser",
        target_type = data.target_type,
        energy_consumption = data.energy_consumption,
        projectile = data.projectile,
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = data.projectile,
                starting_speed = data.starting_speed or 0.28,

                direction_deviation = data.direction_deviation or nil,
                range_deviation = data.range_deviation or nil,

                max_range = (data.range * 2) or 30,
              }
            }
          }
        }
      }
    },
    automatic = true,
    categories = data.categories
  }
  if data.min_range then
    equipment.attack_parameters.min_range = data.min_range
  end
  if data.clamp_position then
    equipment.attack_parameters.ammo_type.clamp_position = true
  end
return equipment
end



data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-1",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-1.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-laser-defense-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-1",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-1",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 5},
      {"battery", 3}
    },
    result = "vehicle-laser-defense-1"
  },

  bob_active_beam_weapon_equipment{
    name = "vehicle-laser-defense-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-1.png",
    width = 2,
    height = 2,
    buffer_capacity = "220kJ",
    input_flow_limit = "1000kW",
    energy_consumption = "200kJ",
    beam = "laser-beam",
    damage_modifier = 1,
    cooldown = 20,
    range = 15,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-1",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
      icon_size = 64
    },
    order = "v-g-m-a",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-1",
      "laser-turret"
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
        recipe = "vehicle-laser-defense-1"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-2",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-2.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-laser-defense-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-2",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-2",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-1", 1},
      {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"battery", 3}
    },
    result = "vehicle-laser-defense-2"
  },

  bob_active_beam_weapon_equipment{
    name = "vehicle-laser-defense-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-2.png",
    width = 2,
    height = 2,
    buffer_capacity = "5200kJ",
    input_flow_limit = "1666kW",
    energy_consumption = "250kJ",
    beam = "bob-laser-beam-sapphire",
    damage_modifier = 1.5,
    cooldown = 15,
    range = 16,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-2",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
      icon_size = 64
    },
    order = "v-g-m-b",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-1",
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
        recipe = "vehicle-laser-defense-2"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-3",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-3.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-laser-defense-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-3",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-3",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-2", 1},
      {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"battery", 3}
    },
    result = "vehicle-laser-defense-3"
  },

  bob_active_beam_weapon_equipment{
    name = "vehicle-laser-defense-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-3.png",
    width = 2,
    height = 2,
    buffer_capacity = "920kJ",
    input_flow_limit = "2500kW",
    energy_consumption = "300kJ",
    beam = "bob-laser-beam-emerald",
    damage_modifier = 2.1,
    cooldown = 12,
    range = 17,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-3",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
      icon_size = 64
    },
    order = "v-g-m-c",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-2",
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
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-3"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-4",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-4.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-laser-defense-4",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-4",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-4",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-3", 1},
      {"steel-plate", 5},
      {"processing-unit", 5},
      {"battery", 3},
    },
    result = "vehicle-laser-defense-4"
  },

  bob_active_beam_weapon_equipment{
    name = "vehicle-laser-defense-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-4.png",
    width = 2,
    height = 2,
    buffer_capacity = "1420kJ",
    input_flow_limit = "3500kW",
    energy_consumption = "350kJ",
    beam = "bob-laser-beam-amethyst",
    damage_modifier = 2.8,
    cooldown = 10,
    range = 18,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-4",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
      icon_size = 64
    },
    order = "v-g-m-d",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-3",
      "advanced-electronics-2",
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
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-4"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-5",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-5.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-laser-defense-5",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-5",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-5",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-4", 1},
      {"steel-plate", 5},
      {"processing-unit", 5},
      {"battery", 3},
    },
    result = "vehicle-laser-defense-5"
  },

  bob_active_beam_weapon_equipment{
    name = "vehicle-laser-defense-5",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-5.png",
    width = 2,
    height = 2,
    buffer_capacity = "2020kJ",
    input_flow_limit = "4666kW",
    energy_consumption = "400kJ",
    beam = "bob-laser-beam-topaz",
    damage_modifier = 3.6,
    cooldown = 8.5,
    range = 19,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-5",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
      icon_size = 64
    },
    order = "v-g-m-e",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-4",
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
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-5"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-6",
    icon = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-6.png",
    icon_size = 64,
    placed_as_equipment_result = "vehicle-laser-defense-6",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-6",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-6",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-5", 1},
      {"steel-plate", 5},
      {"processing-unit", 5},
      {"battery", 3},
    },
    result = "vehicle-laser-defense-6"
  },

  bob_active_beam_weapon_equipment{
    name = "vehicle-laser-defense-6",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-6.png",
    width = 2,
    height = 2,
    buffer_capacity = "2720kJ",
    input_flow_limit = "6000kW",
    energy_consumption = "550kJ",
    beam = "bob-laser-beam-diamond",
    damage_modifier = 4.5,
    cooldown = 7.5,
    range = 20,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-6",
    icons = bobmods.equipment.technology_icon_constant_vehicle_equipment
    {
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
      icon_size = 64
    },
    order = "v-g-m-f",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-5",
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
        recipe = "vehicle-laser-defense-6"
      }
    },
  },
}
)









