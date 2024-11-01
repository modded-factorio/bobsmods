if settings.startup["bobmods-mining-miningaxes"].value == true then
  data.raw.technology["steel-axe"].upgrade = true

  data:extend({
    {
      type = "technology",
      name = "steel-axe-2",
      icon_size = 64,
      icon = "__base__/graphics/icons/steel-axe.png",
      effects = {
        {
          type = "character-mining-speed",
          modifier = 1,
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
      order = "c-c-a-b",
    },
    {
      type = "technology",
      name = "steel-axe-3",
      icon_size = 64,
      icon = "__base__/graphics/icons/steel-axe.png",
      effects = {
        {
          type = "character-mining-speed",
          modifier = 1,
        },
      },
      prerequisites = { "steel-axe-2" },
      unit = {
        count = 250,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
        },
        time = 30,
      },
      upgrade = true,
      order = "c-c-a-c",
    },
    {
      type = "technology",
      name = "steel-axe-4",
      icon_size = 64,
      icon = "__base__/graphics/icons/steel-axe.png",
      effects = {
        {
          type = "character-mining-speed",
          modifier = 1,
        },
      },
      prerequisites = { "steel-axe-3" },
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
      order = "c-c-a-d",
    },
    {
      type = "technology",
      name = "steel-axe-5",
      icon_size = 64,
      icon = "__base__/graphics/icons/steel-axe.png",
      effects = {
        {
          type = "character-mining-speed",
          modifier = 2,
        },
      },
      prerequisites = { "steel-axe-4" },
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
      order = "c-c-a-e",
    },
    {
      type = "technology",
      name = "steel-axe-6",
      icon_size = 64,
      icon = "__base__/graphics/icons/steel-axe.png",
      effects = {
        {
          type = "character-mining-speed",
          modifier = 3,
        },
      },
      prerequisites = { "steel-axe-5" },
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
      order = "c-c-a-f",
    },
  })
end
