if
  data.raw.item["bob-alien-artifact"]
  and data.raw.item["bob-alien-artifact-blue"]
  and data.raw.item["bob-alien-artifact-orange"]
  and data.raw.item["bob-alien-artifact-purple"]
  and data.raw.item["bob-alien-artifact-yellow"]
  and data.raw.item["bob-alien-artifact-green"]
  and data.raw.item["bob-alien-artifact-red"]
then
  data:extend({
    {
      type = "technology",
      name = "bob-alien-research",
      essential = true,
      icon = "__bobtech__/graphics/icons/alien-technology.png",
      icon_size = 128,
      order = "e-f-a",
      prerequisites = {
        "military-3",
        "bob-advanced-research",
      },
      effects = {
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-blue",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-orange",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-purple",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-yellow",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-green",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-alien-science-pack-red",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-lab-alien",
        },
        {
          type = "unlock-recipe",
          recipe = "bob-science-pack-gold",
        },
      },
      unit = {
        count = 300,
        ingredients = {
          { "automation-science-pack", 1 },
          { "logistic-science-pack", 1 },
          { "military-science-pack", 1 },
          { "chemical-science-pack", 1 },
        },
        time = 30,
      },
    },
  })
end
