local part_drop_move = {
  filename = "__base__/sound/item/mechanical-inventory-move.ogg",
  volume = 0.7,
}
local part_pick = {
  filename = "__base__/sound/item/mechanical-inventory-pickup.ogg",
  volume = 0.8,
}
local tool_drop_move = {
  filename = "__base__/sound/item/inserter-inventory-move.ogg",
  volume = 0.8,
}
local tool_pick = {
  filename = "__base__/sound/item/inserter-inventory-pickup.ogg",
  volume = 0.8,
}
local electronic_drop_move = {
  filename = "__base__/sound/item/electric-small-inventory-move.ogg",
  volume = 1,
}
local electronic_pick = {
  filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
  volume = 0.7,
}

if settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
  local item = data.raw.item["flying-robot-frame"]
  item.order = "j[flying-robot-frame-1]"
  item.subgroup = "bob-robot-parts"
  item.icon = nil
  item.icons = {
    {
      icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-base.png",
      icon_size = 64,
      scale = 0.5,
    },
    {
      icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-mask.png",
      icon_size = 64,
      scale = 0.5,
      tint = util.copy(bobmods.lib.standard_tier_colors[2]), -- T2
    },
    {
      icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-highlights.png",
      icon_size = 64,
      scale = 0.5,
      tint = { 1, 1, 1, 0 },
    },
  }
  bobmods.lib.recipe.remove_ingredient("flying-robot-frame", "electronic-circuit")

  data:extend({
    {
      type = "item",
      name = "bob-flying-robot-frame-2",
      icons = {
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-base.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-mask.png",
          icon_size = 64,
          scale = 0.5,
          tint = util.copy(bobmods.lib.standard_tier_colors[3]), -- T3
        },
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-highlights.png",
          icon_size = 64,
          scale = 0.5,
          tint = { 1, 1, 1, 0 },
        },
      },
      subgroup = "bob-robot-parts",
      order = "j[flying-robot-frame-2]",
      stack_size = 50,
      drop_sound = part_drop_move,
      inventory_move_sound = part_drop_move,
      pick_sound = part_pick,
    },
    {
      type = "item",
      name = "bob-flying-robot-frame-3",
      icons = {
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-base.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-mask.png",
          icon_size = 64,
          scale = 0.5,
          tint = util.copy(bobmods.lib.standard_tier_colors[4]), -- T4
        },
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-highlights.png",
          icon_size = 64,
          scale = 0.5,
          tint = { 1, 1, 1, 0 },
        },
      },
      subgroup = "bob-robot-parts",
      order = "j[flying-robot-frame-3]",
      stack_size = 50,
      drop_sound = part_drop_move,
      inventory_move_sound = part_drop_move,
      pick_sound = part_pick,
    },
    {
      type = "item",
      name = "bob-flying-robot-frame-4",
      icons = {
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-base.png",
          icon_size = 64,
          scale = 0.5,
        },
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-mask.png",
          icon_size = 64,
          scale = 0.5,
          tint = util.copy(bobmods.lib.standard_tier_colors[5]), -- T5
        },
        {
          icon = "__boblogistics__/graphics/icons/flying-robot-frame/flying-robot-frame-icon-highlights.png",
          icon_size = 64,
          scale = 0.5,
          tint = { 1, 1, 1, 0 },
        },
      },
      subgroup = "bob-robot-parts",
      order = "j[flying-robot-frame-4]",
      stack_size = 50,
      drop_sound = part_drop_move,
      inventory_move_sound = part_drop_move,
      pick_sound = part_pick,
    },

    {
      type = "recipe",
      name = "bob-flying-robot-frame-2",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { type = "item", name = "electric-engine-unit", amount = 1 },
        { type = "item", name = "battery", amount = 2 },
        { type = "item", name = "steel-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-flying-robot-frame-2", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-flying-robot-frame-3",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { type = "item", name = "electric-engine-unit", amount = 1 },
        { type = "item", name = "battery", amount = 2 },
        { type = "item", name = "steel-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-flying-robot-frame-3", amount = 1 } },
      allow_productivity = true,
    },
    {
      type = "recipe",
      name = "bob-flying-robot-frame-4",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { type = "item", name = "electric-engine-unit", amount = 1 },
        { type = "item", name = "battery", amount = 2 },
        { type = "item", name = "steel-plate", amount = 1 },
      },
      results = { { type = "item", name = "bob-flying-robot-frame-4", amount = 1 } },
      allow_productivity = true,
    },
  })

  data:extend({
    {
      type = "technology",
      name = "bob-robotics-2",
      icon = "__base__/graphics/technology/robotics.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-flying-robot-frame-2",
        },
      },
      prerequisites = {
        "robotics",
        "chemical-science-pack",
      },
      unit = {
        count = 150,
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
      name = "bob-robotics-3",
      icon = "__base__/graphics/technology/robotics.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-flying-robot-frame-3",
        },
      },
      prerequisites = {
        "bob-robotics-2",
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
      name = "bob-robotics-4",
      icon = "__base__/graphics/technology/robotics.png",
      icon_size = 256,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-flying-robot-frame-4",
        },
      },
      prerequisites = {
        "bob-robotics-3",
        "production-science-pack",
      },
      unit = {
        count = 150,
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
end

if settings.startup["bobmods-logistics-robotparts"].value == true then
  data:extend({
    {
      type = "item",
      name = "bob-robot-brain",
      icon = "__boblogistics__/graphics/icons/robot-brain.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-1]",
      stack_size = 100,
      drop_sound = electronic_drop_move,
      inventory_move_sound = electronic_drop_move,
      pick_sound = electronic_pick,
    },

    {
      type = "item",
      name = "bob-robot-brain-2",
      icon = "__boblogistics__/graphics/icons/robot-brain-2.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-2]",
      stack_size = 100,
      drop_sound = electronic_drop_move,
      inventory_move_sound = electronic_drop_move,
      pick_sound = electronic_pick,
    },

    {
      type = "item",
      name = "bob-robot-brain-3",
      icon = "__boblogistics__/graphics/icons/robot-brain-3.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-3]",
      stack_size = 100,
      drop_sound = electronic_drop_move,
      inventory_move_sound = electronic_drop_move,
      pick_sound = electronic_pick,
    },

    {
      type = "item",
      name = "bob-robot-brain-4",
      icon = "__boblogistics__/graphics/icons/robot-brain-4.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-4]",
      stack_size = 100,
      drop_sound = electronic_drop_move,
      inventory_move_sound = electronic_drop_move,
      pick_sound = electronic_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-construction",
      icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-construction-1]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-construction-2",
      icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-construction-2]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-construction-3",
      icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-construction-3]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-construction-4",
      icon = "__boblogistics__/graphics/icons/robot-tool-construction.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-construction-4]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-logistic",
      icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-logistic-1]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-logistic-2",
      icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-logistic-2]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-logistic-3",
      icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-logistic-3]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },

    {
      type = "item",
      name = "bob-robot-tool-logistic-4",
      icon = "__boblogistics__/graphics/icons/robot-tool-logistic.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-logistic-4]",
      stack_size = 100,
      drop_sound = tool_drop_move,
      inventory_move_sound = tool_drop_move,
      pick_sound = tool_pick,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-robot-brain",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 4 },
      },
      results = { { type = "item", name = "bob-robot-brain", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-brain-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 2 },
        { type = "item", name = "advanced-circuit", amount = 2 },
      },
      results = { { type = "item", name = "bob-robot-brain-2", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-brain-3",
      energy_required = 15,
      enabled = false,
      ingredients = {
        { type = "item", name = "advanced-circuit", amount = 2 },
        { type = "item", name = "processing-unit", amount = 2 },
      },
      results = { { type = "item", name = "bob-robot-brain-3", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-brain-4",
      energy_required = 20,
      enabled = false,
      ingredients = {
        { type = "item", name = "processing-unit", amount = 4 },
      },
      results = { { type = "item", name = "bob-robot-brain-4", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-construction",
      energy_required = 1,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-construction", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-construction-2",
      energy_required = 2,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-construction-2", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-construction-3",
      energy_required = 3,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-construction-3", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-construction-4",
      energy_required = 4,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-construction-4", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-logistic",
      energy_required = 1,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-logistic", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-logistic-2",
      energy_required = 2,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-logistic-2", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-logistic-3",
      energy_required = 3,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-logistic-3", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-logistic-4",
      energy_required = 4,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-logistic-4", amount = 1 } },
      allow_productivity = true,
    },
  })
end
