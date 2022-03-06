if settings.startup["bobmods-power-steam"].value == true then

bobmods.lib.tech.remove_recipe_unlock("nuclear-power", "steam-turbine")

data:extend(
{
  {
    type = "technology",
    name = "bob-steam-turbine-1",
    prerequisites =
    {
      "bob-steam-engine-3",
    },
    icon = "__bobpower__/graphics/icons/technology/steam-turbine.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine"
      },
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "[steam-turbine]-1",
  },
  {
    type = "technology",
    name = "bob-steam-turbine-2",
    icon = "__bobpower__/graphics/icons/technology/steam-turbine.png",
    icon_size = 128,
    prerequisites =
    {
      "bob-steam-turbine-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine-2"
      }
    },
    unit =
    {
      time = 30,
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
    },
    order = "[steam-turbine]-2",
  },

  {
    type = "technology",
    name = "bob-steam-turbine-3",
    icon = "__bobpower__/graphics/icons/technology/steam-turbine.png",
    icon_size = 128,
    prerequisites =
    {
      "bob-steam-turbine-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-turbine-3"
      }
    },
    unit =
    {
      time = 30,
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
    },
    order = "[steam-turbine]-3",
  },
}
)


end
