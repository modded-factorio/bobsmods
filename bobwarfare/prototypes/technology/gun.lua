data:extend(
{
  {
    type = "technology",
    name = "bob-laser-rifle",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    icon_size = 64,
    prerequisites =
    {
      "military-3",
      "laser",
      "battery",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-case"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 30
    },
    order = "e-a-c-a"
  },
}
)

