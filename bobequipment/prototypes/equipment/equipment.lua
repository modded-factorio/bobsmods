data.raw["night-vision-equipment"]["night-vision-equipment"].color_lookup =
  { { 0.5, "__core__/graphics/color_luts/lut-dawn.png" } }

data:extend({
  {
    type = "night-vision-equipment",
    name = "bob-night-vision-equipment-2",
    sprite = {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 128,
      height = 128,
      scale = 0.5,
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
    color_lookup = { { 0.5, "__core__/graphics/color_luts/nightvision.png" } },
    activate_sound = {
      filename = "__base__/sound/nightvision-on.ogg",
      volume = 0.5,
    },
    deactivate_sound = {
      filename = "__base__/sound/nightvision-off.ogg",
      volume = 0.5,
    },
  },
  {
    type = "night-vision-equipment",
    name = "bob-night-vision-equipment-3",
    sprite = {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 128,
      height = 128,
      scale = 0.5,
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
    activate_sound = {
      filename = "__base__/sound/nightvision-on.ogg",
      volume = 0.5,
    },
    deactivate_sound = {
      filename = "__base__/sound/nightvision-off.ogg",
      volume = 0.5,
    },
  },
})

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
    name = "bob-energy-shield-mk3-equipment",
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
    name = "bob-energy-shield-mk4-equipment",
    max_shield_value = 500,
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
    name = "bob-energy-shield-mk5-equipment",
    max_shield_value = 800,
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
    name = "bob-energy-shield-mk6-equipment",
    max_shield_value = 1200,
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

data.raw["battery-equipment"]["battery-equipment"].sprite.filename =
  "__bobequipment__/graphics/equipment/battery-equipment.png"
data.raw["battery-equipment"]["battery-equipment"].sprite.height = 64
data.raw["battery-equipment"]["battery-equipment"].sprite.width = 32
data.raw["battery-equipment"]["battery-equipment"].sprite.scale = 1

data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.filename =
  "__bobequipment__/graphics/equipment/battery-mk2-equipment.png"
data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.height = 64
data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.width = 32
data.raw["battery-equipment"]["battery-mk2-equipment"].sprite.scale = 1
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.buffer_capacity = "50MJ"

data:extend({
  {
    type = "battery-equipment",
    name = "bob-battery-mk3-equipment",
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
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
  {
    type = "battery-equipment",
    name = "bob-battery-mk4-equipment",
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
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
  {
    type = "battery-equipment",
    name = "bob-battery-mk5-equipment",
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
      usage_priority = "tertiary",
    },
    categories = { "armor" },
  },
  {
    type = "battery-equipment",
    name = "bob-battery-mk6-equipment",
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
    name = "bob-solar-panel-equipment-2",
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
    name = "bob-solar-panel-equipment-3",
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
    power = "67.5kW",
    categories = { "armor" },
  },
})

if data.raw.item["bob-alien-artifact"] then
  data:extend({
    {
      type = "solar-panel-equipment",
      name = "bob-solar-panel-equipment-4",
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
      power = "100kW",
      categories = { "armor" },
    },
  })

  if data.raw.item["bob-alien-orange-alloy"] and data.raw.fluid["bob-alien-acid"] then
    data:extend({
      {
        type = "solar-panel-equipment",
        name = "bob-solar-panel-equipment-5",
        sprite = {
          filename = "__bobequipment__/graphics/icons/solar-panel-equipment-5.png",
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
        power = "150kW",
        categories = { "armor" },
      },
    })
  end
end

data.raw["generator-equipment"]["fission-reactor-equipment"].sprite = {
  filename = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-1.png",
  width = 256,
  height = 256,
  priority = "medium",
}
data.raw["generator-equipment"]["fission-reactor-equipment"].power = "450kW"

data:extend({
  {
    type = "generator-equipment",
    name = "bob-fission-reactor-equipment-2",
    sprite = {
      filename = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-2.png",
      width = 256,
      height = 256,
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
    power = "1000kW",
    categories = { "armor" },
  },
  {
    type = "generator-equipment",
    name = "bob-fission-reactor-equipment-3",
    sprite = {
      filename = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-3.png",
      width = 256,
      height = 256,
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
    power = "1600kW",
    categories = { "armor" },
  },
  {
    type = "generator-equipment",
    name = "bob-fission-reactor-equipment-4",
    sprite = {
      filename = "__bobequipment__/graphics/icons/technology/fission-reactor-equipment-4.png",
      width = 256,
      height = 256,
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
    power = "2400kW",
    categories = { "armor" },
  },
})

local qualmod = 2
if feature_flags["quality"] then
  qualmod = 1
else
  data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters.damage_modifier = 2
end

local function bob_personal_laser_defense_equipment(inputs)
  return {
    type = "active-defense-equipment",
    name = inputs.name,
    sprite = {
      filename = inputs.sprite,
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
      buffer_capacity = inputs.buffer_capacity,
    },
    attack_parameters = {
      type = "beam",
      cooldown = inputs.cooldown,
      damage_modifier = 4 * inputs.damage_modifier * qualmod,
      range = inputs.range,
      ammo_category = "laser",
      ammo_type = {
        energy_consumption = inputs.energy_consumption,
        action = {
          {
            type = "direct",
            action_delivery = {

              type = "beam",
              beam = inputs.beam,
              max_length = inputs.range,
              duration = inputs.cooldown,
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
  bob_personal_laser_defense_equipment({
    name = "bob-personal-laser-defense-equipment-2",
    sprite = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
    buffer_capacity = "380kJ",
    energy_consumption = "60kJ",
    beam = "bob-laser-beam-sapphire",
    damage_modifier = 0.4,
    cooldown = 36,
    range = 16,
  }),
  bob_personal_laser_defense_equipment({
    name = "bob-personal-laser-defense-equipment-3",
    sprite = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
    buffer_capacity = "580kJ",
    energy_consumption = "70kJ",
    beam = "bob-laser-beam-emerald",
    damage_modifier = 0.55,
    cooldown = 32,
    range = 17,
  }),
  bob_personal_laser_defense_equipment({
    name = "bob-personal-laser-defense-equipment-4",
    sprite = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
    buffer_capacity = "820kJ",
    energy_consumption = "80kJ",
    beam = "bob-laser-beam-amethyst",
    damage_modifier = 0.7,
    cooldown = 28,
    range = 18,
  }),
  bob_personal_laser_defense_equipment({
    name = "bob-personal-laser-defense-equipment-5",
    sprite = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
    buffer_capacity = "1100kJ",
    energy_consumption = "90kJ",
    beam = "bob-laser-beam-topaz",
    damage_modifier = 0.85,
    cooldown = 24,
    range = 19,
  }),
  bob_personal_laser_defense_equipment({
    name = "bob-personal-laser-defense-equipment-6",
    sprite = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
    buffer_capacity = "1420kJ",
    energy_consumption = "100kJ",
    beam = "bob-laser-beam-diamond",
    damage_modifier = 1,
    cooldown = 20,
    range = 20,
  }),
})

data:extend({
  {
    type = "movement-bonus-equipment",
    name = "bob-exoskeleton-equipment-2",
    sprite = {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
      width = 128,
      height = 256,
      scale = 0.5,
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
    name = "bob-exoskeleton-equipment-3",
    sprite = {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
      width = 128,
      height = 256,
      scale = 0.5,
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
