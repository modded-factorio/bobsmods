data:extend({
  {
    type = "night-vision-equipment",
    name = "night-vision-equipment-2",
    sprite = {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
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
      buffer_capacity = "180kJ",
      input_flow_limit = "360kW",
      usage_priority = "primary-input",
    },
    energy_input = "15kW",
    categories = { "armor" },
    darkness_to_turn_on = 0.4,
    color_lookup = { { 0.5, "__core__/graphics/color_luts/lut-dawn.png" } },
  },
  {
    type = "night-vision-equipment",
    name = "night-vision-equipment-3",
    sprite = {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
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
      buffer_capacity = "240kJ",
      input_flow_limit = "480kW",
      usage_priority = "primary-input",
    },
    energy_input = "20kW",
    categories = { "armor" },
    darkness_to_turn_on = 0.05,
    color_lookup = { { 0.5, "__core__/graphics/color_luts/identity-lut.png" } },
  },
})

if not mods["space-exploration"] then
  -- energy_per_shield MK1 is 20J per shield unit, MK2 is 30J.
  -- max_shield_value MK1 is 50, MK2 is 150
  -- buffer_capacity MK1 is "120J", MK2 is 180J
  -- input_flow_limit MK1 is "240W", MK2 is 360W

  data.raw["energy-shield-equipment"]["energy-shield-equipment"].max_shield_value = 75
  data.raw["energy-shield-equipment"]["energy-shield-equipment"].sprite = {
    filename = "__bobequipment__/graphics/equipment/energy-shield-mk1-equipment.png",
    width = 64,
    height = 64,
    priority = "medium",
  }

  data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].energy_per_shield = "20kJ"
  data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].sprite = {
    filename = "__bobequipment__/graphics/equipment/energy-shield-mk2-equipment.png",
    width = 64,
    height = 64,
    priority = "medium",
  }

  data:extend({
    {
      type = "energy-shield-equipment",
      name = "energy-shield-mk3-equipment",
      max_shield_value = 300,
      energy_per_shield = "20kJ",
      energy_source = {
        type = "electric",
        buffer_capacity = "240kJ",
        input_flow_limit = "480kW",
        usage_priority = "primary-input",
      },
      shape = {
        width = 2,
        height = 2,
        type = "full",
      },
      sprite = {
        filename = "__bobequipment__/graphics/equipment/energy-shield-mk3-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
      },
      categories = { "armor" },
    },

    {
      type = "energy-shield-equipment",
      name = "energy-shield-mk4-equipment",
      max_shield_value = 600,
      energy_per_shield = "20kJ",
      energy_source = {
        type = "electric",
        buffer_capacity = "300kJ",
        input_flow_limit = "600kW",
        usage_priority = "primary-input",
      },
      shape = {
        width = 2,
        height = 2,
        type = "full",
      },
      sprite = {
        filename = "__bobequipment__/graphics/equipment/energy-shield-mk4-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
      },
      categories = { "armor" },
    },

    {
      type = "energy-shield-equipment",
      name = "energy-shield-mk5-equipment",
      max_shield_value = 1200,
      energy_per_shield = "20kJ",
      energy_source = {
        type = "electric",
        buffer_capacity = "360kJ",
        input_flow_limit = "720kW",
        usage_priority = "primary-input",
      },
      shape = {
        width = 2,
        height = 2,
        type = "full",
      },
      sprite = {
        filename = "__bobequipment__/graphics/equipment/energy-shield-mk5-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
      },
      categories = { "armor" },
    },

    {
      type = "energy-shield-equipment",
      name = "energy-shield-mk6-equipment",
      max_shield_value = 2400,
      energy_per_shield = "20kJ",
      energy_source = {
        type = "electric",
        buffer_capacity = "420kJ",
        input_flow_limit = "840kW",
        usage_priority = "primary-input",
      },
      shape = {
        width = 2,
        height = 2,
        type = "full",
      },
      sprite = {
        filename = "__bobequipment__/graphics/equipment/energy-shield-mk6-equipment.png",
        width = 64,
        height = 64,
        priority = "medium",
      },
      categories = { "armor" },
    },
  })
end

data.raw["battery-equipment"]["battery-equipment"].sprite.filename =
  "__bobequipment__/graphics/equipment/battery-equipment.png"

data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.filename =
  "__bobequipment__/graphics/equipment/battery-mk2-equipment.png"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.buffer_capacity = "50MJ"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.input_flow_limit = "500MW"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.output_flow_limit = "500MW"

data:extend({
  {
    type = "battery-equipment",
    name = "battery-mk3-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/equipment/battery-mk3-equipment.png",
      width = 32,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 2,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "120MJ",
      input_flow_limit = "1200MW",
      output_flow_limit = "1200MW",
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
  {
    type = "battery-equipment",
    name = "battery-mk4-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/equipment/battery-mk4-equipment.png",
      width = 32,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 2,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "300MJ",
      input_flow_limit = "3000MW",
      output_flow_limit = "3000MW",
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
  {
    type = "battery-equipment",
    name = "battery-mk5-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/equipment/battery-mk5-equipment.png",
      width = 32,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 2,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "750MJ",
      input_flow_limit = "7500MW",
      output_flow_limit = "7500MW",
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
  {
    type = "battery-equipment",
    name = "battery-mk6-equipment",
    sprite = {
      filename = "__bobequipment__/graphics/equipment/battery-mk6-equipment.png",
      width = 32,
      height = 64,
      priority = "medium",
    },
    shape = {
      width = 1,
      height = 2,
      type = "full",
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1800MJ",
      input_flow_limit = "18000MW",
      output_flow_limit = "18000MW",
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
})

data.raw["solar-panel-equipment"]["solar-panel-equipment"].sprite = {
  filename = "__bobequipment__/graphics/icons/solar-panel-equipment-1.png",
  width = 32,
  height = 32,
  priority = "medium",
}

data:extend({
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-2",
    sprite = {
      filename = "__bobequipment__/graphics/icons/solar-panel-equipment-2.png",
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
      usage_priority = "primary-output",
    },
    power = "45kW",
    categories = { "armor" },
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-3",
    sprite = {
      filename = "__bobequipment__/graphics/icons/solar-panel-equipment-3.png",
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
      usage_priority = "primary-output",
    },
    power = "75kW",
    categories = { "armor" },
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-4",
    sprite = {
      filename = "__bobequipment__/graphics/icons/solar-panel-equipment-4.png",
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
      usage_priority = "primary-output",
    },
    power = "120kW",
    categories = { "armor" },
  },
})

data.raw["generator-equipment"]["fusion-reactor-equipment"].sprite = {
  filename = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-1.png",
  width = 128,
  height = 128,
  priority = "medium",
}

data:extend({
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment-2",
    sprite = {
      filename = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-2.png",
      width = 128,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "1250kW",
    categories = { "armor" },
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment-3",
    sprite = {
      filename = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-3.png",
      width = 128,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "2000kW",
    categories = { "armor" },
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment-4",
    sprite = {
      filename = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-4.png",
      width = 128,
      height = 128,
      priority = "medium",
    },
    shape = {
      width = 4,
      height = 4,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "3000kW",
    categories = { "armor" },
  },
})

local function bob_personal_laser_defense_equipment(
  name,
  sprite,
  buffer_capacity,
  energy_consumption,
  beam,
  damage_modifier,
  cooldown,
  range
)
  return {
    type = "active-defense-equipment",
    name = name,
    sprite = {
      filename = sprite,
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
      usage_priority = "secondary-input",
      buffer_capacity = buffer_capacity,
    },
    attack_parameters = {
      type = "beam",
      cooldown = cooldown,
      damage_modifier = 4 * damage_modifier,
      range = range,
      ammo_type = {
        category = "laser",
        energy_consumption = energy_consumption,
        action = {
          {
            type = "direct",
            action_delivery = {

              type = "beam",
              beam = beam,
              max_length = range,
              duration = cooldown,
              source_offset = { 0, -1.31439 },
            },
          },
        },
      },
    },
    automatic = true,
    categories = { "armor" },
  }
end

data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].sprite = {
  filename = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-1.png",
  width = 128,
  height = 128,
  priority = "medium",
}

data:extend({
  --  bob_personal_laser_defense_equipment(name, sprite, buffer_capacity, energy_consumption, projectile, damage_modifier, cooldown, range)
  bob_personal_laser_defense_equipment(
    "personal-laser-defense-equipment-2",
    "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
    "380kJ",
    "60kJ",
    "bob-laser-beam-sapphire",
    1.5,
    15,
    16
  ),
  bob_personal_laser_defense_equipment(
    "personal-laser-defense-equipment-3",
    "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
    "580kJ",
    "70kJ",
    "bob-laser-beam-emerald",
    2.1,
    12,
    17
  ),
  bob_personal_laser_defense_equipment(
    "personal-laser-defense-equipment-4",
    "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
    "820kJ",
    "80kJ",
    "bob-laser-beam-amethyst",
    2.8,
    10,
    18
  ),
  bob_personal_laser_defense_equipment(
    "personal-laser-defense-equipment-5",
    "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
    "1100kJ",
    "90kJ",
    "bob-laser-beam-topaz",
    3.6,
    8.5,
    19
  ),
  bob_personal_laser_defense_equipment(
    "personal-laser-defense-equipment-6",
    "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
    "1420kJ",
    "100kJ",
    "bob-laser-beam-diamond",
    4.5,
    7.5,
    20
  ),
})

data:extend({
  {
    type = "movement-bonus-equipment",
    name = "exoskeleton-equipment-2",
    sprite = {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
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
      usage_priority = "secondary-input",
    },
    energy_consumption = "300kW",
    movement_bonus = 0.45,
    categories = { "armor" },
  },
  {
    type = "movement-bonus-equipment",
    name = "exoskeleton-equipment-3",
    sprite = {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
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
      usage_priority = "secondary-input",
    },
    energy_consumption = "400kW",
    movement_bonus = 0.6,
    categories = { "armor" },
  },
})
