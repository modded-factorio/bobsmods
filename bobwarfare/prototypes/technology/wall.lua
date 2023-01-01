data:extend({
  {
    type = "technology",
    name = "reinforced-wall",
    icon = "__base__/graphics/technology/stone-wall.png",
    icon_size = 256,
    icon_mipmaps = 4,
    prerequisites = {
      "gate",
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "reinforced-wall",
      },
      {
        type = "unlock-recipe",
        recipe = "reinforced-gate",
      },
    },
    unit = {
      count = 100,
      ingredients = {
        { "automation-science-pack", 1 },
        { "logistic-science-pack", 1 },
      },
      time = 10,
    },
    order = "a-k-b",
  },
})
