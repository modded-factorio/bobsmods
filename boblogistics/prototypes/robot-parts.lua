if settings.startup["bobmods-logistics-flyingrobotframes"].value == true then
  data.raw.item["flying-robot-frame"].order = "j[flying-robot-frame-1]"
  data.raw.item["flying-robot-frame"].subgroup = "bob-robot-parts"
  bobmods.lib.recipe.remove_ingredient("flying-robot-frame", "electronic-circuit")

  data:extend({
    {
      type = "item",
      name = "flying-robot-frame-2",
      icon = "__boblogistics__/graphics/icons/flying-robot-frame-2.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "j[flying-robot-frame-2]",
      stack_size = 50,
    },
    {
      type = "item",
      name = "flying-robot-frame-3",
      icon = "__boblogistics__/graphics/icons/flying-robot-frame-3.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "j[flying-robot-frame-3]",
      stack_size = 50,
    },
    {
      type = "item",
      name = "flying-robot-frame-4",
      icon = "__boblogistics__/graphics/icons/flying-robot-frame-4.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "j[flying-robot-frame-4]",
      stack_size = 50,
    },

    {
      type = "recipe",
      name = "flying-robot-frame-2",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { "electric-engine-unit", 1 },
        { "battery", 2 },
        { "steel-plate", 1 },
      },
      result = "flying-robot-frame-2",
    },
    {
      type = "recipe",
      name = "flying-robot-frame-3",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { "electric-engine-unit", 1 },
        { "battery", 2 },
        { "steel-plate", 1 },
      },
      result = "flying-robot-frame-3",
    },
    {
      type = "recipe",
      name = "flying-robot-frame-4",
      enabled = false,
      energy_required = 20,
      ingredients = {
        { "electric-engine-unit", 1 },
        { "battery", 2 },
        { "steel-plate", 1 },
      },
      result = "flying-robot-frame-4",
    },
  })

  data:extend({
    {
      type = "technology",
      name = "bob-robotics-2",
      icon = "__base__/graphics/technology/robotics.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "flying-robot-frame-2",
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
      order = "c-i-a",
    },

    {
      type = "technology",
      name = "bob-robotics-3",
      icon = "__base__/graphics/technology/robotics.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "flying-robot-frame-3",
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
      order = "c-i-b",
    },

    {
      type = "technology",
      name = "bob-robotics-4",
      icon = "__base__/graphics/technology/robotics.png",
      icon_size = 256,
      icon_mipmaps = 4,
      effects = {
        {
          type = "unlock-recipe",
          recipe = "flying-robot-frame-4",
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
      order = "c-i-c",
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
    },

    {
      type = "item",
      name = "bob-robot-brain-2",
      icon = "__boblogistics__/graphics/icons/robot-brain-2.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-2]",
      stack_size = 100,
    },

    {
      type = "item",
      name = "bob-robot-brain-3",
      icon = "__boblogistics__/graphics/icons/robot-brain-3.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-3]",
      stack_size = 100,
    },

    {
      type = "item",
      name = "bob-robot-brain-4",
      icon = "__boblogistics__/graphics/icons/robot-brain-4.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-brain-4]",
      stack_size = 100,
    },

    {
      type = "item",
      name = "bob-robot-tool",
      icon = "__boblogistics__/graphics/icons/robot-tool.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-tool-1]",
      stack_size = 100,
    },

    {
      type = "item",
      name = "bob-robot-tool-2",
      icon = "__boblogistics__/graphics/icons/robot-tool.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-tool-2]",
      stack_size = 100,
    },

    {
      type = "item",
      name = "bob-robot-tool-3",
      icon = "__boblogistics__/graphics/icons/robot-tool.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-tool-3]",
      stack_size = 100,
    },

    {
      type = "item",
      name = "bob-robot-tool-4",
      icon = "__boblogistics__/graphics/icons/robot-tool.png",
      icon_size = 32,
      subgroup = "bob-robot-parts",
      order = "r[bob-robot-tool-4]",
      stack_size = 100,
    },
  })

  data:extend({
    {
      type = "recipe",
      name = "bob-robot-brain",
      energy_required = 5,
      enabled = false,
      ingredients = {
        { "basic-circuit-board", 2 },
        { "electronic-circuit", 2 },
      },
      result = "bob-robot-brain",
    },

    {
      type = "recipe",
      name = "bob-robot-brain-2",
      energy_required = 10,
      enabled = false,
      ingredients = {
        { "electronic-circuit", 2 },
        { "advanced-circuit", 2 },
      },
      result = "bob-robot-brain-2",
    },

    {
      type = "recipe",
      name = "bob-robot-brain-3",
      energy_required = 15,
      enabled = false,
      ingredients = {
        { "advanced-circuit", 2 },
        { "processing-unit", 2 },
      },
      result = "bob-robot-brain-3",
    },

    {
      type = "recipe",
      name = "bob-robot-brain-4",
      energy_required = 20,
      enabled = false,
      ingredients = {
        { "processing-unit", 4 },
      },
      result = "bob-robot-brain-4",
    },

    {
      type = "recipe",
      name = "bob-robot-tool",
      energy_required = 1,
      enabled = false,
      ingredients = {},
      result = "bob-robot-tool",
    },

    {
      type = "recipe",
      name = "bob-robot-tool-2",
      energy_required = 2,
      enabled = false,
      ingredients = {},
      result = "bob-robot-tool-2",
    },

    {
      type = "recipe",
      name = "bob-robot-tool-3",
      energy_required = 3,
      enabled = false,
      ingredients = {},
      result = "bob-robot-tool-3",
    },

    {
      type = "recipe",
      name = "bob-robot-tool-4",
      energy_required = 4,
      enabled = false,
      ingredients = {},
      result = "bob-robot-tool-4",
    },
  })
end
