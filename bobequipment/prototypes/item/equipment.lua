data.raw.item["fusion-reactor-equipment"].order = "a[energy-source]-b[fusion-reactor-1]"
data.raw.item["night-vision-equipment"].order = "f[night-vision]-a[night-vision-equipment-1]"
data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a[solar-panel-1]"
data.raw.item["personal-laser-defense-equipment"].order = "d[active-defense]-a[personal-laser-defense-equipment-1]"
data.raw.item["exoskeleton-equipment"].order = "e[exoskeleton]-a[exoskeleton-equipment-1]"

data.raw.item["energy-shield-equipment"].icon = "__bobequipment__/graphics/equipment/energy-shield-mk1-equipment.png"
data.raw.item["energy-shield-equipment"].icon_size = 64
data.raw.item["energy-shield-mk2-equipment"].icon =
  "__bobequipment__/graphics/equipment/energy-shield-mk2-equipment.png"
data.raw.item["energy-shield-mk2-equipment"].icon_size = 64

data:extend({
  {
    type = "item",
    name = "energy-shield-mk3-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk3-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "energy-shield-mk3-equipment",
    subgroup = "military-equipment",
    order = "b[shield]-c[energy-shield-equipment-mk3]",
    stack_size = 50,
    default_request_amount = 10,
  },
  {
    type = "item",
    name = "energy-shield-mk4-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk4-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "energy-shield-mk4-equipment",
    subgroup = "military-equipment",
    order = "b[shield]-d[energy-shield-equipment-mk4]",
    stack_size = 50,
    default_request_amount = 10,
  },
  {
    type = "item",
    name = "energy-shield-mk5-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk5-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "energy-shield-mk5-equipment",
    subgroup = "military-equipment",
    order = "b[shield]-e[energy-shield-equipment-mk5]",
    stack_size = 50,
    default_request_amount = 10,
  },
  {
    type = "item",
    name = "energy-shield-mk6-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk6-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "energy-shield-mk6-equipment",
    subgroup = "military-equipment",
    order = "b[shield]-f[energy-shield-equipment-mk6]",
    stack_size = 50,
    default_request_amount = 10,
  },
})

data.raw.item["battery-equipment"].icon = "__bobequipment__/graphics/icons/technology/battery-equipment.png"
data.raw.item["battery-equipment"].icon_size = 64
data.raw.item["battery-mk2-equipment"].icon = "__bobequipment__/graphics/icons/technology/battery-mk2-equipment.png"
data.raw.item["battery-mk2-equipment"].icon_size = 64

data:extend({
  {
    type = "item",
    name = "battery-mk3-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk3-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "battery-mk3-equipment",
    subgroup = "equipment",
    order = "c[battery]-c[battery-mk3-equipment]",
    stack_size = 50,
    default_request_amount = 10,
  },
  {
    type = "item",
    name = "battery-mk4-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk4-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "battery-mk4-equipment",
    subgroup = "equipment",
    order = "c[battery]-d[battery-mk4-equipment]",
    stack_size = 50,
    default_request_amount = 10,
  },
  {
    type = "item",
    name = "battery-mk5-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk5-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "battery-mk5-equipment",
    subgroup = "equipment",
    order = "c[battery]-e[battery-mk5-equipment]",
    stack_size = 50,
    default_request_amount = 10,
  },
  {
    type = "item",
    name = "battery-mk6-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk6-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "battery-mk6-equipment",
    subgroup = "equipment",
    order = "c[battery]-f[battery-mk6-equipment]",
    stack_size = 50,
    default_request_amount = 10,
  },
})

data.raw.item["fusion-reactor-equipment"].icon =
  "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-1.png"
data.raw.item["fusion-reactor-equipment"].icon_size = 128

data:extend({
  {
    type = "item",
    name = "fusion-reactor-equipment-2",
    icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-2.png",
    icon_size = 128,
    placed_as_equipment_result = "fusion-reactor-equipment-2",
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor-2]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "fusion-reactor-equipment-3",
    icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-3.png",
    icon_size = 128,
    placed_as_equipment_result = "fusion-reactor-equipment-3",
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor-3]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "fusion-reactor-equipment-4",
    icon = "__bobequipment__/graphics/icons/technology/fusion-reactor-equipment-4.png",
    icon_size = 128,
    placed_as_equipment_result = "fusion-reactor-equipment-4",
    subgroup = "equipment",
    order = "a[energy-source]-b[fusion-reactor-4]",
    stack_size = 20,
  },

  {
    type = "item",
    name = "night-vision-equipment-2",
    icon = "__base__/graphics/icons/night-vision-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "night-vision-equipment-2",
    subgroup = "equipment",
    order = "f[night-vision]-b[night-vision-equipment-2]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "night-vision-equipment-3",
    icon = "__base__/graphics/icons/night-vision-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "night-vision-equipment-3",
    subgroup = "equipment",
    order = "f[night-vision]-c[night-vision-equipment-3]",
    stack_size = 20,
  },
})

data.raw.item["solar-panel-equipment"].icon = "__bobequipment__/graphics/icons/solar-panel-equipment-1.png"
data.raw.item["solar-panel-equipment"].icon_size = 32

data:extend({
  {
    type = "item",
    name = "solar-panel-equipment-2",
    icon = "__bobequipment__/graphics/icons/solar-panel-equipment-2.png",
    icon_size = 32,
    placed_as_equipment_result = "solar-panel-equipment-2",
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-2]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "solar-panel-equipment-3",
    icon = "__bobequipment__/graphics/icons/solar-panel-equipment-3.png",
    icon_size = 32,
    placed_as_equipment_result = "solar-panel-equipment-3",
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-3]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "solar-panel-equipment-4",
    icon = "__bobequipment__/graphics/icons/solar-panel-equipment-4.png",
    icon_size = 32,
    placed_as_equipment_result = "solar-panel-equipment-4",
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-4]",
    stack_size = 20,
  },
})

data.raw.item["personal-laser-defense-equipment"].icon =
  "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-1.png"
data.raw.item["personal-laser-defense-equipment"].icon_size = 128

data:extend({
  {
    type = "item",
    name = "personal-laser-defense-equipment-2",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-laser-defense-equipment-2",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-2]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "personal-laser-defense-equipment-3",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-laser-defense-equipment-3",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-3]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "personal-laser-defense-equipment-4",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-laser-defense-equipment-4",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-4]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "personal-laser-defense-equipment-5",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-laser-defense-equipment-5",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-5]",
    stack_size = 20,
  },
  {
    type = "item",
    name = "personal-laser-defense-equipment-6",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
    icon_size = 128,
    placed_as_equipment_result = "personal-laser-defense-equipment-6",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-6]",
    stack_size = 20,
  },

  {
    type = "item",
    name = "exoskeleton-equipment-2",
    icon = "__base__/graphics/icons/exoskeleton-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "exoskeleton-equipment-2",
    subgroup = "equipment",
    order = "e[exoskeleton]-a[exoskeleton-equipment-2]",
    stack_size = 10,
  },
  {
    type = "item",
    name = "exoskeleton-equipment-3",
    icon = "__base__/graphics/icons/exoskeleton-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "exoskeleton-equipment-3",
    subgroup = "equipment",
    order = "e[exoskeleton]-a[exoskeleton-equipment-3]",
    stack_size = 10,
  },
})
