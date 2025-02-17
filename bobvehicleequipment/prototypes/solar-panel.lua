data:extend({
  {
    type = "item",
    name = "bob-vehicle-solar-panel-equipment-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-equipment-1.png",
    icon_size = 32,
    place_as_equipment_result = "bob-vehicle-solar-panel-equipment-1",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-1",
    stack_size = 50,
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
    type = "recipe",
    name = "bob-vehicle-solar-panel-equipment-1",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "electronic-circuit", amount = 32 },
      { type = "item", name = "steel-plate", amount = 16 },
      { type = "item", name = "copper-plate", amount = 16 },
      { type = "item", name = "copper-cable", amount = 32 },
    },
    results = { { type = "item", name = "bob-vehicle-solar-panel-equipment-1", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "bob-vehicle-solar-panel-equipment-1",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-equipment-1.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "120kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-solar-panel-equipment-1",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "solar-energy",
      "automobilism",
    },
    unit = {
      count = 100,
      time = 15,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "bob-vehicle-solar-panel-equipment-1",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-solar-panel-equipment-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-equipment-2.png",
    icon_size = 32,
    place_as_equipment_result = "bob-vehicle-solar-panel-equipment-2",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-2",
    stack_size = 50,
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
    type = "recipe",
    name = "bob-vehicle-solar-panel-equipment-2",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-solar-panel-equipment-1", amount = 1 },
      { type = "item", name = "advanced-circuit", amount = 16 },
      { type = "item", name = "steel-plate", amount = 32 },
      { type = "item", name = "copper-plate", amount = 32 },
      { type = "item", name = "copper-cable", amount = 64 },
    },
    results = { { type = "item", name = "bob-vehicle-solar-panel-equipment-2", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "bob-vehicle-solar-panel-equipment-2",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-equipment-2.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "180kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-solar-panel-equipment-2",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-solar-panel-equipment-1",
      "chemical-science-pack",
    },
    unit = {
      count = 100,
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
        recipe = "bob-vehicle-solar-panel-equipment-2",
      },
    },
  },
})

data:extend({
  {
    type = "item",
    name = "bob-vehicle-solar-panel-equipment-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-equipment-3.png",
    icon_size = 32,
    place_as_equipment_result = "bob-vehicle-solar-panel-equipment-3",
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-3",
    stack_size = 50,
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
    type = "recipe",
    name = "bob-vehicle-solar-panel-equipment-3",
    enabled = false,
    energy_required = 10,
    ingredients = {
      { type = "item", name = "bob-vehicle-solar-panel-equipment-2", amount = 1 },
      { type = "item", name = "processing-unit", amount = 16 },
      { type = "item", name = "steel-plate", amount = 48 },
      { type = "item", name = "copper-plate", amount = 48 },
      { type = "item", name = "copper-cable", amount = 96 },
    },
    results = { { type = "item", name = "bob-vehicle-solar-panel-equipment-3", amount = 1 } },
  },

  {
    type = "solar-panel-equipment",
    name = "bob-vehicle-solar-panel-equipment-3",
    sprite = {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-equipment-3.png",
      width = 64,
      height = 32,
      priority = "medium",
    },
    shape = {
      width = 2,
      height = 1,
      type = "full",
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output",
    },
    power = "270kW",
    categories = { "vehicle", "unarmed-vehicle" },
  },

  {
    type = "technology",
    name = "bob-vehicle-solar-panel-equipment-3",
    icons = bobmods.lib.tech.technology_icon_constant({
      icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel-equipment.png",
      icon_size = 128,
    }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
    prerequisites = {
      "bob-vehicle-solar-panel-equipment-2",
      "processing-unit",
      "production-science-pack",
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
        recipe = "bob-vehicle-solar-panel-equipment-3",
      },
    },
  },
})

if data.raw.item["bob-alien-artifact"] then
  data:extend({
    {
      type = "item",
      name = "bob-vehicle-solar-panel-equipment-4",
      icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-equipment-4.png",
      icon_size = 32,
      place_as_equipment_result = "bob-vehicle-solar-panel-equipment-4",
      subgroup = "vehicle-equipment",
      order = "v[vehicle-equipment]-a[solar-panel]-4",
      stack_size = 50,
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
      type = "recipe",
      name = "bob-vehicle-solar-panel-equipment-4",
      enabled = false,
      energy_required = 15,
      ingredients = {
        { type = "item", name = "bob-vehicle-solar-panel-equipment-3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 24 },
        { type = "item", name = "bob-alien-artifact", amount = 20 },
        { type = "item", name = "steel-plate", amount = 64 },
        { type = "item", name = "copper-plate", amount = 64 },
      },
      results = { { type = "item", name = "bob-vehicle-solar-panel-equipment-4", amount = 1 } },
    },

    {
      type = "solar-panel-equipment",
      name = "bob-vehicle-solar-panel-equipment-4",
      sprite = {
        filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-equipment-4.png",
        width = 64,
        height = 32,
        priority = "medium",
      },
      shape = {
        width = 2,
        height = 1,
        type = "full",
      },
      energy_source = {
        type = "electric",
        usage_priority = "primary-output",
      },
      power = "400kW",
      categories = { "vehicle", "unarmed-vehicle" },
    },

    {
      type = "technology",
      name = "bob-vehicle-solar-panel-equipment-4",
      icons = bobmods.lib.tech.technology_icon_constant({
        icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel-equipment.png",
        icon_size = 128,
      }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
      prerequisites = {
        "bob-vehicle-solar-panel-equipment-3",
        "utility-science-pack",
      },
      unit = {
        count = 100,
        time = 45,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-vehicle-solar-panel-equipment-4",
        },
      },
    },
  })

  if data.raw.item["bob-alien-orange-alloy"] and data.raw.fluid["bob-alien-acid"] then
    data:extend({
      {
        type = "item",
        name = "bob-vehicle-solar-panel-equipment-5",
        icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-equipment-5.png",
        icon_size = 32,
        place_as_equipment_result = "bob-vehicle-solar-panel-equipment-5",
        subgroup = "vehicle-equipment",
        order = "v[vehicle-equipment]-a[solar-panel]-5",
        stack_size = 50,
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
        type = "recipe",
        name = "bob-vehicle-solar-panel-equipment-5",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = 20,
        ingredients = {
          { type = "item", name = "bob-vehicle-solar-panel-equipment-4", amount = 1 },
          { type = "item", name = "processing-unit", amount = 32 },
          { type = "item", name = "bob-alien-orange-alloy", amount = 40 },
          { type = "fluid", name = "bob-alien-acid", amount = 200 },
        },
        results = { { type = "item", name = "bob-vehicle-solar-panel-equipment-5", amount = 1 } },
      },

      {
        type = "solar-panel-equipment",
        name = "bob-vehicle-solar-panel-equipment-5",
        sprite = {
          filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-equipment-5.png",
          width = 64,
          height = 32,
          priority = "medium",
        },
        shape = {
          width = 2,
          height = 1,
          type = "full",
        },
        energy_source = {
          type = "electric",
          usage_priority = "primary-output",
        },
        power = "600kW",
        categories = { "vehicle", "unarmed-vehicle" },
      },

      {
        type = "technology",
        name = "bob-vehicle-solar-panel-equipment-5",
        icons = bobmods.lib.tech.technology_icon_constant({
          icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel-equipment.png",
          icon_size = 128,
        }, "__boblibrary__/graphics/constants/constant-vehicle-equipment.png", 56, 64),
        prerequisites = {
          "bob-vehicle-solar-panel-equipment-4",
          "bob-alien-orange-research",
          "bob-alien-purple-research",
        },
        unit = {
          count = 200,
          time = 45,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
            { "utility-science-pack", 1 },
          },
        },
        effects = {
          {
            type = "unlock-recipe",
            recipe = "bob-vehicle-solar-panel-equipment-5",
          },
        },
      },
    })
  end
end
