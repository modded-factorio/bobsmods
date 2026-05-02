--Remember when making any change to power armor to duplicate the edits in Bob's Warfare mod

data.raw.armor["power-armor"].resistances = {
  {
    type = "physical",
    decrease = 8,
    percent = 30,
  },
  {
    type = "acid",
    decrease = 4,
    percent = 60,
  },
  {
    type = "explosion",
    decrease = 40,
    percent = 40,
  },
  {
    type = "poison",
    decrease = 2,
    percent = 30,
  },
  {
    type = "fire",
    decrease = 2,
    percent = 50,
  },
  {
    type = "laser",
    percent = 10,
  },
  {
    type = "electric",
    percent = 10,
  },
}

data.raw.armor["power-armor-mk2"].resistances = {
  {
    type = "physical",
    decrease = 10,
    percent = 40,
  },
  {
    type = "acid",
    decrease = 6,
    percent = 70,
  },
  {
    type = "explosion",
    decrease = 60,
    percent = 50,
  },
  {
    type = "poison",
    decrease = 4,
    percent = 40,
  },
  {
    type = "fire",
    decrease = 4,
    percent = 60,
  },
  {
    type = "laser",
    decrease = 5,
    percent = 20,
  },
  {
    type = "electric",
    decrease = 2,
    percent = 20,
  },
}

if data.raw["damage-type"]["bob-pierce"] then
  table.insert(data.raw.armor["power-armor-mk2"].resistances, {
    type = "bob-pierce",
    percent = 20,
  })
end

if not mods["bobwarfare"] then
  local make_armor = function(name)
    return [[
      game.simulation.camera_zoom = 4
      game.simulation.camera_position = {0.5, -0.25}
      local character = game.surfaces[1].create_entity{name = "character", position = {0.5, 0.5}, force = "player", direction = defines.direction.south}
      character.insert{name = "]] .. name .. [["}
    ]]
  end

  data:extend({
    {
      type = "armor",
      name = "bob-power-armor-mk3",
      icon = "__bobequipment__/graphics/icons/power-armor-mk3.png",
      icon_size = 32,
      factoriopedia_simulation = { init = make_armor("bob-power-armor-mk3") },
      resistances = {
        {
          type = "physical",
          decrease = 12,
          percent = 45,
        },
        {
          type = "acid",
          decrease = 8,
          percent = 75,
        },
        {
          type = "explosion",
          decrease = 60,
          percent = 50,
        },
        {
          type = "impact",
          decrease = 10,
          percent = 30,
        },
        {
          type = "poison",
          decrease = 6,
          percent = 50,
        },
        {
          type = "fire",
          decrease = 6,
          percent = 70,
        },
        {
          type = "laser",
          decrease = 10,
          percent = 30,
        },
        {
          type = "electric",
          decrease = 5,
          percent = 30,
        },
      },
      subgroup = "armor",
      infinite = true,
      order = "f[power-armor-mk3]",
      stack_size = 1,
      equipment_grid = "power-armor-equipment-grid-mk3",
      open_sound = "__base__/sound/armor-open.ogg",
      close_sound = "__base__/sound/armor-close.ogg",
      drop_sound = {
        filename = "__base__/sound/item/armor-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_size_bonus = {
        filename = "__base__/sound/item/armor-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
        volume = 0.7,
      },
      inventory_size_bonus = 40,
    },

    {
      type = "armor",
      name = "bob-power-armor-mk4",
      icon = "__bobequipment__/graphics/icons/power-armor-mk4.png",
      icon_size = 32,
      factoriopedia_simulation = { init = make_armor("bob-power-armor-mk4") },
      resistances = {
        {
          type = "physical",
          decrease = 15,
          percent = 50,
        },
        {
          type = "acid",
          decrease = 12,
          percent = 80,
        },
        {
          type = "explosion",
          decrease = 60,
          percent = 50,
        },
        {
          type = "impact",
          decrease = 15,
          percent = 40,
        },
        {
          type = "poison",
          decrease = 6,
          percent = 60,
        },
        {
          type = "fire",
          decrease = 10,
          percent = 80,
        },
        {
          type = "laser",
          decrease = 15,
          percent = 40,
        },
        {
          type = "electric",
          decrease = 10,
          percent = 40,
        },
      },
      subgroup = "armor",
      infinite = true,
      order = "g[power-armor-mk4]",
      stack_size = 1,
      equipment_grid = "power-armor-equipment-grid-mk4",
      open_sound = "__base__/sound/armor-open.ogg",
      close_sound = "__base__/sound/armor-close.ogg",
      drop_sound = {
        filename = "__base__/sound/item/armor-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_size_bonus = {
        filename = "__base__/sound/item/armor-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
        volume = 0.7,
      },
      inventory_size_bonus = 50,
    },

    {
      type = "armor",
      name = "bob-power-armor-mk5",
      icon = "__bobequipment__/graphics/icons/power-armor-mk5.png",
      icon_size = 32,
      factoriopedia_simulation = { init = make_armor("bob-power-armor-mk5") },
      resistances = {
        {
          type = "physical",
          decrease = 20,
          percent = 50,
        },
        {
          type = "acid",
          decrease = 16,
          percent = 85,
        },
        {
          type = "explosion",
          decrease = 80,
          percent = 50,
        },
        {
          type = "impact",
          decrease = 20,
          percent = 50,
        },
        {
          type = "poison",
          decrease = 10,
          percent = 70,
        },
        {
          type = "fire",
          decrease = 15,
          percent = 90,
        },
        {
          type = "laser",
          decrease = 20,
          percent = 50,
        },
        {
          type = "electric",
          decrease = 15,
          percent = 50,
        },
      },
      subgroup = "armor",
      infinite = true,
      order = "h[power-armor-mk5]",
      stack_size = 1,
      equipment_grid = "power-armor-equipment-grid-mk5",
      open_sound = "__base__/sound/armor-open.ogg",
      close_sound = "__base__/sound/armor-close.ogg",
      drop_sound = {
        filename = "__base__/sound/item/armor-large-inventory-move.ogg",
        volume = 0.7,
      },
      inventory_size_bonus = {
        filename = "__base__/sound/item/armor-large-inventory-move.ogg",
        volume = 0.7,
      },
      pick_sound = {
        filename = "__base__/sound/item/armor-large-inventory-pickup.ogg",
        volume = 0.7,
      },
      inventory_size_bonus = 60,
    },

    {
      type = "recipe",
      name = "bob-power-armor-mk3",
      enabled = false,
      energy_required = 30,
      ingredients = {
        { type = "item", name = "power-armor-mk2", amount = 1 },
        { type = "item", name = "processing-unit", amount = 50 },
        { type = "item", name = "steel-plate", amount = 25 },
        { type = "item", name = "iron-plate", amount = 25 },
        { type = "item", name = "efficiency-module-2", amount = 5 },
        { type = "item", name = "speed-module-2", amount = 5 },
      },
      results = { { type = "item", name = "bob-power-armor-mk3", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-power-armor-mk4",
      enabled = false,
      energy_required = 30,
      ingredients = {
        { type = "item", name = "bob-power-armor-mk3", amount = 1 },
        { type = "item", name = "processing-unit", amount = 40 },
        { type = "item", name = "advanced-circuit", amount = 20 },
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "plastic-bar", amount = 50 },
        { type = "item", name = "efficiency-module-3", amount = 5 },
        { type = "item", name = "speed-module-3", amount = 5 },
      },
      results = { { type = "item", name = "bob-power-armor-mk4", amount = 1 } },
    },
    {
      type = "recipe",
      name = "bob-power-armor-mk5",
      enabled = false,
      energy_required = 30,
      ingredients = {
        { type = "item", name = "bob-power-armor-mk4", amount = 1 },
        { type = "item", name = "processing-unit", amount = 50 },
        { type = "item", name = "advanced-circuit", amount = 50 },
        { type = "item", name = "steel-plate", amount = 50 },
        { type = "item", name = "plastic-bar", amount = 50 },
        { type = "item", name = "efficiency-module-3", amount = 5 },
        { type = "item", name = "speed-module-3", amount = 5 },
      },
      results = { { type = "item", name = "bob-power-armor-mk5", amount = 1 } },
    },

    {
      type = "technology",
      name = "bob-power-armor-3",
      icon = "__bobequipment__/graphics/icons/technology/power-armor-mk3.png",
      icon_size = 64,
      prerequisites = {
        "efficiency-module-2",
        "power-armor-mk2",
        "speed-module-2",
        "production-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-power-armor-mk3",
        },
      },
      unit = {
        count = 200,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
        },
        time = 30,
      },
    },

    {
      type = "technology",
      name = "bob-power-armor-4",
      icon = "__bobequipment__/graphics/icons/technology/power-armor-mk4.png",
      icon_size = 64,
      prerequisites = {
        "bob-power-armor-3",
        "efficiency-module-3",
        "speed-module-3",
        "utility-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-power-armor-mk4",
        },
      },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
        },
        time = 30,
      },
    },
    {
      type = "technology",
      name = "bob-power-armor-5",
      icon = "__bobequipment__/graphics/icons/technology/power-armor-mk5.png",
      icon_size = 64,
      prerequisites = {
        "bob-power-armor-4",
        "space-science-pack",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-power-armor-mk5",
        },
      },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
          { "production-science-pack", 1 },
          { "utility-science-pack", 1 },
          { "space-science-pack", 1 },
        },
        time = 30,
      },
    },
  })

  if data.raw["damage-type"]["bob-pierce"] then
    table.insert(data.raw.armor["bob-power-armor-mk3"].resistances, {
      type = "bob-pierce",
      percent = 30,
    })
    table.insert(data.raw.armor["bob-power-armor-mk4"].resistances, {
      type = "bob-pierce",
      percent = 35,
    })
    table.insert(data.raw.armor["bob-power-armor-mk5"].resistances, {
      type = "bob-pierce",
      percent = 40,
    })
  end

  if data.raw["damage-type"]["bob-plasma"] then
    table.insert(data.raw.armor["bob-power-armor-mk3"].resistances, {
      type = "bob-plasma",
      decrease = 20,
      percent = 50,
    })
    table.insert(data.raw.armor["bob-power-armor-mk4"].resistances, {
      type = "bob-plasma",
      decrease = 25,
      percent = 75,
    })
    table.insert(data.raw.armor["bob-power-armor-mk5"].resistances, {
      type = "bob-plasma",
      percent = 100,
    })
  end

  table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk3")
  table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk4")
  table.insert(data.raw.character.character.animations[3].armors, "bob-power-armor-mk5")

  data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk3"] = 3
  data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk4"] = 3
  data.raw["character-corpse"]["character-corpse"].armor_picture_mapping["bob-power-armor-mk5"] = 3

  if mods["quality"] then
    data.raw["equipment-grid"]["large-equipment-grid"].width = 8
    data.raw["equipment-grid"]["large-equipment-grid"].height = 9
    data:extend({
      {
        type = "equipment-grid",
        name = "power-armor-equipment-grid-mk3",
        width = 9,
        height = 10,
        equipment_categories = { "armor" },
      },
      {
        type = "equipment-grid",
        name = "power-armor-equipment-grid-mk4",
        width = 10,
        height = 11,
        equipment_categories = { "armor" },
      },
      {
        type = "equipment-grid",
        name = "power-armor-equipment-grid-mk5",
        width = 11,
        height = 12,
        equipment_categories = { "armor" },
      },
    })
  else
    data:extend({
      {
        type = "equipment-grid",
        name = "power-armor-equipment-grid-mk3",
        width = 10,
        height = 12,
        equipment_categories = { "armor" },
      },
      {
        type = "equipment-grid",
        name = "power-armor-equipment-grid-mk4",
        width = 11,
        height = 13,
        equipment_categories = { "armor" },
      },
      {
        type = "equipment-grid",
        name = "power-armor-equipment-grid-mk5",
        width = 12,
        height = 14,
        equipment_categories = { "armor" },
      },
    })
  end
end
