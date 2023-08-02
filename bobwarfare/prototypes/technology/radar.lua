local radar_tech_name = nil

if mods["aai-industry"] then
  if data.raw.technology["radar"] then
    radar_tech_name = "radar"
  end
else
  data:extend({
    {
      type = "technology",
      name = "radars-1",
      icon = "__bobwarfare__/graphics/icons/technology/radars.png",
      icon_size = 128,
      prerequisites = {
        "military",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "radar",
        },
      },
      unit = {
        count = 25,
        ingredients = {
          { "automation-science-pack", 1 },
        },
        time = 30,
      },
      order = "e-b-a",
    },
  })
  radar_tech_name = "radars-1"
end

log(radar_tech_name)
data:extend({
  {
    type = "technology",
    name = "radars-2",
    icon = "__bobwarfare__/graphics/icons/technology/radars.png",
    icon_size = 128,
    prerequisites = {
      radar_tech_name,
      "military-2",
      "steel-processing",
      "electronics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-2",
      },
    },
    unit = {
      count = 50,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-b-b",
  },

  {
    type = "technology",
    name = "radars-3",
    icon = "__bobwarfare__/graphics/icons/technology/radars.png",
    icon_size = 128,
    prerequisites = {
      "radars-2",
      "military-3",
      "advanced-electronics",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-3",
      },
    },
    unit = {
      count = 75,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-b-c",
  },

  {
    type = "technology",
    name = "radars-4",
    icon = "__bobwarfare__/graphics/icons/technology/radars.png",
    icon_size = 128,
    prerequisites = {
      "radars-3",
      "production-science-pack",
      "advanced-electronics-2",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-4",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
        { "chemical-science-pack", 1 },
        { "production-science-pack", 1 },
      },
      time = 30,
    },
    order = "e-b-d",
  },

  {
    type = "technology",
    name = "radars-5",
    icon = "__bobwarfare__/graphics/icons/technology/radars.png",
    icon_size = 128,
    prerequisites = {
      "radars-4",
      "military-4",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "radar-5",
      },
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
    order = "e-b-e",
  },
})
