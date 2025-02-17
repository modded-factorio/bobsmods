data.raw.item["fission-reactor-equipment"].order = "a[energy-source]-b[fission-reactor-1]"
data.raw.item["night-vision-equipment"].order = "f[night-vision]-a[night-vision-equipment-1]"
data.raw.item["night-vision-equipment"].subgroup = "equipment"
data.raw.item["solar-panel-equipment"].order = "a[energy-source]-a[solar-panel-1]"
data.raw.item["personal-laser-defense-equipment"].order = "d[active-defense]-a[personal-laser-defense-equipment-1]"
data.raw.item["exoskeleton-equipment"].order = "e[exoskeleton]-a[exoskeleton-equipment-1]"
data.raw.item["exoskeleton-equipment"].subgroup = "equipment"
data.raw.item["belt-immunity-equipment"].subgroup = "equipment"

data.raw.item["energy-shield-equipment"].icon = "__bobequipment__/graphics/equipment/energy-shield-mk1-equipment.png"
data.raw.item["energy-shield-equipment"].icon_size = 64
data.raw.item["energy-shield-mk2-equipment"].icon =
  "__bobequipment__/graphics/equipment/energy-shield-mk2-equipment.png"
data.raw.item["energy-shield-mk2-equipment"].icon_size = 64

data:extend({
  {
    type = "item",
    name = "bob-energy-shield-mk3-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk3-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-energy-shield-mk3-equipment",
    subgroup = "military-equipment",
    order = "a[shield]-c[energy-shield-equipment-mk3]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "item",
    name = "bob-energy-shield-mk4-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk4-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-energy-shield-mk4-equipment",
    subgroup = "military-equipment",
    order = "a[shield]-d[energy-shield-equipment-mk4]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "item",
    name = "bob-energy-shield-mk5-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk5-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-energy-shield-mk5-equipment",
    subgroup = "military-equipment",
    order = "a[shield]-e[energy-shield-equipment-mk5]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
  {
    type = "item",
    name = "bob-energy-shield-mk6-equipment",
    icon = "__bobequipment__/graphics/equipment/energy-shield-mk6-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-energy-shield-mk6-equipment",
    subgroup = "military-equipment",
    order = "a[shield]-f[energy-shield-equipment-mk6]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-move.ogg",
      volume = 0.4,
    },
    pick_sound = {
      filename = "__base__/sound/item/energy-shield-inventory-pickup.ogg",
      volume = 0.4,
    },
    weight = 100000,
  },
})

data.raw.item["battery-equipment"].icon = "__bobequipment__/graphics/icons/technology/battery-equipment.png"
data.raw.item["battery-equipment"].icon_size = 64
data.raw.item["battery-mk2-equipment"].icon = "__bobequipment__/graphics/icons/technology/battery-mk2-equipment.png"
data.raw.item["battery-mk2-equipment"].icon_size = 64

data:extend({
  {
    type = "item",
    name = "bob-battery-mk3-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk3-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-battery-mk3-equipment",
    subgroup = "equipment",
    order = "c[battery]-c[battery-mk3-equipment]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },
  {
    type = "item",
    name = "bob-battery-mk4-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk4-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-battery-mk4-equipment",
    subgroup = "equipment",
    order = "c[battery]-d[battery-mk4-equipment]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },
  {
    type = "item",
    name = "bob-battery-mk5-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk5-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-battery-mk5-equipment",
    subgroup = "equipment",
    order = "c[battery]-e[battery-mk5-equipment]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },
  {
    type = "item",
    name = "bob-battery-mk6-equipment",
    icon = "__bobequipment__/graphics/icons/technology/battery-mk6-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-battery-mk6-equipment",
    subgroup = "equipment",
    order = "c[battery]-f[battery-mk6-equipment]",
    stack_size = 50,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
    weight = 100000,
  },
})

data.raw.item["fission-reactor-equipment"].icon = "__bobequipment__/graphics/icons/fission-reactor-equipment-1.png"

data:extend({
  {
    type = "item",
    name = "bob-fission-reactor-equipment-2",
    icon = "__bobequipment__/graphics/icons/fission-reactor-equipment-2.png",
    place_as_equipment_result = "bob-fission-reactor-equipment-2",
    subgroup = "equipment",
    order = "a[energy-source]-b[fission-reactor-2]",
    stack_size = 20,
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
    type = "item",
    name = "bob-fission-reactor-equipment-3",
    icon = "__bobequipment__/graphics/icons/fission-reactor-equipment-3.png",
    place_as_equipment_result = "bob-fission-reactor-equipment-3",
    subgroup = "equipment",
    order = "a[energy-source]-b[fission-reactor-3]",
    stack_size = 20,
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
    type = "item",
    name = "bob-fission-reactor-equipment-4",
    icon = "__bobequipment__/graphics/icons/fission-reactor-equipment-4.png",
    place_as_equipment_result = "bob-fission-reactor-equipment-4",
    subgroup = "equipment",
    order = "a[energy-source]-b[fission-reactor-4]",
    stack_size = 20,
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
    type = "item",
    name = "bob-night-vision-equipment-2",
    icon = "__base__/graphics/icons/night-vision-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-night-vision-equipment-2",
    subgroup = "equipment",
    order = "f[night-vision]-b[night-vision-equipment-2]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
  {
    type = "item",
    name = "bob-night-vision-equipment-3",
    icon = "__base__/graphics/icons/night-vision-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-night-vision-equipment-3",
    subgroup = "equipment",
    order = "f[night-vision]-c[night-vision-equipment-3]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-small-inventory-move.ogg",
      volume = 1,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})

data.raw.item["solar-panel-equipment"].icon = "__bobequipment__/graphics/icons/solar-panel-equipment-1.png"
data.raw.item["solar-panel-equipment"].icon_size = 32

data:extend({
  {
    type = "item",
    name = "bob-solar-panel-equipment-2",
    icon = "__bobequipment__/graphics/icons/solar-panel-equipment-2.png",
    icon_size = 32,
    place_as_equipment_result = "bob-solar-panel-equipment-2",
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-2]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
  {
    type = "item",
    name = "bob-solar-panel-equipment-3",
    icon = "__bobequipment__/graphics/icons/solar-panel-equipment-3.png",
    icon_size = 32,
    place_as_equipment_result = "bob-solar-panel-equipment-3",
    subgroup = "equipment",
    order = "a[energy-source]-a[solar-panel-3]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/electric-large-inventory-move.ogg",
      volume = 0.7,
    },
    pick_sound = {
      filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
      volume = 0.7,
    },
  },
})

if data.raw.item["bob-alien-artifact"] then
  data:extend({
    {
      type = "item",
      name = "bob-solar-panel-equipment-4",
      icon = "__bobequipment__/graphics/icons/solar-panel-equipment-4.png",
      icon_size = 32,
      place_as_equipment_result = "bob-solar-panel-equipment-4",
      subgroup = "equipment",
      order = "a[energy-source]-a[solar-panel-4]",
      stack_size = 20,
      drop_sound = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_move_sound = {
        filename = "__base__/sound/item/electric-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
        volume = 0.7,
      },
    },
  })
  if data.raw.item["bob-alien-orange-alloy"] and data.raw.fluid["bob-alien-acid"] then
    data:extend({
      {
        type = "item",
        name = "bob-solar-panel-equipment-5",
        icon = "__bobequipment__/graphics/icons/solar-panel-equipment-5.png",
        icon_size = 32,
        place_as_equipment_result = "bob-solar-panel-equipment-5",
        subgroup = "equipment",
        order = "a[energy-source]-a[solar-panel-5]",
        stack_size = 20,
        drop_sound = {
          filename = "__base__/sound/item/electric-large-inventory-move.ogg",
          volume = 0.7,
        },
        inventory_move_sound = {
          filename = "__base__/sound/item/electric-large-inventory-move.ogg",
          volume = 0.7,
        },
        pick_sound = {
          filename = "__base__/sound/item/electric-large-inventory-pickup.ogg",
          volume = 0.7,
        },
      },
    })
  end
end

data.raw.item["personal-laser-defense-equipment"].icon =
  "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-1.png"
data.raw.item["personal-laser-defense-equipment"].icon_size = 128

data:extend({
  {
    type = "item",
    name = "bob-personal-laser-defense-equipment-2",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
    icon_size = 128,
    place_as_equipment_result = "bob-personal-laser-defense-equipment-2",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-2]",
    stack_size = 20,
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
    weight = 200000,
  },
  {
    type = "item",
    name = "bob-personal-laser-defense-equipment-3",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
    icon_size = 128,
    place_as_equipment_result = "bob-personal-laser-defense-equipment-3",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-3]",
    stack_size = 20,
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
    weight = 200000,
  },
  {
    type = "item",
    name = "bob-personal-laser-defense-equipment-4",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
    icon_size = 128,
    place_as_equipment_result = "bob-personal-laser-defense-equipment-4",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-4]",
    stack_size = 20,
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
    weight = 200000,
  },
  {
    type = "item",
    name = "bob-personal-laser-defense-equipment-5",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
    icon_size = 128,
    place_as_equipment_result = "bob-personal-laser-defense-equipment-5",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-5]",
    stack_size = 20,
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
    weight = 200000,
  },
  {
    type = "item",
    name = "bob-personal-laser-defense-equipment-6",
    icon = "__bobequipment__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
    icon_size = 128,
    place_as_equipment_result = "bob-personal-laser-defense-equipment-6",
    subgroup = "military-equipment",
    order = "d[active-defense]-a[personal-laser-defense-equipment-6]",
    stack_size = 20,
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
    weight = 200000,
  },

  {
    type = "item",
    name = "bob-exoskeleton-equipment-2",
    icon = "__base__/graphics/icons/exoskeleton-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-exoskeleton-equipment-2",
    subgroup = "equipment",
    order = "e[exoskeleton]-a[exoskeleton-equipment-2]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/exoskeleton-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/exoskeleton-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/exoskeleton-inventory-pickup.ogg",
      volume = 0.6,
    },
  },
  {
    type = "item",
    name = "bob-exoskeleton-equipment-3",
    icon = "__base__/graphics/icons/exoskeleton-equipment.png",
    icon_size = 64,
    place_as_equipment_result = "bob-exoskeleton-equipment-3",
    subgroup = "equipment",
    order = "e[exoskeleton]-a[exoskeleton-equipment-3]",
    stack_size = 20,
    drop_sound = {
      filename = "__base__/sound/item/exoskeleton-inventory-move.ogg",
      volume = 0.6,
    },
    inventory_move_sound = {
      filename = "__base__/sound/item/exoskeleton-inventory-move.ogg",
      volume = 0.6,
    },
    pick_sound = {
      filename = "__base__/sound/item/exoskeleton-inventory-pickup.ogg",
      volume = 0.6,
    },
  },
})
