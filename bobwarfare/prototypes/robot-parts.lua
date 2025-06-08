if settings.startup["bobmods-warfare-robotupdate"].value == true and bobmods.warfare.RobotParts == true then
  local electronicdropsound = {
    filename = "__base__/sound/item/electric-small-inventory-move.ogg",
    volume = 1,
  }
  local electronicpicksound = {
    filename = "__base__/sound/item/electric-small-inventory-pickup.ogg",
    volume = 0.7,
  }
  local tooldropsound = {
    filename = "__base__/sound/item/inserter-inventory-move.ogg",
    volume = 0.8,
  }
  local toolpicksound = {
    filename = "__base__/sound/item/inserter-inventory-pickup.ogg",
    volume = 0.8,
  }

  data:extend({
    {
      type = "item",
      name = "bob-robot-brain-combat",
      icon = "__bobwarfare__/graphics/icons/robot-brain-combat.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-brain-combat-1]",
      stack_size = 100,
      drop_sound = electronicdropsound,
      inventory_move_sound = electronicdropsound,
      pick_sound = electronicpicksound,
    },

    {
      type = "item",
      name = "bob-robot-brain-combat-2",
      icon = "__bobwarfare__/graphics/icons/robot-brain-combat-2.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-brain-combat-2]",
      stack_size = 100,
      drop_sound = electronicdropsound,
      inventory_move_sound = electronicdropsound,
      pick_sound = electronicpicksound,
    },

    {
      type = "item",
      name = "bob-robot-brain-combat-3",
      icon = "__bobwarfare__/graphics/icons/robot-brain-combat-3.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-brain-combat-3]",
      stack_size = 100,
      drop_sound = electronicdropsound,
      inventory_move_sound = electronicdropsound,
      pick_sound = electronicpicksound,
    },

    {
      type = "item",
      name = "bob-robot-brain-combat-4",
      icon = "__bobwarfare__/graphics/icons/robot-brain-combat-4.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-brain-combat-4]",
      stack_size = 100,
      drop_sound = electronicdropsound,
      inventory_move_sound = electronicdropsound,
      pick_sound = electronicpicksound,
    },

    {
      type = "item",
      name = "bob-robot-tool-combat",
      icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-combat-1]",
      stack_size = 100,
      drop_sound = tooldropsound,
      inventory_move_sound = tooldropsound,
      pick_sound = toolpicksound,
    },

    {
      type = "item",
      name = "bob-robot-tool-combat-2",
      icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-combat-2]",
      stack_size = 100,
      drop_sound = tooldropsound,
      inventory_move_sound = tooldropsound,
      pick_sound = toolpicksound,
    },

    {
      type = "item",
      name = "bob-robot-tool-combat-3",
      icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-combat-3]",
      stack_size = 100,
      drop_sound = tooldropsound,
      inventory_move_sound = tooldropsound,
      pick_sound = toolpicksound,
    },

    {
      type = "item",
      name = "bob-robot-tool-combat-4",
      icon = "__bobwarfare__/graphics/icons/robot-tool-combat.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[robot-tool-combat-4]",
      stack_size = 100,
      drop_sound = tooldropsound,
      inventory_move_sound = tooldropsound,
      pick_sound = toolpicksound,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-robot-brain-combat",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 2 },
      },
      results = { { type = "item", name = "bob-robot-brain-combat", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-brain-combat-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { type = "item", name = "electronic-circuit", amount = 1 },
        { type = "item", name = "advanced-circuit", amount = 1 },
      },
      results = { { type = "item", name = "bob-robot-brain-combat-2", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-brain-combat-3",
      energy_required = 15,
      enabled = false,
      ingredients = {
        { type = "item", name = "advanced-circuit", amount = 1 },
        { type = "item", name = "processing-unit", amount = 1 },
      },
      results = { { type = "item", name = "bob-robot-brain-combat-3", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-brain-combat-4",
      energy_required = 20,
      enabled = false,
      ingredients = {
        { type = "item", name = "processing-unit", amount = 2 },
      },
      results = { { type = "item", name = "bob-robot-brain-combat-4", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-combat",
      energy_required = 1,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-combat", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-combat-2",
      energy_required = 2,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-combat-2", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-combat-3",
      energy_required = 3,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-combat-3", amount = 1 } },
      allow_productivity = true,
    },

    {
      type = "recipe",
      name = "bob-robot-tool-combat-4",
      energy_required = 4,
      enabled = false,
      ingredients = {},
      results = { { type = "item", name = "bob-robot-tool-combat-4", amount = 1 } },
      allow_productivity = true,
    },
  })
end
