local combined_roboports = true
if mods["boblogistics"] and settings.startup["bobmods-logistics-disableroboports"].value == true then
  combined_roboports = false
end

data:extend({
  {
    type = "item",
    name = "bob-personal-roboport-antenna-equipment",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna.png",
        icon_size = 32,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-antenna-equipment",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-1]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-antenna-equipment-2",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna-2.png",
        icon_size = 32,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-antenna-equipment-2",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-2]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-antenna-equipment-3",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna-3.png",
        icon_size = 32,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-antenna-equipment-3",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-3]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-antenna-equipment-4",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-antenna-4.png",
        icon_size = 32,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-antenna-equipment-4",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-antenna-4]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },

  {
    type = "item",
    name = "bob-personal-roboport-chargepad-equipment",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-chargepad-equipment",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-1]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-chargepad-equipment-2",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad-2.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-chargepad-equipment-2",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-2]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-chargepad-equipment-3",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad-3.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-chargepad-equipment-3",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-3]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-chargepad-equipment-4",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/roboport-chargepad-4.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-chargepad-equipment-4",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-chargepad-4]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },

  {
    type = "item",
    name = "bob-personal-roboport-robot-equipment",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-1.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-robot-equipment",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-1]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-robot-equipment-2",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-2.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-robot-equipment-2",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-2]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-robot-equipment-3",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-3.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-robot-equipment-3",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-3]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },
  {
    type = "item",
    name = "bob-personal-roboport-robot-equipment-4",
    icons = {
      {
        icon = "__bobequipment__/graphics/icons/personal-roboport-equipment-base.png",
        icon_size = 32,
      },
      {
        icon = "__bobequipment__/graphics/icons/construction-robot-4.png",
        icon_size = 32,
        scale = 0.75,
      },
    },
    place_as_equipment_result = "bob-personal-roboport-robot-equipment-4",
    subgroup = "utility-equipment",
    order = "e[robotics]-a[personal-roboport-equipment-robot-4]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/roboport-inventory-move.ogg",
      volume = 0.45,
    },
    pick_sound = {
      filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
      volume = 0.35,
    },
    weight = 50000,
  },

  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-antenna-equipment",
    take_result = "bob-personal-roboport-antenna-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-antenna.png",
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
      buffer_capacity = "100kJ",
      input_flow_limit = "20kW",
      drain = "10kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 15,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-antenna-equipment-2",
    take_result = "bob-personal-roboport-antenna-equipment-2",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-antenna-2.png",
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
      buffer_capacity = "150kJ",
      input_flow_limit = "30kW",
      drain = "15kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 20,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-antenna-equipment-3",
    take_result = "bob-personal-roboport-antenna-equipment-3",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-antenna-3.png",
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
      buffer_capacity = "200kJ",
      input_flow_limit = "40kW",
      drain = "20kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 25,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-antenna-equipment-4",
    take_result = "bob-personal-roboport-antenna-equipment-4",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-antenna-4.png",
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
      buffer_capacity = "250kJ",
      input_flow_limit = "50kW",
      drain = "25kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 30,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },

  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-chargepad-equipment",
    take_result = "bob-personal-roboport-chargepad-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad.png",
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
      buffer_capacity = "35MJ",
      input_flow_limit = "3500kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-chargepad-equipment-2",
    take_result = "bob-personal-roboport-chargepad-equipment-2",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad-2.png",
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
      buffer_capacity = "75MJ",
      input_flow_limit = "7500kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1500kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 4,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-chargepad-equipment-3",
    take_result = "bob-personal-roboport-chargepad-equipment-3",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad-3.png",
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
      buffer_capacity = "135MJ",
      input_flow_limit = "13500kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "2000kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 6,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-chargepad-equipment-4",
    take_result = "bob-personal-roboport-chargepad-equipment-4",
    sprite = {
      filename = "__bobequipment__/graphics/icons/roboport-chargepad-4.png",
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
      buffer_capacity = "215MJ",
      input_flow_limit = "21500kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "2500kW",
    robot_limit = 0,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 8,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },

  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-robot-equipment",
    take_result = "bob-personal-roboport-robot-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/icons/construction-robot-1.png",
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
      buffer_capacity = "50kJ",
      input_flow_limit = "10kW",
      drain = "5kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 5,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-robot-equipment-2",
    take_result = "bob-personal-roboport-robot-equipment-2",
    sprite = {
      filename = "__bobequipment__/graphics/icons/construction-robot-2.png",
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
      buffer_capacity = "100kJ",
      input_flow_limit = "20kW",
      drain = "10kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 10,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-robot-equipment-3",
    take_result = "bob-personal-roboport-robot-equipment-3",
    sprite = {
      filename = "__bobequipment__/graphics/icons/construction-robot-3.png",
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
      buffer_capacity = "150kJ",
      input_flow_limit = "30kW",
      drain = "15kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 15,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },
  {
    type = "roboport-equipment",
    name = "bob-personal-roboport-robot-equipment-4",
    take_result = "bob-personal-roboport-robot-equipment-4",
    sprite = {
      filename = "__bobequipment__/graphics/icons/construction-robot-4.png",
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
      buffer_capacity = "200kJ",
      input_flow_limit = "40kW",
      drain = "20kW",
      usage_priority = "secondary-input",
    },
    charging_energy = "1000kW",
    robot_limit = 20,
    construction_radius = 0,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,
    recharging_animation = {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5,
    },
    recharging_light = { intensity = 0.4, size = 5 },
    stationing_offset = { 0, -0.6 },
    charging_station_shift = { 0, 0.5 },
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = { "armor" },
  },

  {
    type = "recipe",
    name = "bob-personal-roboport-antenna-equipment",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-antenna-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-antenna-equipment-2",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-antenna-equipment", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-antenna-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-antenna-equipment-3",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-antenna-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-antenna-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-antenna-equipment-4",
    enabled = false,
    energy_required = 16,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-antenna-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "iron-gear-wheel", amount = 20 },
      { type = "item", name = "steel-plate", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-antenna-equipment-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-personal-roboport-chargepad-equipment",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 2 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "battery", amount = 20 },
    },
    results = { { type = "item", name = "bob-personal-roboport-chargepad-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-chargepad-equipment-2",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-chargepad-equipment", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "battery", amount = 20 },
    },
    results = { { type = "item", name = "bob-personal-roboport-chargepad-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-chargepad-equipment-3",
    enabled = false,
    energy_required = 12,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-chargepad-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "battery", amount = 20 },
    },
    results = { { type = "item", name = "bob-personal-roboport-chargepad-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-chargepad-equipment-4",
    enabled = false,
    energy_required = 16,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-chargepad-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 5 },
      { type = "item", name = "steel-plate", amount = 5 },
      { type = "item", name = "battery", amount = 20 },
    },
    results = { { type = "item", name = "bob-personal-roboport-chargepad-equipment-4", amount = 1 } },
  },

  {
    type = "recipe",
    name = "bob-personal-roboport-robot-equipment",
    enabled = false,
    energy_required = 2,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-robot-equipment", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-robot-equipment-2",
    enabled = false,
    energy_required = 4,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-robot-equipment", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-robot-equipment-2", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-robot-equipment-3",
    enabled = false,
    energy_required = 6,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-robot-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-robot-equipment-3", amount = 1 } },
  },
  {
    type = "recipe",
    name = "bob-personal-roboport-robot-equipment-4",
    enabled = false,
    energy_required = 8,
    ingredients = {
      { type = "item", name = "bob-personal-roboport-robot-equipment-3", amount = 1 },
      { type = "item", name = "processing-unit", amount = 10 },
    },
    results = { { type = "item", name = "bob-personal-roboport-robot-equipment-4", amount = 1 } },
  },

  {
    type = "technology",
    name = "bob-personal-roboport-modular-equipment-1",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-antenna-equipment",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-chargepad-equipment",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-robot-equipment",
      },
    },
    prerequisites = {},
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-personal-roboport-modular-equipment-2",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-antenna-equipment-2",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-chargepad-equipment-2",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-robot-equipment-2",
      },
    },
    prerequisites = {},
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-personal-roboport-modular-equipment-3",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-antenna-equipment-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-chargepad-equipment-3",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-robot-equipment-3",
      },
    },
    prerequisites = {},
    unit = {
      count = 150,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
  },
  {
    type = "technology",
    name = "bob-personal-roboport-modular-equipment-4",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-equipment.png"),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-antenna-equipment-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-chargepad-equipment-4",
      },
      {
        type = "unlock-recipe",
        recipe = "bob-personal-roboport-robot-equipment-4",
      },
    },
    prerequisites = {},
    unit = {
      count = 200,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
        { "utility-science-pack", 1 },
      },
      time = 30,
    },
  },
})

if combined_roboports == true then
  data.raw.item["personal-roboport-equipment"].icon =
    "__bobequipment__/graphics/icons/technology/personal-roboport-mk1-equipment.png"
  data.raw.item["personal-roboport-equipment"].icon_size = 128
  data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.filename =
    "__bobequipment__/graphics/icons/technology/personal-roboport-mk1-equipment.png"
  data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.width = 128
  data.raw["roboport-equipment"]["personal-roboport-equipment"].sprite.height = 128
  data.raw.technology["personal-roboport-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
    icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk1-equipment.png",
    icon_size = 128,
  }, "__boblibrary__/graphics/constants/constant-equipment.png")

  data.raw.item["personal-roboport-mk2-equipment"].icon =
    "__bobequipment__/graphics/icons/technology/personal-roboport-mk2-equipment.png"
  data.raw.item["personal-roboport-mk2-equipment"].icon_size = 128
  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.filename =
    "__bobequipment__/graphics/icons/technology/personal-roboport-mk2-equipment.png"
  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.width = 128
  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].sprite.height = 128
  data.raw.technology["personal-roboport-mk2-equipment"].icons = bobmods.lib.tech.technology_icon_constant({
    icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk2-equipment.png",
    icon_size = 128,
  }, "__boblibrary__/graphics/constants/constant-equipment.png")

  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source.buffer_capacity = "75MJ"
  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].energy_source.input_flow_limit = "7500kW"
  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].charging_energy = "1500kW"
  data.raw["roboport-equipment"]["personal-roboport-mk2-equipment"].robot_limit = 20

  data:extend({
    {
      type = "item",
      name = "bob-personal-roboport-mk3-equipment",
      localised_description = { "item-description.personal-roboport-equipment" },
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk3-equipment.png",
      icon_size = 128,
      place_as_equipment_result = "bob-personal-roboport-mk3-equipment",
      subgroup = "utility-equipment",
      order = "e[robotics]-b[personal-roboport-mk3-equipment]",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/roboport-inventory-move.ogg",
        volume = 0.45,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/roboport-inventory-move.ogg",
        volume = 0.45,
      },
      pick_sound = {
        filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
        volume = 0.35,
      },
    },
    {
      type = "item",
      name = "bob-personal-roboport-mk4-equipment",
      localised_description = { "item-description.personal-roboport-equipment" },
      icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk4-equipment.png",
      icon_size = 128,
      place_as_equipment_result = "bob-personal-roboport-mk4-equipment",
      subgroup = "utility-equipment",
      order = "e[robotics]-b[personal-roboport-mk4-equipment]",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/roboport-inventory-move.ogg",
        volume = 0.45,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/roboport-inventory-move.ogg",
        volume = 0.45,
      },
      pick_sound = {
        filename = "__base__/sound/item/roboport-inventory-pickup.ogg",
        volume = 0.35,
      },
    },

    {
      type = "recipe",
      name = "bob-personal-roboport-mk3-equipment",
      enabled = false,
      energy_required = 30,
      ingredients = {
        { type = "item", name = "personal-roboport-mk2-equipment", amount = 1 },
        { type = "item", name = "processing-unit", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 40 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "battery", amount = 20 },
      },
      results = { { type = "item", name = "bob-personal-roboport-mk3-equipment", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-personal-roboport-mk4-equipment",
      enabled = false,
      energy_required = 40,
      ingredients = {
        { type = "item", name = "bob-personal-roboport-mk3-equipment", amount = 1 },
        { type = "item", name = "processing-unit", amount = 20 },
        { type = "item", name = "iron-gear-wheel", amount = 40 },
        { type = "item", name = "steel-plate", amount = 20 },
        { type = "item", name = "battery", amount = 20 },
      },
      results = { { type = "item", name = "bob-personal-roboport-mk4-equipment", amount = 1 } },
    },

    {
      type = "roboport-equipment",
      name = "bob-personal-roboport-mk3-equipment",
      take_result = "bob-personal-roboport-mk3-equipment",
      sprite = {
        filename = "__bobequipment__/graphics/icons/technology/personal-roboport-mk3-equipment.png",
        width = 128,
        height = 128,
        priority = "medium",
      },
      shape = {
        width = 2,
        height = 2,
        type = "full",
      },
      energy_source = {
        type = "electric",
        buffer_capacity = "135MJ",
        input_flow_limit = "13500kW",
        usage_priority = "secondary-input",
      },
      charging_energy = "2000kW",
      robot_limit = 30,
      construction_radius = 25,
      spawn_and_station_height = 0.4,
      charge_approach_distance = 2.6,
      recharging_animation = {
        filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
        priority = "high",
        width = 37,
        height = 35,
        frame_count = 16,
        scale = 1.5,
        animation_speed = 0.5,
      },
      recharging_light = { intensity = 0.4, size = 5 },
      stationing_offset = { 0, -0.6 },
      charging_station_shift = { 0, 0.5 },
      charging_station_count = 6,
      charging_distance = 1.6,
      charging_threshold_distance = 5,
      categories = { "armor" },
    },
    {
      type = "roboport-equipment",
      name = "bob-personal-roboport-mk4-equipment",
      take_result = "bob-personal-roboport-mk4-equipment",
      sprite = {
        filename = "__bobequipment__/graphics/icons/technology/personal-roboport-mk4-equipment.png",
        width = 128,
        height = 128,
        priority = "medium",
      },
      shape = {
        width = 2,
        height = 2,
        type = "full",
      },
      energy_source = {
        type = "electric",
        buffer_capacity = "215MJ",
        input_flow_limit = "21500kW",
        usage_priority = "secondary-input",
      },
      charging_energy = "2500kW",
      robot_limit = 40,
      construction_radius = 30,
      spawn_and_station_height = 0.4,
      charge_approach_distance = 2.6,
      recharging_animation = {
        filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
        priority = "high",
        width = 37,
        height = 35,
        frame_count = 16,
        scale = 1.5,
        animation_speed = 0.5,
      },
      recharging_light = { intensity = 0.4, size = 5 },
      stationing_offset = { 0, -0.6 },
      charging_station_shift = { 0, 0.5 },
      charging_station_count = 8,
      charging_distance = 1.6,
      charging_threshold_distance = 5,
      categories = { "armor" },
    },

    {
      type = "technology",
      name = "bob-personal-roboport-mk3-equipment",
      icons = bobmods.lib.tech.technology_icon_constant({
        icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk3-equipment.png",
        icon_size = 128,
      }, "__boblibrary__/graphics/constants/constant-equipment.png"),
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-personal-roboport-mk3-equipment",
        },
      },
      prerequisites = {
        "personal-roboport-mk2-equipment",
        "processing-unit",
        "utility-science-pack",
      },
      unit = {
        count = 150,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
    {
      type = "technology",
      name = "bob-personal-roboport-mk4-equipment",
      icons = bobmods.lib.tech.technology_icon_constant({
        icon = "__bobequipment__/graphics/icons/technology/personal-roboport-mk4-equipment.png",
        icon_size = 128,
      }, "__boblibrary__/graphics/constants/constant-equipment.png"),
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-personal-roboport-mk4-equipment",
        },
      },
      prerequisites = {
        "bob-personal-roboport-mk3-equipment",
        "production-science-pack",
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
  })

  data.raw.technology["bob-personal-roboport-modular-equipment-1"].prerequisites = {
    "personal-roboport-equipment",
  }
  data.raw.technology["bob-personal-roboport-modular-equipment-2"].prerequisites = {
    "bob-personal-roboport-modular-equipment-1",
    "personal-roboport-mk2-equipment",
  }
  data.raw.technology["bob-personal-roboport-modular-equipment-3"].prerequisites = {
    "bob-personal-roboport-modular-equipment-2",
    "bob-personal-roboport-mk3-equipment",
  }
  data.raw.technology["bob-personal-roboport-modular-equipment-4"].prerequisites = {
    "bob-personal-roboport-modular-equipment-3",
    "bob-personal-roboport-mk4-equipment",
  }

  if mods["boblogistics"] then
    bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "bob-roboport-antenna-1")
    bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "bob-roboport-chargepad-1")
    bobmods.lib.tech.add_recipe_unlock("personal-roboport-equipment", "bob-roboport-door-1")
    bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "bob-roboport-antenna-2")
    bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "bob-roboport-chargepad-2")
    bobmods.lib.tech.add_recipe_unlock("personal-roboport-mk2-equipment", "bob-roboport-door-2")
    bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-mk3-equipment", "bob-roboport-antenna-3")
    bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-mk3-equipment", "bob-roboport-chargepad-3")
    bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-mk3-equipment", "bob-roboport-door-3")
    bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-mk4-equipment", "bob-roboport-antenna-4")
    bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-mk4-equipment", "bob-roboport-chargepad-4")
    bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-mk4-equipment", "bob-roboport-door-4")
  end
else
  data.raw.technology["personal-roboport-equipment"].hidden = true
  data.raw.technology["personal-roboport-mk2-equipment"].hidden = true
  data.raw.technology["personal-roboport-equipment"].enabled = false
  data.raw.technology["personal-roboport-mk2-equipment"].enabled = false
  data.raw.recipe["personal-roboport-equipment"].hidden = true
  data.raw.recipe["personal-roboport-mk2-equipment"].hidden = true
  data.raw.item["personal-roboport-equipment"].hidden = true
  data.raw.item["personal-roboport-mk2-equipment"].hidden = true

  data.raw.technology["bob-personal-roboport-modular-equipment-1"].prerequisites = {
    "construction-robotics",
    "solar-panel-equipment",
  }
  data.raw.technology["bob-personal-roboport-modular-equipment-2"].prerequisites = {
    "bob-personal-roboport-modular-equipment-1",
    "chemical-science-pack",
  }
  data.raw.technology["bob-personal-roboport-modular-equipment-3"].prerequisites = {
    "bob-personal-roboport-modular-equipment-2",
    "processing-unit",
    "utility-science-pack",
  }
  data.raw.technology["bob-personal-roboport-modular-equipment-4"].prerequisites = {
    "bob-personal-roboport-modular-equipment-3",
    "production-science-pack",
  }

  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-1", "bob-roboport-antenna-1")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-1", "bob-roboport-chargepad-1")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-1", "bob-roboport-door-1")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-2", "bob-roboport-antenna-2")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-2", "bob-roboport-chargepad-2")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-2", "bob-roboport-door-2")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-3", "bob-roboport-antenna-3")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-3", "bob-roboport-chargepad-3")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-3", "bob-roboport-door-3")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-4", "bob-roboport-antenna-4")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-4", "bob-roboport-chargepad-4")
  bobmods.lib.tech.add_recipe_unlock("bob-personal-roboport-modular-equipment-4", "bob-roboport-door-4")
end
