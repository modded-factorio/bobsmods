if settings.startup["bobmods-mining-miningaxes"].value == true then
  data.raw.technology["steel-axe"].upgrade = true
  data.raw.technology["steel-axe"].effects[1].modifier = 0.5

  if mods["bobplates"] then
    data.raw.technology["steel-axe"].localised_name = { "technology-name.bob-bronze-axe" }
    data.raw.technology["steel-axe"].prerequisites = { "bob-alloy-processing" }
    data.raw.technology["steel-axe"].research_trigger.item = "bob-bronze-alloy"

    data:extend({
      {
        type = "technology",
        name = "bob-steel-axe-2",
        localised_name = { "technology-name.steel-axe" },
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 0.5,
          },
        },
        prerequisites = { "steel-axe", "steel-processing" },
        research_trigger = { type = "craft-item", item = "steel-plate", count = 50 },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-3",
        localised_name = { "technology-name.bob-cobalt-steel-axe" },
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 0.5,
          },
        },
        prerequisites = { "bob-steel-axe-2", "bob-cobalt-processing" },
        research_trigger = { type = "craft-item", item = "bob-cobalt-steel-alloy", count = 50 },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-4",
        localised_name = { "technology-name.bob-tungsten-axe" },
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 0.5,
          },
        },
        prerequisites = { "bob-steel-axe-3", "bob-tungsten-processing" },
        research_trigger = { type = "craft-item", item = "bob-tungsten-plate", count = 50 },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-5",
        localised_name = { "technology-name.bob-nitinol-axe" },
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 1,
          },
        },
        prerequisites = { "bob-steel-axe-4", "bob-nitinol-processing" },
        research_trigger = { type = "craft-item", item = "bob-nitinol-alloy", count = 50 },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-6",
        localised_name = { "technology-name.bob-diamond-axe" },
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 1,
          },
        },
        prerequisites = { "bob-steel-axe-5", "bob-gem-processing-3" },
        research_trigger = { type = "craft-item", item = "bob-diamond-5", count = 50 },
        upgrade = true,
      },
    })
  else
    data:extend({
      {
        type = "technology",
        name = "bob-steel-axe-2",
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 0.5,
          },
        },
        prerequisites = { "steel-axe" },
        unit = {
          count = 150,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30,
        },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-3",
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 0.5,
          },
        },
        prerequisites = { "bob-steel-axe-2" },
        unit = {
          count = 250,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
          },
          time = 30,
        },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-4",
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 0.5,
          },
        },
        prerequisites = { "bob-steel-axe-3" },
        unit = {
          count = 250,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
          },
          time = 40,
        },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-5",
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 1,
          },
        },
        prerequisites = { "bob-steel-axe-4" },
        unit = {
          count = 250,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
          },
          time = 50,
        },
        upgrade = true,
      },
      {
        type = "technology",
        name = "bob-steel-axe-6",
        icon_size = 256,
        icon = "__base__/graphics/technology/steel-axe.png",
        effects = {
          {
            type = "character-mining-speed",
            modifier = 1,
          },
        },
        prerequisites = { "bob-steel-axe-5" },
        unit = {
          count = 250,
          ingredients = {
            { "automation-science-pack", 1 },
            { "logistic-science-pack", 1 },
            { "chemical-science-pack", 1 },
            { "production-science-pack", 1 },
            { "utility-science-pack", 1 },
          },
          time = 60,
        },
        upgrade = true,
      },
    })
  end
end
